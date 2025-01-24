-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.2/src/zip.erl", 1).

-module(zip).

-compile(nowarn_deprecated_catch).

-export([unzip/1,
         unzip/2,
         extract/1,
         extract/2,
         zip/2,
         zip/3,
         create/2,
         create/3,
         foldl/3,
         list_dir/1,
         list_dir/2,
         table/1,
         table/2,
         t/1,
         tt/1]).

-export([zip_open/1,
         zip_open/2,
         zip_get/1,
         zip_get/2,
         zip_get_crc32/2,
         zip_list_dir/1,
         zip_close/1]).

-file("/buildroot/otp/Erlang ∅⊤℞/lib/kernel-10.2.1/include/file.hrl", 1).

-record(file_info,{size :: non_neg_integer() | undefined,
                   type ::
                       device | directory | other | regular | symlink |
                       undefined,
                   access ::
                       read | write | read_write | none | undefined,
                   atime ::
                       file:date_time() | non_neg_integer() | undefined,
                   mtime ::
                       file:date_time() | non_neg_integer() | undefined,
                   ctime ::
                       file:date_time() | non_neg_integer() | undefined,
                   mode :: non_neg_integer() | undefined,
                   links :: non_neg_integer() | undefined,
                   major_device :: non_neg_integer() | undefined,
                   minor_device :: non_neg_integer() | undefined,
                   inode :: non_neg_integer() | undefined,
                   uid :: non_neg_integer() | undefined,
                   gid :: non_neg_integer() | undefined}).

-record(file_descriptor,{module :: module(), data :: term()}).

-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.2/src/zip.erl", 79).

-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.2/include/zip.hrl", 1).

-record(zip_file,{name :: string(),
                  info :: file:file_info(),
                  comment :: string(),
                  offset :: non_neg_integer(),
                  comp_size :: non_neg_integer()}).

-record(zip_comment,{comment :: string()}).

-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.2/src/zip.erl", 80).

-record(unzip_opts,{output, input, file_filter, open_opts, feedback,
                    cwd, skip_dirs, extra}).

-record(zip_opts,{output, input, comment, open_opts, feedback, cwd,
                  compress, uncompress, extra}).

-record(list_dir_opts,{input, raw_iterator, open_opts, skip_dirs, extra}).

-record(openzip_opts,{output, open_opts, cwd, skip_dirs, extra}).

-record(openzip,{zip_comment, files, in, input, output, zlib, cwd,
                 skip_dirs, extra}).

-record(zip_file_extra,{crc32}).

-record(local_file_header,{version_needed, gp_flag, comp_method,
                           last_mod_time, last_mod_date, crc32,
                           comp_size, uncomp_size, mtime, atime, ctime,
                           uid = 0,
                           gid = 0,
                           file_name_length, extra_field_length,
                           info :: undefined | file:file_info()}).

-record(cd_file_header,{version_needed, gp_flag, comp_method,
                        last_mod_time, last_mod_date, crc32, comp_size,
                        uncomp_size, mtime, atime, ctime,
                        uid = 0,
                        gid = 0,
                        version_made_by, os_made_by, file_name_length,
                        extra_field_length, file_comment_length,
                        disk_num_start, internal_attr, external_attr,
                        local_header_offset}).

-type zip_versions() :: 10 | 20 | 45 | 61.

-record(eocd,{eocd :: undefined | #eocd{},
              version_made_by = 10 :: zip_versions(),
              os_made_by =
                  <<"UNIX"/utf8>> :: unicode:chardata() | 0..255,
              extract_version = 10 :: zip_versions(),
              disk_num, start_disk_num, entries_on_disk, entries, size,
              offset, zip_comment_length, extra}).

-type extra() :: [extended_timestamp | uid_gid].

-type create_option() ::
          memory | cooked | verbose |
          {comment, Comment :: string()} |
          {cwd, CWD :: file:filename()} |
          {compress, What :: extension_spec()} |
          {uncompress, What :: extension_spec()} |
          {extra, extra()}.

-type extension() :: string().

-type extension_spec() ::
          all |
          [Extension :: extension()] |
          {add, [Extension :: extension()]} |
          {del, [Extension :: extension()]}.

-type filename() :: file:filename().

-type zip_comment() :: #zip_comment{}.

-type zip_file() :: #zip_file{}.

-opaque handle() :: pid().

-export_type([create_option/0,filename/0,handle/0]).

-spec unzip(Archive) -> RetValue
               when
                   Archive :: file:name() | binary(),
                   RetValue ::
                       {ok, FileList} |
                       {ok, FileBinList} |
                       {error, Reason :: term()} |
                       {error, {Name :: file:name(), Reason :: term()}},
                   FileList :: [file:name()],
                   FileBinList :: [{file:name(), binary()}].

unzip(F) ->
    unzip(F, []).

-spec unzip(Archive, Options) -> RetValue
               when
                   Archive :: file:name() | binary(),
                   Options :: [Option],
                   Option ::
                       {file_list, FileList} |
                       cooked | keep_old_files | verbose | memory |
                       {file_filter, FileFilter} |
                       {cwd, CWD} |
                       {extra, extra()},
                   FileList :: [file:name()],
                   FileBinList :: [{file:name(), binary()}],
                   FileFilter :: fun((ZipFile) -> boolean()),
                   CWD :: file:filename(),
                   ZipFile :: zip_file(),
                   RetValue ::
                       {ok, FileList} |
                       {ok, FileBinList} |
                       {error, Reason :: term()} |
                       {error, {Name :: file:name(), Reason :: term()}}.

unzip(F, Options) ->
    case catch do_unzip(F, Options) of
        {ok, R} ->
            {ok, R};
        Error ->
            {error, Error}
    end.

do_unzip(F, Options) ->
    Opts = get_unzip_options(F, Options),
    {unzip_opts, _, Input, _, OpO, _, _, _, ExtraOpts} = Opts,
    In0 = Input({open, F, OpO -- [write]}, []),
    RawIterator = fun raw_file_info_etc/5,
    {Info, In1} = get_central_dir(In0, RawIterator, Input, ExtraOpts),
    Z = zlib:open(),
    Files =
        try
            get_z_files(Info, Z, In1, Opts, [])
        after
            zlib:close(Z),
            Input(close, In1)
        end,
    {ok, Files}.

-spec foldl(Fun, Acc0, Archive) -> {ok, Acc1} | {error, Reason}
               when
                   Fun ::
                       fun((FileInArchive, GetInfo, GetBin, AccIn) ->
                               AccOut),
                   FileInArchive :: file:name(),
                   GetInfo :: fun(() -> file:file_info()),
                   GetBin :: fun(() -> binary()),
                   Acc0 :: term(),
                   Acc1 :: term(),
                   AccIn :: term(),
                   AccOut :: term(),
                   Archive :: file:name() | {file:name(), binary()},
                   Reason :: term().

foldl(Fun, Acc0, {_Filename, Binary}) ->
    foldl(Fun, Acc0, Binary);
foldl(Fun, Acc0, Archive) when is_function(Fun, 4) ->
    case zip_open(Archive, [memory]) of
        {ok, Handle} ->
            {ok, Files} = zip_list_dir(Handle),
            Acc1 =
                lists:foldl(fun({zip_comment, _}, Acc) ->
                                   Acc;
                               ({zip_file, Name, Info, _, _, _}, Acc) ->
                                   GetInfo =
                                       fun() ->
                                              Info
                                       end,
                                   GetBin =
                                       case lists:last(Name) of
                                           $/ ->
                                               fun() ->
                                                      <<>>
                                               end;
                                           _ ->
                                               fun() ->
                                                      case
                                                          zip_get(Name,
                                                                  Handle)
                                                      of
                                                          {ok,
                                                           {Name, Data}} ->
                                                              Data;
                                                          {error, Error} ->
                                                              throw({Name,
                                                                     Error})
                                                      end
                                               end
                                       end,
                                   Fun(Name, GetInfo, GetBin, Acc)
                            end,
                            Acc0, Files),
            ok = zip_close(Handle),
            {ok, Acc1};
        {error, bad_eocd} ->
            {error, "Not an archive file"};
        {error, Reason} ->
            {error, Reason}
    end;
foldl(_, _, _) ->
    {error, einval}.

-spec zip(Name, FileList) -> RetValue
             when
                 Name :: file:name(),
                 FileList :: [FileSpec],
                 FileSpec ::
                     file:name() |
                     {file:name(), binary()} |
                     {file:name(), binary(), file:file_info()},
                 RetValue ::
                     {ok, FileName :: file:name()} |
                     {ok, {FileName :: file:name(), binary()}} |
                     {error, Reason :: term()}.

zip(F, Files) ->
    zip(F, Files, []).

-spec zip(Name, FileList, Options) -> RetValue
             when
                 Name :: file:name(),
                 FileList :: [FileSpec],
                 FileSpec ::
                     file:name() |
                     {file:name(), binary()} |
                     {file:name(), binary(), file:file_info()},
                 Options :: [Option],
                 Option :: create_option(),
                 RetValue ::
                     {ok, FileName :: file:name()} |
                     {ok, {FileName :: file:name(), binary()}} |
                     {error, Reason :: term()}.

zip(F, Files, Options) ->
    case catch do_zip(F, Files, Options) of
        {ok, R} ->
            {ok, R};
        Error ->
            {error, Error}
    end.

do_zip(F, Files, Options) ->
    Opts = get_zip_options(Files, Options),
    {zip_opts, Output, _, _, OpO, _, _, _, _, _} = Opts,
    Out0 = Output({open, F, OpO}, []),
    Z = zlib:open(),
    try
        {Out1, LHS, Pos} = put_z_files(Files, Z, Out0, 0, Opts, []),
        zlib:close(Z),
        Out2 = put_central_dir(LHS, Pos, Out1, Opts),
        Out3 = Output({close, F}, Out2),
        {ok, Out3}
    catch
        C:R:Stk ->
            catch zlib:close(Z),
            Output({close, F}, Out0),
            erlang:raise(C, R, Stk)
    end.

-spec list_dir(Archive) -> RetValue
                  when
                      Archive :: file:name() | binary(),
                      RetValue ::
                          {ok, CommentAndFiles} |
                          {error, Reason :: term()},
                      CommentAndFiles :: [zip_comment() | zip_file()].

list_dir(F) ->
    list_dir(F, []).

-spec list_dir(Archive, Options) -> RetValue
                  when
                      Archive :: file:name() | binary(),
                      RetValue ::
                          {ok, CommentAndFiles} |
                          {error, Reason :: term()},
                      CommentAndFiles :: [zip_comment() | zip_file()],
                      Options :: [Option],
                      Option :: cooked | {extra, extra()}.

list_dir(F, Options) ->
    case catch do_list_dir(F, Options) of
        {ok, R} ->
            {ok, R};
        Error ->
            {error, Error}
    end.

do_list_dir(F, Options) ->
    Opts = get_list_dir_options(F, Options),
    {list_dir_opts, Input, RawIterator, OpO, SkipDirs, ExtraOpts} = Opts,
    In0 = Input({open, F, OpO}, []),
    {Info, In1} = get_central_dir(In0, RawIterator, Input, ExtraOpts),
    Input(close, In1),
    if
        SkipDirs ->
            {ok,
             lists:filter(fun({zip_file, Name, _, _, _, _}) ->
                                 lists:last(Name) =/= $/;
                             ({zip_comment, _}) ->
                                 true
                          end,
                          Info)};
        true ->
            {ok, Info}
    end.

-spec zip_open(Archive) -> {ok, ZipHandle} | {error, Reason}
                  when
                      Archive :: file:name() | binary(),
                      ZipHandle :: handle(),
                      Reason :: term().

zip_open(Archive) ->
    zip_open(Archive, []).

-spec zip_open(Archive, Options) -> {ok, ZipHandle} | {error, Reason}
                  when
                      Archive :: file:name() | binary(),
                      ZipHandle :: handle(),
                      Options :: [Option],
                      Option ::
                          cooked | memory |
                          {cwd, CWD :: file:filename()} |
                          {extra, extra()},
                      Reason :: term().

zip_open(Archive, Options) ->
    Self = self(),
    Pid =
        spawn_link(fun() ->
                          server_init(Self)
                   end),
    request(Self, Pid, {open, Archive, Options}).

-spec zip_get(ZipHandle) -> {ok, [Result]} | {error, Reason}
                 when
                     ZipHandle :: handle(),
                     Result :: file:name() | {file:name(), binary()},
                     Reason :: term().

zip_get(Pid) when is_pid(Pid) ->
    request(self(), Pid, get).

-spec zip_close(ZipHandle) -> ok | {error, einval}
                   when ZipHandle :: handle().

zip_close(Pid) when is_pid(Pid) ->
    request(self(), Pid, close).

-spec zip_get(FileName, ZipHandle) -> {ok, Result} | {error, Reason}
                 when
                     FileName :: file:name(),
                     ZipHandle :: handle(),
                     Result :: file:name() | {file:name(), binary()},
                     Reason :: term().

zip_get(FileName, Pid) when is_pid(Pid) ->
    request(self(), Pid, {get, FileName}).

-spec zip_get_crc32(FileName, ZipHandle) -> {ok, CRC} | {error, Reason}
                       when
                           FileName :: file:name(),
                           ZipHandle :: handle(),
                           CRC :: non_neg_integer(),
                           Reason :: term().

zip_get_crc32(FileName, Pid) when is_pid(Pid) ->
    request(self(), Pid, {get_crc32, FileName}).

-spec zip_list_dir(ZipHandle) -> {ok, Result} | {error, Reason}
                      when
                          Result :: [zip_comment() | zip_file()],
                          ZipHandle :: handle(),
                          Reason :: term().

zip_list_dir(Pid) when is_pid(Pid) ->
    request(self(), Pid, list_dir).

request(Self, Pid, Req) ->
    Pid ! {Self, Req},
    receive
        {Pid, R} ->
            R
    end.

zip_t(Pid) when is_pid(Pid) ->
    Openzip = request(self(), Pid, get_state),
    openzip_t(Openzip).

zip_tt(Pid) when is_pid(Pid) ->
    Openzip = request(self(), Pid, get_state),
    openzip_tt(Openzip).

-spec t(Archive) -> ok
           when
               Archive :: file:name() | binary() | ZipHandle,
               ZipHandle :: handle().

t(F) when is_pid(F) ->
    zip_t(F);
t(F) ->
    t(F, fun raw_short_print_info_etc/5).

t(F, RawPrint) ->
    case catch do_t(F, RawPrint) of
        ok ->
            ok;
        Error ->
            {error, Error}
    end.

do_t(F, RawPrint) ->
    Input = get_input(F),
    OpO = [raw],
    In0 = Input({open, F, OpO}, []),
    {_Info, In1} =
        get_central_dir(In0, RawPrint, Input,
                        [extended_timestamp, uid_gid]),
    Input(close, In1),
    ok.

-spec tt(Archive) -> ok
            when
                Archive :: file:name() | binary() | ZipHandle,
                ZipHandle :: handle().

tt(F) when is_pid(F) ->
    zip_tt(F);
tt(F) ->
    t(F, fun raw_long_print_info_etc/5).

get_unzip_opt([], Opts) ->
    Opts;
get_unzip_opt([verbose | Rest], Opts) ->
    get_unzip_opt(Rest,
                  begin
                      REC0 = fun verbose_unzip/1,
                      REC1 = Opts,
                      case REC1 of
                          {unzip_opts, _, _, _, _, _, _, _, _} ->
                              setelement(6, REC1, REC0);
                          _ ->
                              error({badrecord, REC1})
                      end
                  end);
get_unzip_opt([cooked | Rest],
              {unzip_opts, _, _, _, OpO, _, _, _, _} = Opts) ->
    get_unzip_opt(Rest,
                  begin
                      REC2 = OpO -- [raw],
                      REC3 = Opts,
                      case REC3 of
                          {unzip_opts, _, _, _, _, _, _, _, _} ->
                              setelement(5, REC3, REC2);
                          _ ->
                              error({badrecord, REC3})
                      end
                  end);
get_unzip_opt([memory | Rest], Opts) ->
    get_unzip_opt(Rest,
                  begin
                      REC4 = fun binary_io/2,
                      REC5 = Opts,
                      case REC5 of
                          {unzip_opts, _, _, _, _, _, _, _, _} ->
                              setelement(2, REC5, REC4);
                          _ ->
                              error({badrecord, REC5})
                      end
                  end);
get_unzip_opt([{cwd, CWD} | Rest], Opts) ->
    get_unzip_opt(Rest,
                  begin
                      REC6 = Opts,
                      case REC6 of
                          {unzip_opts, _, _, _, _, _, _, _, _} ->
                              setelement(7, REC6, CWD);
                          _ ->
                              error({badrecord, REC6})
                      end
                  end);
get_unzip_opt([{file_filter, F} | Rest], Opts) ->
    Filter1 =
        fun({ZipFile, _Extra, _CWD}) ->
               F(ZipFile)
        end,
    Filter2 =
        fun_and_1(Filter1,
                  case Opts of
                      {unzip_opts, _, _, REC7, _, _, _, _, _} ->
                          REC7;
                      REC7 ->
                          error({badrecord, REC7})
                  end),
    get_unzip_opt(Rest,
                  begin
                      REC8 = Opts,
                      case REC8 of
                          {unzip_opts, _, _, _, _, _, _, _, _} ->
                              setelement(4, REC8, Filter2);
                          _ ->
                              error({badrecord, REC8})
                      end
                  end);
get_unzip_opt([{file_list, L} | Rest], Opts) ->
    FileInList =
        fun({ZipFile, _Extra, _CWD}) ->
               file_in_list(ZipFile, L)
        end,
    Filter =
        fun_and_1(FileInList,
                  case Opts of
                      {unzip_opts, _, _, REC9, _, _, _, _, _} ->
                          REC9;
                      REC9 ->
                          error({badrecord, REC9})
                  end),
    get_unzip_opt(Rest,
                  begin
                      REC10 = Opts,
                      case REC10 of
                          {unzip_opts, _, _, _, _, _, _, _, _} ->
                              setelement(4, REC10, Filter);
                          _ ->
                              error({badrecord, REC10})
                      end
                  end);
get_unzip_opt([keep_old_files | Rest], Opts) ->
    Keep =
        fun({ZipFile, _Extra, CWD}) ->
               keep_old_file(ZipFile, CWD)
        end,
    Filter =
        fun_and_1(Keep,
                  case Opts of
                      {unzip_opts, _, _, REC11, _, _, _, _, _} ->
                          REC11;
                      REC11 ->
                          error({badrecord, REC11})
                  end),
    get_unzip_opt(Rest,
                  begin
                      REC12 = Opts,
                      case REC12 of
                          {unzip_opts, _, _, _, _, _, _, _, _} ->
                              setelement(4, REC12, Filter);
                          _ ->
                              error({badrecord, REC12})
                      end
                  end);
get_unzip_opt([skip_directories | Rest], Opts) ->
    get_unzip_opt(Rest,
                  begin
                      REC13 = Opts,
                      case REC13 of
                          {unzip_opts, _, _, _, _, _, _, _, _} ->
                              setelement(8, REC13, true);
                          _ ->
                              error({badrecord, REC13})
                      end
                  end);
get_unzip_opt([{extra, What} = O | Rest], Opts) when is_list(What) ->
    case
        lists:all(fun(E) ->
                         lists:member(E, [extended_timestamp, uid_gid])
                  end,
                  What)
    of
        true ->
            get_zip_opt(Rest,
                        begin
                            REC14 = Opts,
                            case REC14 of
                                {unzip_opts, _, _, _, _, _, _, _, _} ->
                                    setelement(9, REC14, What);
                                _ ->
                                    error({badrecord, REC14})
                            end
                        end);
        false ->
            throw({bad_option, O})
    end;
get_unzip_opt([Unknown | _Rest], _Opts) ->
    throw({bad_option, Unknown}).

get_list_dir_opt([], Opts) ->
    Opts;
get_list_dir_opt([cooked | Rest],
                 {list_dir_opts, _, _, OpO, _, _} = Opts) ->
    get_list_dir_opt(Rest,
                     begin
                         REC15 = OpO -- [raw],
                         REC16 = Opts,
                         case REC16 of
                             {list_dir_opts, _, _, _, _, _} ->
                                 setelement(4, REC16, REC15);
                             _ ->
                                 error({badrecord, REC16})
                         end
                     end);
get_list_dir_opt([names_only | Rest], Opts) ->
    get_list_dir_opt(Rest,
                     begin
                         REC17 =
                             fun(A, B, C, D, E) ->
                                    raw_name_only(A, B, C, D, E)
                             end,
                         REC18 = Opts,
                         case REC18 of
                             {list_dir_opts, _, _, _, _, _} ->
                                 setelement(3, REC18, REC17);
                             _ ->
                                 error({badrecord, REC18})
                         end
                     end);
get_list_dir_opt([skip_directories | Rest], Opts) ->
    get_list_dir_opt(Rest,
                     begin
                         REC19 = Opts,
                         case REC19 of
                             {list_dir_opts, _, _, _, _, _} ->
                                 setelement(5, REC19, true);
                             _ ->
                                 error({badrecord, REC19})
                         end
                     end);
get_list_dir_opt([{extra, What} = O | Rest], Opts) when is_list(What) ->
    case
        lists:all(fun(E) ->
                         lists:member(E, [extended_timestamp, uid_gid])
                  end,
                  What)
    of
        true ->
            get_zip_opt(Rest,
                        begin
                            REC20 = Opts,
                            case REC20 of
                                {list_dir_opts, _, _, _, _, _} ->
                                    setelement(6, REC20, What);
                                _ ->
                                    error({badrecord, REC20})
                            end
                        end);
        false ->
            throw({bad_option, O})
    end;
get_list_dir_opt([Unknown | _Rest], _Opts) ->
    throw({bad_option, Unknown}).

get_zip_opt([], Opts) ->
    Opts;
get_zip_opt([verbose | Rest], Opts) ->
    get_zip_opt(Rest,
                begin
                    REC21 = fun verbose_zip/1,
                    REC22 = Opts,
                    case REC22 of
                        {zip_opts, _, _, _, _, _, _, _, _, _} ->
                            setelement(6, REC22, REC21);
                        _ ->
                            error({badrecord, REC22})
                    end
                end);
get_zip_opt([cooked | Rest],
            {zip_opts, _, _, _, OpO, _, _, _, _, _} = Opts) ->
    get_zip_opt(Rest,
                begin
                    REC23 = OpO -- [raw],
                    REC24 = Opts,
                    case REC24 of
                        {zip_opts, _, _, _, _, _, _, _, _, _} ->
                            setelement(5, REC24, REC23);
                        _ ->
                            error({badrecord, REC24})
                    end
                end);
get_zip_opt([memory | Rest], Opts) ->
    get_zip_opt(Rest,
                begin
                    REC25 = fun binary_io/2,
                    REC26 = Opts,
                    case REC26 of
                        {zip_opts, _, _, _, _, _, _, _, _, _} ->
                            setelement(2, REC26, REC25);
                        _ ->
                            error({badrecord, REC26})
                    end
                end);
get_zip_opt([{cwd, CWD} | Rest], Opts) ->
    get_zip_opt(Rest,
                begin
                    REC27 = Opts,
                    case REC27 of
                        {zip_opts, _, _, _, _, _, _, _, _, _} ->
                            setelement(7, REC27, CWD);
                        _ ->
                            error({badrecord, REC27})
                    end
                end);
get_zip_opt([{comment, C} | Rest], Opts) ->
    get_zip_opt(Rest,
                begin
                    REC28 = Opts,
                    case REC28 of
                        {zip_opts, _, _, _, _, _, _, _, _, _} ->
                            setelement(4, REC28, C);
                        _ ->
                            error({badrecord, REC28})
                    end
                end);
get_zip_opt([{compress, Which} = O | Rest], Opts) ->
    Which2 =
        case Which of
            all ->
                all;
            Suffixes when is_list(Suffixes) ->
                lists:usort(Suffixes);
            {add, Suffixes} when is_list(Suffixes) ->
                lists:usort(case Opts of
                                {zip_opts, _, _, _, _, _, _, REC29, _,
                                 _} ->
                                    REC29;
                                REC29 ->
                                    error({badrecord, REC29})
                            end
                            ++
                            Suffixes);
            {del, Suffixes} when is_list(Suffixes) ->
                lists:usort(case Opts of
                                {zip_opts, _, _, _, _, _, _, REC30, _,
                                 _} ->
                                    REC30;
                                REC30 ->
                                    error({badrecord, REC30})
                            end
                            --
                            Suffixes);
            _ ->
                throw({bad_option, O})
        end,
    get_zip_opt(Rest,
                begin
                    REC31 = Opts,
                    case REC31 of
                        {zip_opts, _, _, _, _, _, _, _, _, _} ->
                            setelement(8, REC31, Which2);
                        _ ->
                            error({badrecord, REC31})
                    end
                end);
get_zip_opt([{uncompress, Which} = O | Rest], Opts) ->
    Which2 =
        case Which of
            all ->
                all;
            Suffixes when is_list(Suffixes) ->
                lists:usort(Suffixes);
            {add, Suffixes} when is_list(Suffixes) ->
                lists:usort(case Opts of
                                {zip_opts, _, _, _, _, _, _, _, REC32,
                                 _} ->
                                    REC32;
                                REC32 ->
                                    error({badrecord, REC32})
                            end
                            ++
                            Suffixes);
            {del, Suffixes} when is_list(Suffixes) ->
                lists:usort(case Opts of
                                {zip_opts, _, _, _, _, _, _, _, REC33,
                                 _} ->
                                    REC33;
                                REC33 ->
                                    error({badrecord, REC33})
                            end
                            --
                            Suffixes);
            _ ->
                throw({bad_option, O})
        end,
    get_zip_opt(Rest,
                begin
                    REC34 = Opts,
                    case REC34 of
                        {zip_opts, _, _, _, _, _, _, _, _, _} ->
                            setelement(9, REC34, Which2);
                        _ ->
                            error({badrecord, REC34})
                    end
                end);
get_zip_opt([{extra, What} = O | Rest], Opts) when is_list(What) ->
    case
        lists:all(fun(E) ->
                         lists:member(E, [extended_timestamp, uid_gid])
                  end,
                  What)
    of
        true ->
            get_zip_opt(Rest,
                        begin
                            REC35 = Opts,
                            case REC35 of
                                {zip_opts, _, _, _, _, _, _, _, _, _} ->
                                    setelement(10, REC35, What);
                                _ ->
                                    error({badrecord, REC35})
                            end
                        end);
        false ->
            throw({bad_option, O})
    end;
get_zip_opt([Unknown | _Rest], _Opts) ->
    throw({bad_option, Unknown}).

silent(_) ->
    ok.

verbose_unzip(FN) ->
    io:format("extracting: ~ts\n", [io_lib:write_string(FN)]).

verbose_zip(FN) ->
    io:format("adding: ~ts\n", [io_lib:write_string(FN)]).

all(_) ->
    true.

file_in_list({zip_file, FileName, _, _, _, _}, List) ->
    lists:member(FileName, List);
file_in_list(_, _) ->
    false.

keep_old_file({zip_file, FileName, _, _, _, _}, CWD) ->
    FileName1 = add_cwd(CWD, FileName),
    not (filelib:is_file(FileName1)
         orelse
         filelib:is_dir(FileName1));
keep_old_file(_, _) ->
    false.

fun_and_1(Fun1, Fun2) ->
    fun(A) ->
           Fun1(A)
           andalso
           Fun2(A)
    end.

get_zip_options(Files, Options) ->
    Suffixes = [".Z", ".zip", ".zoo", ".arc", ".lzh", ".arj"],
    Opts =
        {zip_opts,
         fun file_io/2,
         get_zip_input({files, Files}),
         "",
         [raw, write],
         fun silent/1,
         "",
         all, Suffixes,
         [extended_timestamp, uid_gid]},
    Opts1 =
        {zip_opts, _, _, Comment, _, _, _, _, _, _} =
            get_zip_opt(Options, Opts),
    {Comment1, _} = encode_string(Comment),
    begin
        REC36 = Opts1,
        case REC36 of
            {zip_opts, _, _, _, _, _, _, _, _, _} ->
                setelement(4, REC36, Comment1);
            _ ->
                error({badrecord, REC36})
        end
    end.

get_unzip_options(F, Options) ->
    Opts =
        {unzip_opts,
         fun file_io/2,
         get_input(F),
         fun all/1,
         [raw],
         fun silent/1,
         "",
         false,
         [extended_timestamp]},
    get_unzip_opt(Options, Opts).

get_openzip_options(Options) ->
    Opts =
        {openzip_opts,
         fun file_io/2,
         [raw, read],
         "",
         false,
         [extended_timestamp, uid_gid]},
    get_openzip_opt(Options, Opts).

get_input(F) when is_binary(F) ->
    fun binary_io/2;
get_input(F) when is_list(F) ->
    fun file_io/2;
get_input(_) ->
    throw(einval).

get_zip_input({F, B}) when is_binary(B), is_list(F) ->
    fun binary_io/2;
get_zip_input({F, B, {file_info, _, _, _, _, _, _, _, _, _, _, _, _, _}})
    when is_binary(B), is_list(F) ->
    fun binary_io/2;
get_zip_input({F, {file_info, _, _, _, _, _, _, _, _, _, _, _, _, _}, B})
    when is_binary(B), is_list(F) ->
    fun binary_io/2;
get_zip_input(F) when is_list(F) ->
    fun file_io/2;
get_zip_input({files, []}) ->
    fun binary_io/2;
get_zip_input({files, [File | _]}) ->
    get_zip_input(File);
get_zip_input(_) ->
    throw(einval).

get_list_dir_options(F, Options) ->
    Opts =
        {list_dir_opts,
         get_input(F),
         fun raw_file_info_public/5,
         [raw],
         false,
         [extended_timestamp]},
    get_list_dir_opt(Options, Opts).

-spec table(Archive) -> RetValue
               when
                   Archive :: file:name() | binary(),
                   RetValue ::
                       {ok, CommentAndFiles} | {error, Reason :: term()},
                   CommentAndFiles :: [zip_comment() | zip_file()].

table(F) ->
    list_dir(F).

-spec table(Archive, Options) -> RetValue
               when
                   Archive :: file:name() | binary(),
                   RetValue ::
                       {ok, CommentAndFiles} | {error, Reason :: term()},
                   CommentAndFiles :: [zip_comment() | zip_file()],
                   Options :: [Option],
                   Option :: cooked.

table(F, O) ->
    list_dir(F, O).

-spec create(Name, FileList) -> RetValue
                when
                    Name :: file:name(),
                    FileList :: [FileSpec],
                    FileSpec ::
                        file:name() |
                        {file:name(), binary()} |
                        {file:name(), binary(), file:file_info()},
                    RetValue ::
                        {ok, FileName :: filename()} |
                        {ok, {FileName :: filename(), binary()}} |
                        {error, Reason :: term()}.

create(F, Fs) ->
    zip(F, Fs).

-spec create(Name, FileList, Options) -> RetValue
                when
                    Name :: file:name(),
                    FileList :: [FileSpec],
                    FileSpec ::
                        file:name() |
                        {file:name(), binary()} |
                        {file:name(), binary(), file:file_info()},
                    Options :: [Option],
                    Option :: create_option(),
                    RetValue ::
                        {ok, FileName :: filename()} |
                        {ok, {FileName :: filename(), binary()}} |
                        {error, Reason :: term()}.

create(F, Fs, O) ->
    zip(F, Fs, O).

-spec extract(Archive) -> RetValue
                 when
                     Archive :: file:name() | binary(),
                     RetValue ::
                         {ok, FileList} |
                         {ok, FileBinList} |
                         {error, Reason :: term()} |
                         {error,
                          {Name :: file:name(), Reason :: term()}},
                     FileList :: [file:name()],
                     FileBinList :: [{file:name(), binary()}].

extract(F) ->
    unzip(F).

-spec extract(Archive, Options) -> RetValue
                 when
                     Archive :: file:name() | binary(),
                     Options :: [Option],
                     Option ::
                         {file_list, FileList} |
                         keep_old_files | verbose | memory |
                         {file_filter, FileFilter} |
                         {cwd, CWD},
                     FileList :: [file:name()],
                     FileBinList :: [{file:name(), binary()}],
                     FileFilter :: fun((ZipFile) -> boolean()),
                     CWD :: file:filename(),
                     ZipFile :: zip_file(),
                     RetValue ::
                         {ok, FileList} |
                         {ok, FileBinList} |
                         {error, Reason :: term()} |
                         {error,
                          {Name :: file:name(), Reason :: term()}}.

extract(F, O) ->
    unzip(F, O).

put_central_dir(LHS, Pos, Out0,
                {zip_opts, Output, _, Comment, _, _, _, _, _, ExtraOpts}) ->
    {Out1, Sz} = put_cd_files_loop(LHS, Output, ExtraOpts, Out0, 0),
    put_eocd(length(LHS), Pos, Sz, Comment, Output, Out1).

put_cd_files_loop([], _Output, _ExtraOpts, Out, Sz) ->
    {Out, Sz};
put_cd_files_loop([{LH, Name, Pos} | LHRest],
                  Output, ExtraOpts, Out0, Sz0) ->
    Extra = cd_file_header_extra_from_lh_and_pos(LH, Pos, ExtraOpts),
    CDFH = cd_file_header_from_lh_pos_and_extra(LH, Pos, Extra),
    BCDFH = cd_file_header_to_bin(CDFH),
    B = [<<33639248:32/little>>, BCDFH, Name, Extra],
    Out1 = Output({write, B}, Out0),
    Sz1 =
        Sz0
        +
        (4 + 2 + 2 + 2 + 2 + 2 + 2 + 4 + 4 + 4 + 2 + 2 + 2 + 2 + 2 + 4
         +
         4)
        +
        case CDFH of
            {cd_file_header, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
             _, REC37, _, _, _, _, _, _} ->
                REC37;
            REC37 ->
                error({badrecord, REC37})
        end
        +
        case CDFH of
            {cd_file_header, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
             _, _, REC38, _, _, _, _, _} ->
                REC38;
            REC38 ->
                error({badrecord, REC38})
        end,
    put_cd_files_loop(LHRest, Output, ExtraOpts, Out1, Sz1).

cd_file_header_extra_from_lh_and_pos({local_file_header, _, _, _, _, _,
                                      _, CompSize, UnCompSize, _, _, _,
                                      _, _, _, _, FI},
                                     Pos, ExtraOpts) ->
    encode_extra(UnCompSize, CompSize, Pos,
                 begin
                     REC39 = FI,
                     case REC39 of
                         {file_info, _, _, _, _, _, _, _, _, _, _, _, _,
                          _} ->
                             setelement(5, REC39, undefined);
                         _ ->
                             error({badrecord, REC39})
                     end
                 end,
                 ExtraOpts).

put_eocd(N, Pos, Sz, Comment, Output, Out0)
    when Pos < 4294967295, N < 65535, Sz < 4294967295 ->
    CommentSz = length(Comment),
    EOCD =
        {eocd, undefined, 10,
         <<"UNIX"/utf8>>,
         10, 0, 0, N, N, Sz, Pos, CommentSz, undefined},
    BEOCD = eocd_to_bin(EOCD),
    B = [<<101010256:32/little>>, BEOCD, Comment],
    Output({write, B}, Out0);
put_eocd(N, Pos, Sz, Comment, Output, Out0) ->
    EOCD64 =
        {eocd, undefined, 61, 3, 45, 0, 0, N, N, Sz, Pos, undefined,
         <<>>},
    BEOCD64 = eocd64_to_bin(EOCD64),
    B = [<<101075792:32/little,(iolist_size(BEOCD64)):64/little>>,
         BEOCD64],
    Out1 = Output({write, B}, Out0),
    Out2 =
        Output({write,
                <<117853008:32/little,
                  0:32/little,
                  (Pos + Sz):64/little,
                  1:32/little>>},
               Out1),
    CommentSz = length(Comment),
    EOCD =
        {eocd, undefined, 10,
         <<"UNIX"/utf8>>,
         10, 0, 0,
         min(N, 65535),
         min(N, 65535),
         min(Sz, 4294967295),
         min(Pos, 4294967295),
         CommentSz, undefined},
    Output({write,
            [<<101010256:32/little>>, eocd_to_bin(EOCD), Comment]},
           Out2).

get_filename({Name, _}, Type) ->
    get_filename(Name, Type);
get_filename({Name, _, _}, Type) ->
    get_filename(Name, Type);
get_filename(Name, regular) ->
    Name;
get_filename(Name, directory) ->
    case lists:reverse(Name) of
        [$/ | _Rev] ->
            Name;
        Rev ->
            lists:reverse([$/ | Rev])
    end.

add_cwd(_CWD, {_Name, _} = F) ->
    F;
add_cwd("", F) ->
    F;
add_cwd(CWD, F) ->
    TrailingSlash =
        case lists:last(F) of
            $/ ->
                "/";
            _ ->
                ""
        end,
    string:trim(filename:join(CWD, F), trailing, "/") ++ TrailingSlash.

get_comp_method(_, N, _, _) when is_integer(N), N < 10 ->
    0;
get_comp_method(_, _, _, directory) ->
    0;
get_comp_method(F, _,
                {zip_opts, _, _, _, _, _, _, Compress, Uncompress, _},
                _) ->
    Ext = filename:extension(F),
    Test =
        fun(Which) ->
               Which =:= all
               orelse
               lists:member(Ext, Which)
        end,
    case
        Test(Compress)
        andalso
        not Test(Uncompress)
    of
        true ->
            8;
        false ->
            0
    end.

put_z_files([], _Z, Out, Pos, _Opts, Acc) ->
    {Out, lists:reverse(Acc), Pos};
put_z_files([F | Rest],
            Z, Out0, Pos0,
            {zip_opts, Output, Input, _, OpO, FB, CWD, _, _, ExtraOpts} =
                Opts,
            Acc) ->
    In0 = [],
    F1 = add_cwd(CWD, F),
    FileInfo = Input({file_info, F1, [{time, posix}]}, In0),
    Type =
        case FileInfo of
            {file_info, _, REC40, _, _, _, _, _, _, _, _, _, _, _} ->
                REC40;
            REC40 ->
                error({badrecord, REC40})
        end,
    UncompSize =
        case Type of
            regular ->
                case FileInfo of
                    {file_info, REC41, _, _, _, _, _, _, _, _, _, _, _,
                     _} ->
                        REC41;
                    REC41 ->
                        error({badrecord, REC41})
                end;
            directory ->
                0
        end,
    FileName0 = get_filename(F, Type),
    {FileName, GPFlag} = encode_string(FileName0),
    CompMethod = get_comp_method(FileName, UncompSize, Opts, Type),
    Extra = encode_extra(UncompSize, FileInfo, ExtraOpts),
    LH =
        local_file_header_from_info_method_name(FileInfo, UncompSize,
                                                CompMethod, FileName,
                                                GPFlag, Extra),
    BLH = local_file_header_to_bin(LH),
    B = [<<67324752:32/little>>, BLH],
    Out1 = Output({write, B}, Out0),
    Out2 = Output({write, FileName}, Out1),
    Pos1 =
        Pos0 + (4 + 2 + 2 + 2 + 2 + 2 + 4 + 4 + 4 + 2 + 2)
        +
        case LH of
            {local_file_header, _, _, _, _, _, _, _, _, _, _, _, _, _,
             REC42, _, _} ->
                REC42;
            REC42 ->
                error({badrecord, REC42})
        end,
    Out3 = Output({write, Extra}, Out2),
    {Out4, CompSize, CRC} =
        put_z_file(CompMethod, UncompSize, Out3, F1, 0, Input, Output,
                   OpO, Z, Type),
    Pos2 =
        Pos1
        +
        case LH of
            {local_file_header, _, _, _, _, _, _, _, _, _, _, _, _, _,
             _, REC43, _} ->
                REC43;
            REC43 ->
                error({badrecord, REC43})
        end
        +
        CompSize,
    FB(FileName0),
    Patch = <<CRC:32/little>>,
    Out5 = Output({pwrite, Pos0 + 4 + 2 + 2 + 2 + 2 + 2, Patch}, Out4),
    Out6 =
        if
            UncompSize >= 4294967295 ->
                Output({pwrite,
                        Pos1 + 2 + 2 + 8,
                        <<CompSize:64/little>>},
                       Out5);
            true ->
                Output({pwrite,
                        Pos0 + 4 + 2 + 2 + 2 + 2 + 2 + 4,
                        <<CompSize:32/little>>},
                       Out5)
        end,
    Out7 = Output({seek, eof, 0}, Out6),
    LH2 =
        begin
            REC44 = LH,
            case REC44 of
                {local_file_header, _, _, _, _, _, _, _, _, _, _, _, _,
                 _, _, _, _} ->
                    setelement(7,
                               setelement(8,
                                          setelement(9, REC44,
                                                     UncompSize),
                                          CompSize),
                               CRC);
                _ ->
                    error({badrecord, REC44})
            end
        end,
    ThisAcc = [{LH2, FileName, Pos0}],
    {Out8, SubAcc, Pos3} =
        case Type of
            regular ->
                {Out7, ThisAcc, Pos2};
            directory ->
                Files = Input({list_dir, F1}, []),
                RevFiles = reverse_join_files(F, Files, []),
                put_z_files(RevFiles, Z, Out7, Pos2, Opts, ThisAcc)
        end,
    Acc2 = lists:reverse(SubAcc) ++ Acc,
    put_z_files(Rest, Z, Out8, Pos3, Opts, Acc2).

reverse_join_files(Dir, [File | Files], Acc) ->
    reverse_join_files(Dir, Files, [filename:join([Dir, File]) | Acc]);
reverse_join_files(_Dir, [], Acc) ->
    Acc.

encode_extra(UnCompSize, FileInfo, ExtraOpts) ->
    encode_extra(UnCompSize, 0, 0, FileInfo, ExtraOpts).

encode_extra(UnCompSize, CompSize, Pos, FileInfo, ExtraOpts) ->
    [encode_extra_zip64(UnCompSize, CompSize, Pos),
     [ 
      encode_extra_extended_timestamp(FileInfo) ||
          lists:member(extended_timestamp, ExtraOpts)
     ],
     [ 
      encode_extra_uid_gid(FileInfo) ||
          lists:member(uid_gid, ExtraOpts)
     ]].

encode_extra_header(Header, Value) ->
    [<<Header:16/little,(iolist_size(Value)):16/little>>, Value].

encode_extra_zip64(UncompSize, CompSize, Pos)
    when UncompSize >= 4294967295 ->
    encode_extra_header(1,
                        [<<UncompSize:64/little,CompSize:64/little>>,
                         [ 
                          <<Pos:64/little>> ||
                              Pos >= 4294967295
                         ]]);
encode_extra_zip64(_UncompSize, _CompSize, Pos) when Pos >= 4294967295 ->
    encode_extra_header(1, <<Pos:64/little>>);
encode_extra_zip64(_, _, _) ->
    <<>>.

encode_extra_extended_timestamp(FI) ->
    {Mbit, MSystemTime} =
        case
            datetime_to_system_time(case FI of
                                        {file_info, _, _, _, _, REC45,
                                         _, _, _, _, _, _, _, _} ->
                                            REC45;
                                        REC45 ->
                                            error({badrecord, REC45})
                                    end)
        of
            undefined ->
                {0, <<>>};
            Mtime ->
                {1, <<(datetime_to_system_time(Mtime)):32/little>>}
        end,
    {Abit, ASystemTime} =
        case
            datetime_to_system_time(case FI of
                                        {file_info, _, _, _, REC46, _,
                                         _, _, _, _, _, _, _, _} ->
                                            REC46;
                                        REC46 ->
                                            error({badrecord, REC46})
                                    end)
        of
            undefined ->
                {0, <<>>};
            Atime ->
                {2, <<(datetime_to_system_time(Atime)):32/little>>}
        end,
    encode_extra_header(21589,
                        [Abit bor Mbit, MSystemTime, ASystemTime]).

encode_extra_uid_gid({file_info, _, _, _, _, _, _, _, _, _, _, _, Uid,
                      Gid})
    when Uid =/= undefined, Gid =/= undefined ->
    encode_extra_header(30837, <<1,4,Uid:32/little,4,Gid:32/little>>);
encode_extra_uid_gid(_) ->
    <<>>.

put_z_file(_Method, Sz, Out, _F, Pos, _Input, _Output, _OpO, _Z,
           directory) ->
    {Out, Pos + Sz, 0};
put_z_file(_Method, 0, Out, _F, Pos, _Input, _Output, _OpO, _Z, regular) ->
    {Out, Pos, 0};
put_z_file(0, UncompSize, Out0, F, Pos0, Input, Output, OpO, _Z,
           regular) ->
    In0 = [],
    In1 = Input({open, F, OpO -- [write]}, In0),
    CRC0 = 0,
    {Out1, Pos1, In2, CRC} =
        put_z_data_loop(UncompSize, In1, Out0, Pos0, Input, Output,
                        CRC0,
                        fun(Data, _Sync) ->
                               Data
                        end),
    Input(close, In2),
    {Out1, Pos1, CRC};
put_z_file(8, UncompSize, Out0, F, Pos0, Input, Output, OpO, Z, regular) ->
    In0 = [],
    In1 = Input({open, F, OpO -- [write]}, In0),
    ok = zlib:deflateInit(Z, default, deflated, -15, 8, default),
    CRC0 = 0,
    {Out1, Pos1, In2, CRC} =
        put_z_data_loop(UncompSize, In1, Out0, Pos0, Input, Output,
                        CRC0,
                        fun(Data, Sync) ->
                               zlib:deflate(Z, Data, Sync)
                        end),
    ok = zlib:deflateEnd(Z),
    Input(close, In2),
    {Out1, Pos1, CRC}.

put_z_data_loop(0, In, Out, Pos, _Input, _Output, CRC0, _DeflateFun) ->
    {Out, Pos, In, CRC0};
put_z_data_loop(UncompSize, In0, Out0, Pos0, Input, Output, CRC0,
                DeflateFun) ->
    N = min(8 * 1024, UncompSize),
    case Input({read, N}, In0) of
        {eof, _In1} ->
            {Out0, Pos0};
        {Uncompressed, In1} ->
            CRC1 = erlang:crc32(CRC0, Uncompressed),
            Compressed =
                DeflateFun(Uncompressed, get_sync(N, UncompSize)),
            Sz = iolist_size(Compressed),
            Out1 = Output({write, Compressed}, Out0),
            put_z_data_loop(UncompSize - N,
                            In1, Out1,
                            Pos0 + Sz,
                            Input, Output, CRC1, DeflateFun)
    end.

get_sync(N, N) ->
    finish;
get_sync(_, _) ->
    full.

raw_name_only({cd_file_header, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
               _, _, _, _, _, _, _, _} =
                  CD,
              FileName, _FileComment, _BExtraField, Acc)
    when true ->
    [FileName | Acc];
raw_name_only({eocd, _, _, _, _, _, _, _, _, _, _, _, _} = EOCD,
              _, _Comment, _, Acc)
    when true ->
    Acc.

raw_short_print_info_etc({cd_file_header, _, _, _, _, _, _, _, _, _, _,
                          _, _, _, _, _, _, _, _, _, _, _, _} =
                             CD,
                         FileName, _FileComment, _BExtraField, Acc)
    when true ->
    print_file_name(FileName),
    Acc;
raw_short_print_info_etc({eocd, _, _, _, _, _, _, _, _, _, _, _, _} =
                             EOCD,
                         X, Comment, Y, Acc)
    when true ->
    raw_long_print_info_etc(EOCD, X, Comment, Y, Acc).

print_file_name(FileName) ->
    io:format("~ts\n", [FileName]).

raw_long_print_info_etc({cd_file_header, _, _, _, _, _, _, CompSize,
                         UncompSize, _, _, _, _, _, _, _, _, _, _, _, _,
                         _, _} =
                            CDFH,
                        FileName, FileComment, _BExtraField, Acc) ->
    MTime = file_header_mtime_to_datetime(CDFH),
    print_header(CompSize, MTime, UncompSize, FileName, FileComment),
    Acc;
raw_long_print_info_etc({eocd, _, _, _, _, _, _, _, _, _, _, _, _} =
                            EOCD,
                        _, Comment, _, Acc)
    when true ->
    print_comment(Comment),
    Acc.

print_header(CompSize, MTime, UncompSize, FileName, FileComment) ->
    io:format("~10w ~s ~10w ~3w% ~ts ~ts\n",
              [CompSize,
               time_to_string(MTime),
               UncompSize,
               get_percent(CompSize, UncompSize),
               FileName, FileComment]).

print_comment("") ->
    ok;
print_comment(Comment) ->
    io:format("Archive comment: ~ts\n", [Comment]).

get_percent(_, 0) ->
    100;
get_percent(CompSize, Size) ->
    round(CompSize * 100 / Size).

time_to_string({{Y, Mon, Day}, {H, Min, _}}) ->
    io_lib:format("~s ~2w ~s:~s ~w",
                  [month(Mon), Day, two_d(H), two_d(Min), Y]).

two_d(N) ->
    tl(integer_to_list(N + 100)).

month(1) ->
    "Jan";
month(2) ->
    "Feb";
month(3) ->
    "Mar";
month(4) ->
    "Apr";
month(5) ->
    "May";
month(6) ->
    "Jun";
month(7) ->
    "Jul";
month(8) ->
    "Aug";
month(9) ->
    "Sep";
month(10) ->
    "Oct";
month(11) ->
    "Nov";
month(12) ->
    "Dec".

cd_file_header_from_lh_pos_and_extra(LH, Pos, Extra) ->
    {local_file_header, LHVersionNeeded, GPFlag, CompMethod,
     LastModTime, LastModDate, CRC32, CompSize, UncompSize, _, _, _, _,
     _, FileNameLength, _ExtraFieldLength,
     {file_info, _, Type, _, _, _, _, Mode, _, _, _, _, _, _}} =
        LH,
    VersionNeeded =
        if
            Pos >= 4294967295 ->
                45;
            true ->
                LHVersionNeeded
        end,
    {cd_file_header, VersionNeeded, GPFlag, CompMethod, LastModTime,
     LastModDate, CRC32,
     if
         UncompSize >= 4294967295 ->
             4294967295;
         true ->
             CompSize
     end,
     min(UncompSize, 4294967295),
     undefined, undefined, undefined, 0, 0, 61, 3, FileNameLength,
     iolist_size(Extra),
     0, 0, 0,
     if
         Mode =:= undefined ->
             case Type of
                 regular ->
                     420;
                 directory ->
                     484
             end;
         true ->
             Mode band 511
     end
     bsl
     16,
     min(Pos, 4294967295)}.

cd_file_header_to_bin({cd_file_header, VersionNeeded, GPFlag,
                       CompMethod, LastModTime, LastModDate, CRC32,
                       CompSize, UncompSize, _, _, _, _, _,
                       VersionMadeBy, OsMadeBy, FileNameLength,
                       ExtraFieldLength, FileCommentLength,
                       DiskNumStart, InternalAttr, ExternalAttr,
                       LocalHeaderOffset}) ->
    <<VersionMadeBy:8,
      OsMadeBy:8,
      VersionNeeded:16/little,
      GPFlag:16/little,
      CompMethod:16/little,
      LastModTime:16/little,
      LastModDate:16/little,
      CRC32:32/little,
      CompSize:32/little,
      UncompSize:32/little,
      FileNameLength:16/little,
      ExtraFieldLength:16/little,
      FileCommentLength:16/little,
      DiskNumStart:16/little,
      InternalAttr:16/little,
      ExternalAttr:32/little,
      LocalHeaderOffset:32/little>>.

local_file_header_to_bin({local_file_header, VersionNeeded, GPFlag,
                          CompMethod, LastModTime, LastModDate, CRC32,
                          CompSize, UncompSize, _, _, _, _, _,
                          FileNameLength, ExtraFieldLength, _}) ->
    <<VersionNeeded:16/little,
      GPFlag:16/little,
      CompMethod:16/little,
      LastModTime:16/little,
      LastModDate:16/little,
      CRC32:32/little,
      CompSize:32/little,
      UncompSize:32/little,
      FileNameLength:16/little,
      ExtraFieldLength:16/little>>.

eocd_to_bin({eocd, _, _, _, _, DiskNum, StartDiskNum, EntriesOnDisk,
             Entries, Size, Offset, ZipCommentLength, _}) ->
    <<DiskNum:16/little,
      StartDiskNum:16/little,
      EntriesOnDisk:16/little,
      Entries:16/little,
      Size:32/little,
      Offset:32/little,
      ZipCommentLength:16/little>>.

eocd64_to_bin({eocd, _, VersionMadeBy, OsMadeBy, ExtractVersion,
               DiskNum, StartDiskNum, EntriesOnDisk, Entries, Size,
               Offset, _, Extra}) ->
    <<VersionMadeBy:8,
      OsMadeBy:8,
      ExtractVersion:16/little,
      DiskNum:32/little,
      StartDiskNum:32/little,
      EntriesOnDisk:64/little,
      Entries:64/little,
      Size:64/little,
      Offset:64/little,
      Extra/binary>>.

local_file_header_from_info_method_name({file_info, _, _, _, ATime,
                                         MTime, _, _, _, _, _, _, Uid,
                                         Gid} =
                                            Info,
                                        UncompSize, CompMethod, Name,
                                        GPFlag, Extra) ->
    CreationTime = os:system_time(second),
    {ModDate, ModTime} =
        dos_date_time_from_datetime(calendar:system_time_to_local_time(datetime_to_system_time(MTime),
                                                                       second)),
    VersionNeeded =
        if
            UncompSize >= 4294967295 ->
                45;
            true ->
                case CompMethod of
                    0 ->
                        10;
                    8 ->
                        20
                end
        end,
    {local_file_header, VersionNeeded, GPFlag, CompMethod, ModTime,
     ModDate,
     -1,
     4294967295,
     min(UncompSize, 4294967295),
     datetime_to_system_time(MTime),
     datetime_to_system_time(ATime),
     datetime_to_system_time(CreationTime),
     Uid, Gid,
     length(Name),
     iolist_size(Extra),
     Info}.

openzip_open(F, Options) ->
    case catch do_openzip_open(F, Options) of
        {ok, OpenZip} ->
            {ok, OpenZip};
        Error ->
            {error, Error}
    end.

do_openzip_open(F, Options) ->
    Opts = get_openzip_options(Options),
    {openzip_opts, Output, OpO, CWD, SkipDirs, ExtraOpts} = Opts,
    Input = get_input(F),
    In0 = Input({open, F, OpO -- [write]}, []),
    {[{zip_comment, C} | Files], In1} =
        get_central_dir(In0, fun raw_file_info_etc/5, Input, ExtraOpts),
    Z = zlib:open(),
    {ok,
     {openzip, C, Files, In1, Input, Output, Z, CWD, SkipDirs,
      ExtraOpts}}.

openzip_get(OpenZip) ->
    case catch do_openzip_get(OpenZip) of
        {ok, Result} ->
            {ok, Result};
        Error ->
            {error, Error}
    end.

do_openzip_get({openzip, _, Files, In0, Input, Output, Z, CWD, SkipDirs,
                ExtraOpts}) ->
    ZipOpts =
        {unzip_opts, Output, Input,
         fun all/1,
         [],
         fun silent/1,
         CWD, SkipDirs, ExtraOpts},
    R = get_z_files(Files, Z, In0, ZipOpts, []),
    {ok, R};
do_openzip_get(_) ->
    throw(einval).

openzip_get_crc32(FileName, {openzip, _, Files, _, _, _, _, _, _, _}) ->
    case file_name_search(FileName, Files) of
        {_, {zip_file_extra, CRC}} ->
            {ok, CRC};
        _ ->
            throw(file_not_found)
    end.

openzip_get(FileName, OpenZip) ->
    case catch do_openzip_get(FileName, OpenZip) of
        {ok, Result} ->
            {ok, Result};
        Error ->
            {error, Error}
    end.

do_openzip_get(F,
               {openzip, _, Files, In0, Input, Output, Z, CWD, _,
                ExtraOpts}) ->
    case file_name_search(F, Files) of
        {{zip_file, _, _, _, Offset, _}, _} = ZFile ->
            In1 = Input({seek, bof, Offset}, In0),
            case
                get_z_file(In1, Z, Input, Output, [],
                           fun silent/1,
                           CWD, ZFile,
                           fun all/1,
                           false, ExtraOpts)
            of
                {file, R, _In2} ->
                    {ok, R};
                _ ->
                    throw(file_not_found)
            end;
        _ ->
            throw(file_not_found)
    end;
do_openzip_get(_, _) ->
    throw(einval).

file_name_search(Name, Files) ->
    Fun =
        fun({ZipFile, _}) ->
               not string:equal(case ZipFile of
                                    {zip_file, REC47, _, _, _, _} ->
                                        REC47;
                                    REC47 ->
                                        error({badrecord, REC47})
                                end,
                                Name,
                                _IgnoreCase = false,
                                _Norm = nfc)
        end,
    case lists:dropwhile(Fun, Files) of
        [ZFile | _] ->
            ZFile;
        [] ->
            false
    end.

openzip_list_dir({openzip, Comment, Files, _, _, _, _, _, _, _}) ->
    {ZipFiles, _Extras} = lists:unzip(Files),
    {ok, [{zip_comment, Comment} | ZipFiles]};
openzip_list_dir(_) ->
    {error, einval}.

openzip_close({openzip, _, _, In0, Input, _, Z, _, _, _}) ->
    Input(close, In0),
    zlib:close(Z);
openzip_close(_) ->
    {error, einval}.

server_init(Parent) ->
    process_flag(trap_exit, true),
    server_loop(Parent, not_open).

server_loop(Parent, OpenZip) ->
    receive
        {From, {open, Archive, Options}} ->
            case openzip_open(Archive, Options) of
                {ok, NewOpenZip} ->
                    From ! {self(), {ok, self()}},
                    server_loop(Parent, NewOpenZip);
                Error ->
                    From ! {self(), Error}
            end;
        {From, close} ->
            From ! {self(), openzip_close(OpenZip)};
        {From, get} ->
            From ! {self(), openzip_get(OpenZip)},
            server_loop(Parent, OpenZip);
        {From, {get, FileName}} ->
            From ! {self(), openzip_get(FileName, OpenZip)},
            server_loop(Parent, OpenZip);
        {From, {get_crc32, FileName}} ->
            From ! {self(), openzip_get_crc32(FileName, OpenZip)},
            server_loop(Parent, OpenZip);
        {From, list_dir} ->
            From ! {self(), openzip_list_dir(OpenZip)},
            server_loop(Parent, OpenZip);
        {From, get_state} ->
            From ! {self(), OpenZip},
            server_loop(Parent, OpenZip);
        {'EXIT', Parent, Reason} ->
            _ = openzip_close(OpenZip),
            exit({parent_died, Reason});
        _ ->
            {error, bad_msg}
    end.

openzip_tt({openzip, ZipComment, Files, _, _, _, _, _, _, _}) ->
    print_comment(ZipComment),
    lists_foreach(fun({{zip_file, FileName, FI, FileComment, _,
                        CompSize},
                       _}) ->
                         {file_info, UncompSize, _, _, _, MTime, _, _,
                          _, _, _, _, _, _} =
                             FI,
                         print_header(CompSize, MTime, UncompSize,
                                      FileName, FileComment)
                  end,
                  Files),
    ok.

openzip_t({openzip, ZipComment, Files, _, _, _, _, _, _, _}) ->
    print_comment(ZipComment),
    lists_foreach(fun({{zip_file, FileName, _, _, _, _}, _}) ->
                         print_file_name(FileName)
                  end,
                  Files),
    ok.

lists_foreach(_, []) ->
    ok;
lists_foreach(F, [Hd | Tl]) ->
    F(Hd),
    lists_foreach(F, Tl).

get_openzip_opt([], Opts) ->
    Opts;
get_openzip_opt([cooked | Rest], {openzip_opts, _, OO, _, _, _} = Opts) ->
    get_openzip_opt(Rest,
                    begin
                        REC48 = OO -- [raw],
                        REC49 = Opts,
                        case REC49 of
                            {openzip_opts, _, _, _, _, _} ->
                                setelement(3, REC49, REC48);
                            _ ->
                                error({badrecord, REC49})
                        end
                    end);
get_openzip_opt([memory | Rest], Opts) ->
    get_openzip_opt(Rest,
                    begin
                        REC50 = fun binary_io/2,
                        REC51 = Opts,
                        case REC51 of
                            {openzip_opts, _, _, _, _, _} ->
                                setelement(2, REC51, REC50);
                            _ ->
                                error({badrecord, REC51})
                        end
                    end);
get_openzip_opt([{cwd, CWD} | Rest], Opts) ->
    get_openzip_opt(Rest,
                    begin
                        REC52 = Opts,
                        case REC52 of
                            {openzip_opts, _, _, _, _, _} ->
                                setelement(4, REC52, CWD);
                            _ ->
                                error({badrecord, REC52})
                        end
                    end);
get_openzip_opt([skip_directories | Rest], Opts) ->
    get_openzip_opt(Rest,
                    begin
                        REC53 = Opts,
                        case REC53 of
                            {openzip_opts, _, _, _, _, _} ->
                                setelement(5, REC53, true);
                            _ ->
                                error({badrecord, REC53})
                        end
                    end);
get_openzip_opt([{extra, What} = O | Rest], Opts) when is_list(What) ->
    case
        lists:all(fun(E) ->
                         lists:member(E, [extended_timestamp, uid_gid])
                  end,
                  What)
    of
        true ->
            get_zip_opt(Rest,
                        begin
                            REC54 = Opts,
                            case REC54 of
                                {openzip_opts, _, _, _, _, _} ->
                                    setelement(6, REC54, What);
                                _ ->
                                    error({badrecord, REC54})
                            end
                        end);
        false ->
            throw({bad_option, O})
    end;
get_openzip_opt([Unknown | _Rest], _Opts) ->
    throw({bad_option, Unknown}).

get_central_dir(In0, RawIterator, Input, ExtraOpts) ->
    {Size, In1} = Input({position, eof, 0}, In0),
    {{EOCD, BComment}, In2} =
        get_end_of_central_dir(In1,
                               4 + 2 + 2 + 2 + 2 + 4 + 4 + 2,
                               min(65535
                                   +
                                   (4 + 2 + 2 + 2 + 2 + 4 + 4 + 2)
                                   +
                                   (4 + 8 + 4),
                                   Size),
                               Input),
    case EOCD of
        {eocd, _, _, _, _, REC55, _, _, _, _, _, _, _} ->
            REC55;
        REC55 ->
            error({badrecord, REC55})
    end
    ==
    0
    orelse
    throw(multiple_disks_not_supported),
    In3 =
        Input({seek, bof,
               case EOCD of
                   {eocd, _, _, _, _, _, _, _, _, _, REC56, _, _} ->
                       REC56;
                   REC56 ->
                       error({badrecord, REC56})
               end},
              In2),
    N = case EOCD of
            {eocd, _, _, _, _, _, _, _, REC57, _, _, _, _} ->
                REC57;
            REC57 ->
                error({badrecord, REC57})
        end,
    Acc0 = [],
    Comment = heuristic_to_string(BComment),
    Out0 = RawIterator(EOCD, "", Comment, <<>>, Acc0),
    get_cd_loop(N, In3, RawIterator, Input, ExtraOpts, Out0).

get_cd_loop(0, In, _RawIterator, _Input, _ExtraOpts, Acc) ->
    {lists:reverse(Acc), In};
get_cd_loop(N, In0, RawIterator, Input, ExtraOpts, Acc0) ->
    {BCD, In1} =
        case
            Input({read,
                   4 + 2 + 2 + 2 + 2 + 2 + 2 + 4 + 4 + 4 + 2 + 2 + 2 + 2
                   +
                   2
                   +
                   4
                   +
                   4},
                  In0)
        of
            {<<33639248:32/little,XBCD/binary>>, In} ->
                {XBCD, In};
            _ ->
                throw(bad_central_directory)
        end,
    CD = cd_file_header_from_bin(BCD),
    FileNameLen =
        case CD of
            {cd_file_header, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
             _, REC58, _, _, _, _, _, _} ->
                REC58;
            REC58 ->
                error({badrecord, REC58})
        end,
    ExtraLen =
        case CD of
            {cd_file_header, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
             _, _, REC59, _, _, _, _, _} ->
                REC59;
            REC59 ->
                error({badrecord, REC59})
        end,
    CommentLen =
        case CD of
            {cd_file_header, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
             _, _, _, REC60, _, _, _, _} ->
                REC60;
            REC60 ->
                error({badrecord, REC60})
        end,
    ToRead = FileNameLen + ExtraLen + CommentLen,
    GPFlag =
        case CD of
            {cd_file_header, _, REC61, _, _, _, _, _, _, _, _, _, _, _,
             _, _, _, _, _, _, _, _, _} ->
                REC61;
            REC61 ->
                error({badrecord, REC61})
        end,
    {B2, In2} = Input({read, ToRead}, In1),
    {FileName, BExtra, Comment} =
        get_filename_extra_comment(B2, FileNameLen, ExtraLen,
                                   CommentLen, GPFlag),
    ExtraCD = update_extra_fields(CD, BExtra, ExtraOpts),
    Acc1 = RawIterator(ExtraCD, FileName, Comment, BExtra, Acc0),
    get_cd_loop(N - 1, In2, RawIterator, Input, ExtraOpts, Acc1).

-spec update_extra_fields(#local_file_header{} | #cd_file_header{},
                          binary(),
                          extra()) ->
                             #local_file_header{} | #cd_file_header{}.

update_extra_fields(FileHeader, BExtra, ExtraOpts) ->
    8 = 8,
    9 = 9,
    10 = 10,
    11 = 11,
    12 = 12,
    13 = 13,
    14 = 14,
    ExtendedTimestamp = lists:member(extended_timestamp, ExtraOpts),
    UidGid = lists:member(uid_gid, ExtraOpts),
    lists:foldl(fun({1, Data}, Acc) ->
                       update_zip64(Acc, Data);
                   ({21589, Data}, Acc) when ExtendedTimestamp ->
                       update_extended_timestamp(Acc, Data);
                   ({30837, Data}, Acc) when UidGid ->
                       update_unix3(Acc, Data);
                   (_, Acc) ->
                       Acc
                end,
                FileHeader,
                parse_extra(BExtra)).

update_zip64(FH, <<UnComp:64/little,Rest/binary>>)
    when element(9, FH) == 4294967295 ->
    update_zip64(setelement(9, FH, UnComp), Rest);
update_zip64(FH, <<Comp:64/little,Rest/binary>>)
    when element(8, FH) == 4294967295 ->
    update_zip64(setelement(8, FH, Comp), Rest);
update_zip64(FH, <<LocalHeaderOffset:64/little,Rest/binary>>)
    when element(23, FH) == 4294967295 ->
    update_zip64(setelement(23, FH, LocalHeaderOffset), Rest);
update_zip64(FH, <<DiskNumStart:32/little,Rest/binary>>)
    when element(20, FH) == 4294967295 ->
    update_zip64(setelement(20, FH, DiskNumStart), Rest);
update_zip64(FH, _) ->
    FH.

update_extended_timestamp(FileHeader,
                          <<_:5,HasCre:1,HasAcc:1,HasMod:1,Data/binary>>) ->
    {FHMod, DataMod} =
        update_extended_timestamp(FileHeader, HasMod, Data, 10),
    {FHAcc, DataAcc} =
        update_extended_timestamp(FHMod, HasAcc, DataMod, 11),
    {FHCre, <<>>} =
        update_extended_timestamp(FHAcc, HasCre, DataAcc, 12),
    FHCre.

update_extended_timestamp(FH, 1, <<Value:32/little,Rest/binary>>, Field) ->
    {setelement(Field, FH, Value), Rest};
update_extended_timestamp(FH, 1, <<>>, _Field) ->
    {FH, <<>>};
update_extended_timestamp(FH, 0, Data, _Field) ->
    {FH, Data}.

update_unix3(FH,
             <<1,UidSize,
               Uid:(UidSize * 8)/little,
               GidSize,
               Gid:(GidSize * 8)/little>>) ->
    setelement(14, setelement(13, FH, Uid), Gid);
update_unix3(FH, <<Vsn,_/binary>>) when Vsn =/= 1 ->
    FH.

parse_extra(<<Tag:16/little,Sz:16/little,Data:Sz/binary,Rest/binary>>) ->
    [{Tag, Data} | parse_extra(Rest)];
parse_extra(<<>>) ->
    [].

get_filename_extra_comment(B, FileNameLen, ExtraLen, CommentLen, GPFlag) ->
    try
        <<BFileName:FileNameLen/binary,
          BExtra:ExtraLen/binary,
          BComment:CommentLen/binary>> =
            B,
        {binary_to_chars(BFileName, GPFlag),
         BExtra,
         heuristic_to_string(BComment)}
    catch
        _:_ ->
            throw(bad_central_directory)
    end.

get_end_of_central_dir(In0, Sz, MaxCentralDirSize, Input) ->
    In1 = Input({seek, eof, -Sz}, In0),
    {B, In2} = Input({read, Sz}, In1),
    case find_eocd(B) of
        none when Sz =:= MaxCentralDirSize ->
            throw(bad_eocd);
        none ->
            get_end_of_central_dir(In2,
                                   min(Sz + Sz, MaxCentralDirSize),
                                   MaxCentralDirSize, Input);
        {EOCD64Location, EOCD, Comment} ->
            case
                find_eocd64(In2, EOCD64Location, EOCD, Comment, Input)
            of
                none ->
                    throw(bad_eocd64);
                {EOCD64, In3} ->
                    {EOCD64, In3}
            end;
        Header ->
            {Header, In2}
    end.

find_eocd(<<117853008:32/little,
            EOCD64StartDiskNum:32/little,
            EOCD64Offset:64/little,
            EOCD64TotalDisk:32/little,
            101010256:32/little,
            DiskNum:16/little,
            StartDiskNum:16/little,
            EntriesOnDisk:16/little,
            Entries:16/little,
            Size:32/little,
            Offset:32/little,
            ZipCommentLength:16/little,
            Comment:ZipCommentLength/binary>>) ->
    if
        DiskNum =:= 65535;
        StartDiskNum =:= 65535;
        EntriesOnDisk =:= 65535, Entries =:= 65535;
        Size =:= 4294967295;
        Offset =:= 4294967295 ->
            {{EOCD64StartDiskNum, EOCD64Offset, EOCD64TotalDisk},
             {eocd, undefined, 10,
              <<"UNIX"/utf8>>,
              10, DiskNum, StartDiskNum, EntriesOnDisk, Entries, Size,
              Offset, ZipCommentLength, undefined},
             Comment};
        true ->
            none
    end;
find_eocd(<<101010256:32/little,
            DiskNum:16/little,
            StartDiskNum:16/little,
            EntriesOnDisk:16/little,
            Entries:16/little,
            Size:32/little,
            Offset:32/little,
            ZipCommentLength:16/little,
            Comment:ZipCommentLength/binary>>) ->
    if
        DiskNum =:= 65535;
        StartDiskNum =:= 65535;
        EntriesOnDisk =:= 65535;
        Entries =:= 65535;
        Size =:= 4294967295;
        Offset =:= 4294967295 ->
            none;
        true ->
            {{eocd, undefined, 10,
              <<"UNIX"/utf8>>,
              10, DiskNum, StartDiskNum, EntriesOnDisk, Entries, Size,
              Offset, ZipCommentLength, undefined},
             Comment}
    end;
find_eocd(<<_:8,Rest/binary>>)
    when byte_size(Rest) > 4 + 2 + 2 + 2 + 2 + 4 + 4 + 2 - 4 ->
    find_eocd(Rest);
find_eocd(_) ->
    none.

find_eocd64(In0,
            {_EOCD64StartDiskNum, EOCD64Offset, _EOCD64TotalDisk},
            EOCD, Comment, Input) ->
    maybe
        In1 = Input({seek, bof, EOCD64Offset}, In0),
        {<<101075792:32/little,EOCDSize:64/little>>, In2} ?=
            Input({read, 4 + 8}, In1),
        {<<VersionMadeBy:8,
           OsMadeBy:8,
           ExtractVersion:16/little,
           DiskNum:32/little,
           StartDiskNum:32/little,
           EntriesOnDisk:64/little,
           Entries:64/little,
           Size:64/little,
           Offset:64/little,
           Extra:(EOCDSize - (2 + 2 + 4 + 4 + 8 + 8 + 8 + 8))/binary>>,
         In3} ?=
            Input({read, EOCDSize}, In2),
        {{begin
              REC62 = os_id_to_atom(OsMadeBy),
              REC63 = parse_extra(Extra),
              REC64 = EOCD,
              case REC64 of
                  {eocd, _, _, _, _, _, _, _, _, _, _, _, _} ->
                      setelement(2,
                                 setelement(3,
                                            setelement(4,
                                                       setelement(5,
                                                                  setelement(6,
                                                                             setelement(7,
                                                                                        setelement(8,
                                                                                                   setelement(9,
                                                                                                              setelement(10,
                                                                                                                         setelement(11,
                                                                                                                                    setelement(13,
                                                                                                                                               REC64,
                                                                                                                                               REC63),
                                                                                                                                    Offset),
                                                                                                                         Size),
                                                                                                              Entries),
                                                                                                   EntriesOnDisk),
                                                                                        StartDiskNum),
                                                                             DiskNum),
                                                                  ExtractVersion),
                                                       REC62),
                                            VersionMadeBy),
                                 EOCD);
                  _ ->
                      error({badrecord, REC64})
              end
          end,
          Comment},
         In3}
    else
        {eof, InEOF} ->
            {eof, InEOF};
        _ ->
            none
    end.

os_id_to_atom(0) ->
    <<"MS-DOS and OS/2"/utf8>>;
os_id_to_atom(1) ->
    <<"Amiga"/utf8>>;
os_id_to_atom(2) ->
    <<"OpenVMS"/utf8>>;
os_id_to_atom(3) ->
    <<"UNIX"/utf8>>;
os_id_to_atom(4) ->
    <<"VM/CMS"/utf8>>;
os_id_to_atom(5) ->
    <<"Atari ST"/utf8>>;
os_id_to_atom(6) ->
    <<"OS/2 H.P.F.S"/utf8>>;
os_id_to_atom(7) ->
    <<"Macintosh"/utf8>>;
os_id_to_atom(8) ->
    <<"Z-System"/utf8>>;
os_id_to_atom(9) ->
    <<"CP/M"/utf8>>;
os_id_to_atom(10) ->
    <<"Windows NTFS"/utf8>>;
os_id_to_atom(11) ->
    <<"MVS"/utf8>>;
os_id_to_atom(12) ->
    <<"VSE"/utf8>>;
os_id_to_atom(13) ->
    <<"Acorn Risc"/utf8>>;
os_id_to_atom(14) ->
    <<"VFAT"/utf8>>;
os_id_to_atom(15) ->
    <<"alternate MVS"/utf8>>;
os_id_to_atom(16) ->
    <<"BeOS"/utf8>>;
os_id_to_atom(17) ->
    <<"Tandem"/utf8>>;
os_id_to_atom(18) ->
    <<"OS/400"/utf8>>;
os_id_to_atom(19) ->
    <<"OS X (Darwin)"/utf8>>;
os_id_to_atom(No) ->
    No.

raw_file_info_etc({cd_file_header, _, _, _, _, _, _, _, _, _, _, _, _,
                   _, _, _, _, _, _, _, _, _, _} =
                      CD,
                  FileName, FileComment, BExtraField, Acc)
    when true ->
    {cd_file_header, _, _, _, _, _, CRC, CompSize, _, _, _, _, _, _, _,
     _, _, _, _, _, _, _, Offset} =
        CD,
    FileInfo = cd_file_header_to_file_info(FileName, CD, BExtraField),
    [{{zip_file, FileName, FileInfo, FileComment, Offset, CompSize},
      {zip_file_extra, CRC}} |
     Acc];
raw_file_info_etc({eocd, _, _, _, _, _, _, _, _, _, _, _, _} = EOCD,
                  _, Comment, _, Acc)
    when true ->
    [{zip_comment, Comment} | Acc].

raw_file_info_public(CD, FileName, FileComment, BExtraField, Acc0) ->
    [H1 | T] =
        raw_file_info_etc(CD, FileName, FileComment, BExtraField, Acc0),
    H2 =
        case H1 of
            {ZF, {zip_file_extra, _} = Extra} when true ->
                ZF;
            Other ->
                Other
        end,
    [H2 | T].

cd_file_header_to_file_info(FileName,
                            {cd_file_header, _, _, _, _, _, _, _,
                             UncompSize, _, _, _, _, _, _, _, _, _, _,
                             _, _, _, _} =
                                CDFH,
                            _ExtraField) ->
    M = file_header_mtime_to_datetime(CDFH),
    A = file_header_atime_to_datetime(CDFH),
    C = file_header_ctime_to_datetime(CDFH),
    Type =
        case lists:last(FileName) of
            $/ ->
                directory;
            _ ->
                regular
        end,
    Mode =
        if
            (is_record(CDFH, cd_file_header, 23)
             orelse
             fail)
            and
            (element(16, CDFH) =:= <<"UNIX"/utf8>>) ->
                (case CDFH of
                     {cd_file_header, _, _, _, _, _, _, _, _, _, _, _,
                      _, _, _, _, _, _, _, _, _, REC65, _} ->
                         REC65;
                     REC65 ->
                         error({badrecord, REC65})
                 end
                 bsr
                 16)
                band
                511;
            true ->
                if
                    Type =:= directory ->
                        484;
                    true ->
                        420
                end
        end,
    {file_info, UncompSize, Type, read_write, A, M, C, Mode, 1, 0, 0, 0,
     case CDFH of
         {cd_file_header, _, _, _, _, _, _, _, _, _, _, _, REC66, _, _,
          _, _, _, _, _, _, _, _} ->
             REC66;
         REC66 ->
             error({badrecord, REC66})
     end,
     case CDFH of
         {cd_file_header, _, _, _, _, _, _, _, _, _, _, _, _, REC67, _,
          _, _, _, _, _, _, _, _} ->
             REC67;
         REC67 ->
             error({badrecord, REC67})
     end}.

get_z_files([], _Z, _In, _Opts, Acc) ->
    lists:reverse(Acc);
get_z_files([{zip_comment, _} | Rest], Z, In, Opts, Acc) ->
    get_z_files(Rest, Z, In, Opts, Acc);
get_z_files([{{zip_file, _, _, _, Offset, _} = ZipFile, ZipExtra} |
             Rest],
            Z, In0,
            {unzip_opts, Output, Input, Filter, OpO, FB, CWD, SkipDirs,
             ExtraOpts} =
                Opts,
            Acc0) ->
    case Filter({ZipFile, ZipExtra, CWD}) of
        true ->
            In1 = Input({seek, bof, Offset}, In0),
            {In2, Acc1} =
                case
                    get_z_file(In1, Z, Input, Output, OpO, FB, CWD,
                               {ZipFile, ZipExtra},
                               Filter, SkipDirs, ExtraOpts)
                of
                    {Type, GZD, Inx} when Type =:= file; Type =:= dir ->
                        {Inx, [GZD | Acc0]};
                    {_, Inx} ->
                        {Inx, Acc0}
                end,
            get_z_files(Rest, Z, In2, Opts, Acc1);
        _ ->
            get_z_files(Rest, Z, In0, Opts, Acc0)
    end.

get_z_file(In0, Z, Input, Output, OpO, FB, CWD,
           {ZipFile, ZipExtra},
           Filter, SkipDirs, ExtraOpts) ->
    case
        Input({read, 4 + 2 + 2 + 2 + 2 + 2 + 4 + 4 + 4 + 2 + 2}, In0)
    of
        {eof, In1} ->
            {eof, In1};
        {<<67324752:32/little,B/binary>>, In1} ->
            LH = local_file_header_from_bin(B),
            {local_file_header, _, GPFlag, CompMethod, _, _, _, _, _, _,
             _, _, _, _, FileNameLen, ExtraLen, _} =
                LH,
            {BFileN, In3} = Input({read, FileNameLen + ExtraLen}, In1),
            {FileName, BLHExtra} =
                get_filename_extra(FileNameLen, ExtraLen, BFileN,
                                   GPFlag),
            LHExtra = update_extra_fields(LH, BLHExtra, ExtraOpts),
            {CompSize, CRC32} =
                case GPFlag band 8 =:= 8 of
                    true ->
                        {case ZipFile of
                             {zip_file, _, _, _, _, REC68} ->
                                 REC68;
                             REC68 ->
                                 error({badrecord, REC68})
                         end,
                         case ZipExtra of
                             {zip_file_extra, REC69} ->
                                 REC69;
                             REC69 ->
                                 error({badrecord, REC69})
                         end};
                    false ->
                        {case LHExtra of
                             {local_file_header, _, _, _, _, _, _,
                              REC70, _, _, _, _, _, _, _, _, _} ->
                                 REC70;
                             REC70 ->
                                 error({badrecord, REC70})
                         end,
                         case LHExtra of
                             {local_file_header, _, _, _, _, _, REC71,
                              _, _, _, _, _, _, _, _, _, _} ->
                                 REC71;
                             REC71 ->
                                 error({badrecord, REC71})
                         end}
                end,
            ReadAndWrite =
                case check_valid_location(CWD, FileName) of
                    {true, FileName1} ->
                        true;
                    {false, FileName1} ->
                        Filter({begin
                                    REC72 = ZipFile,
                                    case REC72 of
                                        {zip_file, _, _, _, _, _} ->
                                            setelement(2, REC72,
                                                       FileName1);
                                        _ ->
                                            error({badrecord, REC72})
                                    end
                                end,
                                ZipExtra, CWD})
                end,
            FileNameWithCwd = add_cwd(CWD, FileName1),
            IsDir = lists:last(FileName) =:= $/,
            case
                ReadAndWrite
                andalso
                not (IsDir
                     andalso
                     SkipDirs)
            of
                true ->
                    {Type, Out, In} =
                        case lists:last(FileName) of
                            $/ ->
                                Out1 =
                                    Output({ensure_path,
                                            FileNameWithCwd},
                                           []),
                                {dir, Out1, In3};
                            _ ->
                                {Out1, In4, CRC, _UncompSize} =
                                    get_z_data(CompMethod, In3,
                                               FileNameWithCwd,
                                               CompSize, Input, Output,
                                               OpO, Z),
                                In5 =
                                    skip_z_data_descriptor(GPFlag,
                                                           Input, In4),
                                FB(FileName),
                                CRC =:= CRC32
                                orelse
                                throw({bad_crc, FileName}),
                                {file, Out1, In5}
                        end,
                    FileInfo =
                        local_file_header_to_file_info(Output({file_info,
                                                               FileNameWithCwd},
                                                              Out),
                                                       LHExtra, ZipFile),
                    Out2 =
                        Output({set_file_info, FileNameWithCwd,
                                FileInfo,
                                [{time, local}]},
                               Out),
                    {Type, Out2, In};
                false ->
                    {ignore, In3}
            end;
        Else ->
            throw({bad_local_file_header, Else})
    end.

local_file_header_to_file_info(FI, LFH, ZipFile) ->
    begin
        REC73 =
            case
                case ZipFile of
                    {zip_file, _, REC79, _, _, _} ->
                        REC79;
                    REC79 ->
                        error({badrecord, REC79})
                end
            of
                {file_info, _, _, _, _, _, _, REC78, _, _, _, _, _, _} ->
                    REC78;
                REC78 ->
                    error({badrecord, REC78})
            end,
        REC74 = file_header_mtime_to_datetime(LFH),
        REC75 = file_header_atime_to_datetime(LFH),
        REC76 = file_header_ctime_to_datetime(LFH),
        REC77 = FI,
        case REC77 of
            {file_info, _, _, _, _, _, _, _, _, _, _, _, _, _} ->
                setelement(5,
                           setelement(6,
                                      setelement(7,
                                                 setelement(8, REC77,
                                                            REC73),
                                                 REC76),
                                      REC74),
                           REC75);
            _ ->
                error({badrecord, REC77})
        end
    end.

check_valid_location(CWD, FileName) ->
    TrailingSlash =
        case lists:last(FileName) of
            $/ ->
                "/";
            _ ->
                ""
        end,
    {IsValid, Name} =
        case check_dir_level(filename:split(FileName), 0) of
            {FileOrDir, Level} when Level < 0 ->
                CWD1 =
                    if
                        CWD == "" ->
                            "./";
                        true ->
                            CWD
                    end,
                error_logger:format("Illegal path: ~ts, extracting in ~"
                                    "ts~n",
                                    [add_cwd(CWD, FileName), CWD1]),
                {false, FileOrDir};
            _ ->
                {true, FileName}
        end,
    {IsValid, string:trim(Name, trailing, "/") ++ TrailingSlash}.

check_dir_level([FileOrDir], Level) ->
    {FileOrDir, Level};
check_dir_level(["." | Parts], Level) ->
    check_dir_level(Parts, Level);
check_dir_level([".." | Parts], Level) ->
    check_dir_level(Parts, Level - 1);
check_dir_level([_Dir | Parts], Level) ->
    check_dir_level(Parts, Level + 1).

get_filename_extra(FileNameLen, ExtraLen, B, GPFlag) ->
    try
        <<BFileName:FileNameLen/binary,BExtra:ExtraLen/binary>> = B,
        {binary_to_chars(BFileName, GPFlag), BExtra}
    catch
        _:_ ->
            throw(bad_file_header)
    end.

get_z_data(8, In0, FileName, CompSize, Input, Output, OpO, Z) ->
    ok = zlib:inflateInit(Z, -15),
    Out0 = Output({open, FileName, [write | OpO]}, []),
    CRC0 = 0,
    {In1, Out1, UncompSize, CRC} =
        get_z_data_loop(CompSize, 0, In0, Out0, Input, Output, CRC0, Z),
    _ = catch zlib:inflateEnd(Z),
    Out2 = Output({close, FileName}, Out1),
    {Out2, In1, CRC, UncompSize};
get_z_data(0, In0, FileName, CompSize, Input, Output, OpO, _Z) ->
    Out0 = Output({open, FileName, [write | OpO]}, []),
    CRC0 = 0,
    {In1, Out1, CRC} =
        copy_data_loop(CompSize, In0, Out0, Input, Output, CRC0),
    Out2 = Output({close, FileName}, Out1),
    {Out2, In1, CRC, CompSize};
get_z_data(_, _, _, _, _, _, _, _) ->
    throw(bad_file_header).

copy_data_loop(0, In, Out, _Input, _Output, CRC) ->
    {In, Out, CRC};
copy_data_loop(CompSize, In0, Out0, Input, Output, CRC0) ->
    N = min(16 * 1024, CompSize),
    case Input({read, N}, In0) of
        {eof, In1} ->
            {Out0, In1};
        {Uncompressed, In1} ->
            CRC1 = erlang:crc32(CRC0, Uncompressed),
            Out1 = Output({write, Uncompressed}, Out0),
            copy_data_loop(CompSize - N, In1, Out1, Input, Output, CRC1)
    end.

get_z_data_loop(0, UncompSize, In, Out, _Input, _Output, CRC0, _Z) ->
    {In, Out, UncompSize, CRC0};
get_z_data_loop(CompSize, UncompSize, In0, Out0, Input, Output, CRC0, Z) ->
    N = min(16 * 1024, CompSize),
    case Input({read, N}, In0) of
        {eof, In1} ->
            {Out0, In1};
        {Compressed, In1} ->
            Uncompressed = zlib:inflate(Z, Compressed),
            CRC1 = erlang:crc32(CRC0, Uncompressed),
            Out1 = Output({write, Uncompressed}, Out0),
            get_z_data_loop(CompSize - N,
                            UncompSize + iolist_size(Uncompressed),
                            In1, Out1, Input, Output, CRC1, Z)
    end.

skip_z_data_descriptor(GPFlag, Input, In0) when GPFlag band 8 =:= 8 ->
    Input({seek, cur, 12}, In0);
skip_z_data_descriptor(_GPFlag, _Input, In0) ->
    In0.

file_header_mtime_to_datetime(FH) ->
    10 = 10,
    case element(10, FH) of
        undefined ->
            dos_date_time_to_datetime(element(6, FH), element(5, FH));
        MTime ->
            calendar:system_time_to_local_time(MTime, second)
    end.

file_header_atime_to_datetime(FH) ->
    11 = 11,
    case element(11, FH) of
        undefined ->
            dos_date_time_to_datetime(element(6, FH), element(5, FH));
        Atime ->
            calendar:system_time_to_local_time(Atime, second)
    end.

file_header_ctime_to_datetime(FH) ->
    12 = 12,
    case element(12, FH) of
        undefined ->
            undefined;
        Ctime ->
            calendar:system_time_to_local_time(Ctime, second)
    end.

dos_date_time_to_datetime(DosDate, DosTime) ->
    <<Hour:5,Min:6,Sec:5>> = <<DosTime:16>>,
    <<YearFrom1980:7,Month:4,Day:5>> = <<DosDate:16>>,
    {{YearFrom1980 + 1980, Month, Day}, {Hour, Min, Sec * 2}}.

dos_date_time_from_datetime({{Year, Month, Day}, {Hour, Min, Sec}}) ->
    YearFrom1980 = Year - 1980,
    <<DosTime:16>> = <<Hour:5,Min:6,(Sec div 2):5>>,
    <<DosDate:16>> = <<YearFrom1980:7,Month:4,Day:5>>,
    {DosDate, DosTime}.

datetime_to_system_time(undefined) ->
    undefined;
datetime_to_system_time(PosixTime) when is_integer(PosixTime) ->
    PosixTime;
datetime_to_system_time(DateTime) ->
    erlang:universaltime_to_posixtime(erlang:localtime_to_universaltime(DateTime)).

pwrite_binary(B, Pos, Bin) when byte_size(B) =:= Pos ->
    append_bins(Bin, B);
pwrite_binary(B, Pos, Bin) ->
    iolist_to_binary(pwrite_iolist(B, Pos, Bin)).

append_bins([Bin | Bins], B) when is_binary(Bin) ->
    append_bins(Bins, <<B/binary,Bin/binary>>);
append_bins([List | Bins], B) when is_list(List) ->
    append_bins(Bins, append_bins(List, B));
append_bins(Bin, B) when is_binary(Bin) ->
    <<B/binary,Bin/binary>>;
append_bins([_ | _] = List, B) ->
    <<B/binary,(iolist_to_binary(List))/binary>>;
append_bins([], B) ->
    B.

-dialyzer({no_improper_lists, {pwrite_iolist, 3}}).

pwrite_iolist(B, Pos, Bin) ->
    {Left, Right} = split_binary(B, Pos),
    Sz = iolist_size(Bin),
    R = skip_bin(Right, Sz),
    [Left, Bin | R].

skip_bin(B, Pos) when is_binary(B) ->
    case B of
        <<_:Pos/binary,Bin/binary>> ->
            Bin;
        _ ->
            <<>>
    end.

binary_to_chars(B, GPFlag) ->
    case GPFlag band 2048 of
        0 ->
            binary_to_list(B);
        2048 ->
            case unicode:characters_to_list(B) of
                List when is_list(List) ->
                    List
            end
    end.

heuristic_to_string(B) when is_binary(B) ->
    case unicode:characters_to_binary(B) of
        B ->
            unicode:characters_to_list(B);
        _ ->
            binary_to_list(B)
    end.

encode_string(String) ->
    case
        lists:any(fun(C) ->
                         C > 127
                  end,
                  String)
    of
        true ->
            case unicode:characters_to_binary(String) of
                B when is_binary(B) ->
                    {binary_to_list(B), 2048};
                _ ->
                    throw({bad_unicode, String})
            end;
        false ->
            {String, 0}
    end.

cd_file_header_from_bin(<<VersionMadeBy:8,
                          OsMadeBy:8,
                          VersionNeeded:16/little,
                          GPFlag:16/little,
                          CompMethod:16/little,
                          LastModTime:16/little,
                          LastModDate:16/little,
                          CRC32:32/little,
                          CompSize:32/little,
                          UncompSize:32/little,
                          FileNameLength:16/little,
                          ExtraFieldLength:16/little,
                          FileCommentLength:16/little,
                          DiskNumStart:16/little,
                          InternalAttr:16/little,
                          ExternalAttr:32/little,
                          LocalHeaderOffset:32/little>>) ->
    {cd_file_header, VersionNeeded, GPFlag, CompMethod, LastModTime,
     LastModDate, CRC32, CompSize, UncompSize, undefined, undefined,
     undefined, 0, 0, VersionMadeBy,
     os_id_to_atom(OsMadeBy),
     FileNameLength, ExtraFieldLength, FileCommentLength, DiskNumStart,
     InternalAttr, ExternalAttr, LocalHeaderOffset};
cd_file_header_from_bin(_) ->
    throw(bad_cd_file_header).

local_file_header_from_bin(<<VersionNeeded:16/little,
                             GPFlag:16/little,
                             CompMethod:16/little,
                             LastModTime:16/little,
                             LastModDate:16/little,
                             CRC32:32/little,
                             CompSize:32/little,
                             UncompSize:32/little,
                             FileNameLength:16/little,
                             ExtraFieldLength:16/little>>) ->
    {local_file_header, VersionNeeded, GPFlag, CompMethod, LastModTime,
     LastModDate, CRC32, CompSize, UncompSize, undefined, undefined,
     undefined, 0, 0, FileNameLength, ExtraFieldLength, undefined};
local_file_header_from_bin(_) ->
    throw(bad_local_file_header).

binary_io({file_info, FN, Opts}, A) ->
    FI = binary_io({file_info, FN}, A),
    case proplists:get_value(time, Opts, local) of
        local ->
            FI;
        posix ->
            begin
                REC80 =
                    datetime_to_system_time(case FI of
                                                {file_info, _, _, _,
                                                 REC84, _, _, _, _, _,
                                                 _, _, _, _} ->
                                                    REC84;
                                                REC84 ->
                                                    error({badrecord,
                                                           REC84})
                                            end),
                REC81 =
                    datetime_to_system_time(case FI of
                                                {file_info, _, _, _, _,
                                                 REC85, _, _, _, _, _,
                                                 _, _, _} ->
                                                    REC85;
                                                REC85 ->
                                                    error({badrecord,
                                                           REC85})
                                            end),
                REC82 =
                    datetime_to_system_time(case FI of
                                                {file_info, _, _, _, _,
                                                 _, REC86, _, _, _, _,
                                                 _, _, _} ->
                                                    REC86;
                                                REC86 ->
                                                    error({badrecord,
                                                           REC86})
                                            end),
                REC83 = FI,
                case REC83 of
                    {file_info, _, _, _, _, _, _, _, _, _, _, _, _, _} ->
                        setelement(5,
                                   setelement(6,
                                              setelement(7, REC83,
                                                         REC82),
                                              REC81),
                                   REC80);
                    _ ->
                        error({badrecord, REC83})
                end
            end
    end;
binary_io({file_info,
           {_Filename, _B,
            {file_info, _, _, _, _, _, _, _, _, _, _, _, _, _} = FI}},
          _A) ->
    FI;
binary_io({file_info,
           {_Filename,
            {file_info, _, _, _, _, _, _, _, _, _, _, _, _, _} = FI,
            _B}},
          _A) ->
    FI;
binary_io({file_info, {_Filename, B}}, A) ->
    binary_io({file_info, B}, A);
binary_io({file_info, Filename}, A) when is_list(Filename) ->
    binary_io({file_info, {Filename, <<>>}}, A);
binary_io({file_info, B}, _) ->
    {Type, Size} =
        if
            is_binary(B) ->
                {regular, byte_size(B)};
            B =:= directory ->
                {directory, 0}
        end,
    Now = calendar:local_time(),
    {file_info, Size, Type, read_write, Now, Now, Now,
     if
         Type =:= directory ->
             484;
         true ->
             420
     end,
     1, 0, 0, 0, 0, 0};
binary_io({open, {_Filename, B, _FI}, _Opts}, _) when is_binary(B) ->
    {0, B};
binary_io({open, {_Filename, _FI, B}, _Opts}, _) when is_binary(B) ->
    {0, B};
binary_io({open, {_Filename, B}, _Opts}, _) when is_binary(B) ->
    {0, B};
binary_io({open, B, _Opts}, _) when is_binary(B) ->
    {0, B};
binary_io({open, Filename, _Opts}, _) when is_list(Filename) ->
    {0, <<>>};
binary_io({read, N}, {Pos, B}) when Pos >= byte_size(B) ->
    {eof, {Pos + N, B}};
binary_io({read, N}, {Pos, B}) when Pos + N > byte_size(B) ->
    <<_:Pos/binary,Read/binary>> = B,
    {Read, {byte_size(B), B}};
binary_io({pread, Pos, N}, {OldPos, B}) ->
    case B of
        <<_:Pos/binary,Read:N/binary,_Rest/binary>> ->
            {Read, {Pos + N, B}};
        _ ->
            {eof, {OldPos, B}}
    end;
binary_io({read, N}, {Pos, B}) ->
    <<_:Pos/binary,Read:N/binary,_/binary>> = B,
    {Read, {Pos + N, B}};
binary_io({seek, bof, Pos}, {_OldPos, B}) ->
    {Pos, B};
binary_io({seek, cur, Pos}, {OldPos, B}) ->
    {OldPos + Pos, B};
binary_io({seek, eof, Pos}, {_OldPos, B}) ->
    {byte_size(B) + Pos, B};
binary_io({position, Loc, Adj}, File) ->
    {Pos, _} = NewFile = binary_io({seek, Loc, Adj}, File),
    {Pos, NewFile};
binary_io({pwrite, Pos, Data}, {OldPos, B}) ->
    {OldPos, pwrite_binary(B, Pos, Data)};
binary_io({write, Data}, {Pos, B}) ->
    {Pos + iolist_size(Data), pwrite_binary(B, Pos, Data)};
binary_io(close, {_Pos, B}) ->
    B;
binary_io({close, FN}, {_Pos, B}) ->
    {FN, B};
binary_io({list_dir, _F}, _B) ->
    [];
binary_io({set_file_info, _F, _FI}, B) ->
    B;
binary_io({set_file_info, _F, _FI, _O}, B) ->
    B;
binary_io({ensure_path, Dir}, _B) ->
    {Dir, <<>>}.

file_io({file_info, F}, _) ->
    case file:read_file_info(F) of
        {ok, Info} ->
            Info;
        {error, E} ->
            throw(E)
    end;
file_io({file_info, F, Opts}, _) ->
    case file:read_file_info(F, Opts) of
        {ok, Info} ->
            Info;
        {error, E} ->
            throw(E)
    end;
file_io({open, FN, Opts}, _) ->
    case lists:member(write, Opts) of
        true ->
            ok = filelib:ensure_dir(FN);
        _ ->
            ok
    end,
    case file:open(FN, Opts ++ [binary]) of
        {ok, H} ->
            H;
        {error, E} ->
            throw(E)
    end;
file_io({read, N}, H) ->
    case file:read(H, N) of
        {ok, B} ->
            {B, H};
        eof ->
            {eof, H};
        {error, E} ->
            throw(E)
    end;
file_io({pread, Pos, N}, H) ->
    case file:pread(H, Pos, N) of
        {ok, B} ->
            {B, H};
        eof ->
            {eof, H};
        {error, E} ->
            throw(E)
    end;
file_io({seek, S, Pos}, H) ->
    case file:position(H, {S, Pos}) of
        {ok, _NewPos} ->
            H;
        {error, Error} ->
            throw(Error)
    end;
file_io({position, S, Pos}, H) ->
    case file:position(H, {S, Pos}) of
        {ok, NewPos} ->
            {NewPos, H};
        {error, Error} ->
            throw(Error)
    end;
file_io({write, Data}, H) ->
    case file:write(H, Data) of
        ok ->
            H;
        {error, Error} ->
            throw(Error)
    end;
file_io({pwrite, Pos, Data}, H) ->
    case file:pwrite(H, Pos, Data) of
        ok ->
            H;
        {error, Error} ->
            throw(Error)
    end;
file_io({close, FN}, H) ->
    case file:close(H) of
        ok ->
            FN;
        {error, Error} ->
            throw(Error)
    end;
file_io(close, H) ->
    file_io({close, ok}, H);
file_io({list_dir, F}, _H) ->
    case file:list_dir(F) of
        {ok, Files} ->
            Files;
        {error, Error} ->
            throw(Error)
    end;
file_io({set_file_info, F, FI}, H) ->
    case file:write_file_info(F, FI) of
        ok ->
            H;
        {error, Error} ->
            throw(Error)
    end;
file_io({set_file_info, F, FI, O}, H) ->
    case file:write_file_info(F, FI, O) of
        ok ->
            H;
        {error, Error} ->
            throw(Error)
    end;
file_io({ensure_path, Dir}, _H) ->
    ok = filelib:ensure_path(Dir),
    Dir.



