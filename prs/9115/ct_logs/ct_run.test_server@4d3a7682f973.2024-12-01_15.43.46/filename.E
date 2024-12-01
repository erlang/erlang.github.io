-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.1.2/src/filename.erl", 1).

-module(filename).

-removed([{find_src, '_', "use filelib:find_source/1,3 instead"}]).

-removed([{safe_relative_path, 1,
           "use filelib:safe_relative_path/2 instead"}]).

-export([absname/1,
         absname/2,
         absname_join/2,
         basename/1,
         basename/2,
         dirname/1,
         extension/1,
         join/1,
         join/2,
         pathtype/1,
         rootname/1,
         rootname/2,
         split/1,
         flatten/1,
         nativename/1]).

-export([basedir/2,basedir/3]).

-export([validate/1]).

-export([append/2]).

-file("/buildroot/otp/Erlang ∅⊤℞/lib/kernel-10.1.1/include/file.hrl", 1).

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

-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.1.2/src/filename.erl",
      123).

-spec absname(Filename) -> file:filename_all()
                 when Filename :: file:name_all().

absname(Name) ->
    {ok, Cwd} = file:get_cwd(),
    absname(Name, Cwd).

-spec absname(Filename, Dir) -> file:filename_all()
                 when
                     Filename :: file:name_all(), Dir :: file:name_all().

absname(Name, AbsBase) when is_binary(Name), is_list(AbsBase) ->
    absname(Name, filename_string_to_binary(AbsBase));
absname(Name, AbsBase) when is_list(Name), is_binary(AbsBase) ->
    absname(filename_string_to_binary(Name), AbsBase);
absname(Name, AbsBase) ->
    case pathtype(Name) of
        relative ->
            absname_join(AbsBase, Name);
        absolute ->
            join([flatten(Name)]);
        volumerelative ->
            absname_vr(split(Name), split(AbsBase), AbsBase)
    end.

absname_vr([<<"/">> | Rest1], [Volume | _], _AbsBase) ->
    join([Volume | Rest1]);
absname_vr([<<X,$:>> | Rest1], [<<X,_/binary>> | _], AbsBase) ->
    absname(join(Rest1), AbsBase);
absname_vr([<<X,$:>> | Name], _, _AbsBase) ->
    Dcwd =
        case file:get_cwd([X, $:]) of
            {ok, Dir} ->
                filename_string_to_binary(Dir);
            {error, _} ->
                <<X,$:,$/>>
        end,
    absname(join(Name), Dcwd);
absname_vr(["/" | Rest1], [Volume | _], _AbsBase) ->
    join([Volume | Rest1]);
absname_vr([[X, $:] | Rest1], [[X | _] | _], AbsBase) ->
    absname(join(Rest1), AbsBase);
absname_vr([[X, $:] | Name], _, _AbsBase) ->
    Dcwd =
        case file:get_cwd([X, $:]) of
            {ok, Dir} ->
                Dir;
            {error, _} ->
                [X, $:, $/]
        end,
    absname(join(Name), Dcwd).

-spec absname_join(Dir, Filename) -> file:filename_all()
                      when
                          Dir :: file:name_all(),
                          Filename :: file:name_all().

absname_join(AbsBase, Name) ->
    join(AbsBase, flatten(Name)).

-spec basename(Filename) -> file:filename_all()
                  when Filename :: file:name_all().

basename(Name) when is_binary(Name) ->
    case os:type() of
        {win32, _} ->
            win_basenameb(Name);
        _ ->
            basenameb(Name, [<<"/">>])
    end;
basename(Name0) ->
    Name1 = flatten(Name0),
    {DirSep2, DrvSep} = separators(),
    Name = skip_prefix(Name1, DrvSep),
    basename1(Name, Name, DirSep2).

win_basenameb(<<Letter,$:,Rest/binary>>)
    when
        is_integer(Letter)
        andalso
        ($A =< Letter
         andalso
         Letter =< $Z
         orelse
         $a =< Letter
         andalso
         Letter =< $z) ->
    basenameb(Rest, [<<"/">>, <<"\\">>]);
win_basenameb(O) ->
    basenameb(O, [<<"/">>, <<"\\">>]).

basenameb(Bin, Sep) ->
    Parts =
        [ 
         X ||
             X <- binary:split(Bin, Sep, [global]),
             X =/= <<>>
        ],
    if
        Parts =:= [] ->
            <<>>;
        true ->
            lists:last(Parts)
    end.

basename1([$/], Tail0, _DirSep2) ->
    [_ | Tail] = lists:reverse(Tail0),
    lists:reverse(Tail);
basename1([$/ | Rest], _Tail, DirSep2) ->
    basename1(Rest, Rest, DirSep2);
basename1([DirSep2 | Rest], Tail, DirSep2) when is_integer(DirSep2) ->
    basename1([$/ | Rest], Tail, DirSep2);
basename1([Char | Rest], Tail, DirSep2) when is_integer(Char) ->
    basename1(Rest, Tail, DirSep2);
basename1([], Tail, _DirSep2) ->
    Tail.

skip_prefix(Name, false) ->
    Name;
skip_prefix([L, DrvSep | Name], DrvSep)
    when
        is_integer(L)
        andalso
        ($A =< L
         andalso
         L =< $Z
         orelse
         $a =< L
         andalso
         L =< $z) ->
    Name;
skip_prefix(Name, _) ->
    Name.

-spec basename(Filename, Ext) -> file:filename_all()
                  when
                      Filename :: file:name_all(),
                      Ext :: file:name_all().

basename(Name, Ext) when is_binary(Name), is_list(Ext) ->
    basename(Name, filename_string_to_binary(Ext));
basename(Name, Ext) when is_list(Name), is_binary(Ext) ->
    basename(filename_string_to_binary(Name), Ext);
basename(Name, Ext) when is_binary(Name), is_binary(Ext) ->
    BName = basename(Name),
    LAll = byte_size(Name),
    LN = byte_size(BName),
    LE = byte_size(Ext),
    case LN - LE of
        Neg when Neg < 0 ->
            BName;
        Pos ->
            StartLen = LAll - Pos - LE,
            case Name of
                <<_:StartLen/binary,Part:Pos/binary,Ext/binary>> ->
                    Part;
                _Other ->
                    BName
            end
    end;
basename(Name0, Ext0) ->
    Name = flatten(Name0),
    Ext = flatten(Ext0),
    {DirSep2, DrvSep} = separators(),
    NoPrefix = skip_prefix(Name, DrvSep),
    basename(NoPrefix, Ext, [], DirSep2).

basename(Ext, Ext, Tail, _DrvSep2) ->
    lists:reverse(Tail);
basename([$/], Ext, Tail, DrvSep2) ->
    basename([], Ext, Tail, DrvSep2);
basename([$/ | Rest], Ext, _Tail, DrvSep2) ->
    basename(Rest, Ext, [], DrvSep2);
basename([DirSep2 | Rest], Ext, Tail, DirSep2) when is_integer(DirSep2) ->
    basename([$/ | Rest], Ext, Tail, DirSep2);
basename([Char | Rest], Ext, Tail, DrvSep2) when is_integer(Char) ->
    basename(Rest, Ext, [Char | Tail], DrvSep2);
basename([], _Ext, Tail, _DrvSep2) ->
    lists:reverse(Tail).

-spec dirname(Filename) -> file:filename_all()
                 when Filename :: file:name_all().

dirname(Name) when is_binary(Name) ->
    {Dsep, Drivesep} = separators(),
    SList =
        case Dsep of
            Sep when is_integer(Sep) ->
                [<<Sep>>];
            _ ->
                []
        end,
    {XPart0, Dirs} =
        case Drivesep of
            X when is_integer(X) ->
                case Name of
                    <<DL,X,Rest/binary>>
                        when
                            is_integer(DL)
                            andalso
                            ($A =< DL
                             andalso
                             DL =< $Z
                             orelse
                             $a =< DL
                             andalso
                             DL =< $z) ->
                        {<<DL,X>>, Rest};
                    _ ->
                        {<<>>, Name}
                end;
            _ ->
                {<<>>, Name}
        end,
    Parts0 = binary:split(Dirs, [<<"/">> | SList], [global]),
    Parts =
        case Parts0 of
            [] ->
                [];
            _ ->
                lists:reverse(fstrip(tl(lists:reverse(Parts0))))
        end,
    XPart =
        case {Parts, XPart0} of
            {[], <<>>} ->
                <<".">>;
            _ ->
                XPart0
        end,
    dirjoin(Parts, XPart, <<"/">>);
dirname(Name0) ->
    Name = flatten(Name0),
    dirname(Name, [], [], separators()).

dirname([$/ | Rest], Dir, File, Seps) ->
    dirname(Rest, File ++ Dir, [$/], Seps);
dirname([DirSep | Rest], Dir, File, {DirSep, _} = Seps)
    when is_integer(DirSep) ->
    dirname(Rest, File ++ Dir, [$/], Seps);
dirname([Dl, DrvSep | Rest], [], [], {_, DrvSep} = Seps)
    when
        is_integer(DrvSep),
        is_integer(Dl)
        andalso
        ($A =< Dl
         andalso
         Dl =< $Z
         orelse
         $a =< Dl
         andalso
         Dl =< $z) ->
    dirname(Rest, [DrvSep, Dl], [], Seps);
dirname([Char | Rest], Dir, File, Seps) when is_integer(Char) ->
    dirname(Rest, Dir, [Char | File], Seps);
dirname([], [], File, _Seps) ->
    case lists:reverse(File) of
        [$/ | _] ->
            [$/];
        _ ->
            "."
    end;
dirname([], [$/ | Rest], File, Seps) ->
    dirname([], Rest, File, Seps);
dirname([], [DrvSep, Dl], File, {_, DrvSep}) ->
    case lists:reverse(File) of
        [$/ | _] ->
            [Dl, DrvSep, $/];
        _ ->
            [Dl, DrvSep]
    end;
dirname([], Dir, _, _) ->
    lists:reverse(Dir).

fstrip([<<>>, X | Y]) ->
    fstrip([X | Y]);
fstrip(A) ->
    A.

dirjoin([<<>> | T], Acc, Sep) ->
    dirjoin1(T, <<Acc/binary,"/">>, Sep);
dirjoin(A, B, C) ->
    dirjoin1(A, B, C).

dirjoin1([], Acc, _) ->
    Acc;
dirjoin1([One], Acc, _) ->
    <<Acc/binary,One/binary>>;
dirjoin1([H | T], Acc, Sep) ->
    dirjoin(T, <<Acc/binary,H/binary,Sep/binary>>, Sep).

-spec extension(Filename) -> file:filename_all()
                   when Filename :: file:name_all().

extension(Name) when is_binary(Name) ->
    {Dsep, _} = separators(),
    SList =
        case Dsep of
            Sep when is_integer(Sep) ->
                [<<Sep>>];
            _ ->
                []
        end,
    case binary:matches(Name, [<<".">>]) of
        [] ->
            <<>>;
        List ->
            case lists:last(List) of
                {0, _} ->
                    <<>>;
                {Pos, _} ->
                    <<_:(Pos - 1)/binary,Part/binary>> = Name,
                    case binary:match(Part, [<<"/">> | SList]) of
                        nomatch ->
                            <<_:Pos/binary,Result/binary>> = Name,
                            Result;
                        _ ->
                            <<>>
                    end
            end
    end;
extension(Name0) ->
    Name = flatten(Name0),
    extension([$/ | Name], [], major_os_type()).

extension([$. | Rest] = Result, _Result, OsType) ->
    extension(Rest, Result, OsType);
extension([$/, $. | Rest], _Result, OsType) ->
    extension(Rest, [], OsType);
extension([$\\, $. | Rest], _Result, win32) ->
    extension(Rest, [], win32);
extension([Char | Rest], [], OsType) when is_integer(Char) ->
    extension(Rest, [], OsType);
extension([$/ | Rest], _Result, OsType) ->
    extension(Rest, [], OsType);
extension([$\\ | Rest], _Result, win32) ->
    extension(Rest, [], win32);
extension([Char | Rest], Result, OsType) when is_integer(Char) ->
    extension(Rest, Result, OsType);
extension([], Result, _OsType) ->
    Result.

-spec join(Components) -> file:filename_all()
              when Components :: [file:name_all()].

join([Name1, Name2 | Rest]) ->
    join([join(Name1, Name2) | Rest]);
join([Name]) when is_list(Name) ->
    join1(Name, [], [], major_os_type());
join([Name]) when is_binary(Name) ->
    join1b(Name, <<>>, [], major_os_type());
join([Name]) when is_atom(Name) ->
    join([atom_to_list(Name)]).

-spec join(Name1, Name2) -> file:filename_all()
              when Name1 :: file:name_all(), Name2 :: file:name_all().

join(Name1, Name2) when is_list(Name1), is_list(Name2) ->
    OsType = major_os_type(),
    case pathtype(Name2) of
        relative ->
            join1(Name1, Name2, [], OsType);
        _Other ->
            join1(Name2, [], [], OsType)
    end;
join(Name1, Name2) when is_binary(Name1), is_list(Name2) ->
    join(Name1, filename_string_to_binary(Name2));
join(Name1, Name2) when is_list(Name1), is_binary(Name2) ->
    join(filename_string_to_binary(Name1), Name2);
join(Name1, Name2) when is_binary(Name1), is_binary(Name2) ->
    OsType = major_os_type(),
    case pathtype(Name2) of
        relative ->
            join1b(Name1, Name2, [], OsType);
        _Other ->
            join1b(Name2, <<>>, [], OsType)
    end;
join(Name1, Name2) when is_atom(Name1) ->
    join(atom_to_list(Name1), Name2);
join(Name1, Name2) when is_atom(Name2) ->
    join(Name1, atom_to_list(Name2)).

join1([UcLetter, $: | Rest], RelativeName, [], win32)
    when is_integer(UcLetter), UcLetter >= $A, UcLetter =< $Z ->
    join1(Rest, RelativeName, [$:, UcLetter + $a - $A], win32);
join1([$\\, $\\ | Rest], RelativeName, [], win32) ->
    join1([$/, $/ | Rest], RelativeName, [], win32);
join1([$/, $/ | Rest], RelativeName, [], win32) ->
    join1(Rest, RelativeName, [$/, $/], win32);
join1([$\\ | Rest], RelativeName, Result, win32) ->
    join1([$/ | Rest], RelativeName, Result, win32);
join1([$/ | Rest], RelativeName, [$., $/ | Result], OsType) ->
    join1(Rest, RelativeName, [$/ | Result], OsType);
join1([$/ | Rest], RelativeName, [$/ | Result], OsType) ->
    join1(Rest, RelativeName, [$/ | Result], OsType);
join1([], [], Result, OsType) ->
    maybe_remove_dirsep(Result, OsType);
join1([], RelativeName, [$: | Rest], win32) ->
    join1(RelativeName, [], [$: | Rest], win32);
join1([], RelativeName, [$/ | Result], OsType) ->
    join1(RelativeName, [], [$/ | Result], OsType);
join1([], RelativeName, [$., $/ | Result], OsType) ->
    join1(RelativeName, [], [$/ | Result], OsType);
join1([], RelativeName, Result, OsType) ->
    join1(RelativeName, [], [$/ | Result], OsType);
join1([[_ | _] = List | Rest], RelativeName, Result, OsType) ->
    join1(List ++ Rest, RelativeName, Result, OsType);
join1([[] | Rest], RelativeName, Result, OsType) ->
    join1(Rest, RelativeName, Result, OsType);
join1([Char | Rest], RelativeName, Result, OsType) when is_integer(Char) ->
    join1(Rest, RelativeName, [Char | Result], OsType);
join1([Atom | Rest], RelativeName, Result, OsType) when is_atom(Atom) ->
    join1(atom_to_list(Atom) ++ Rest, RelativeName, Result, OsType).

join1b(<<UcLetter,$:,Rest/binary>>, RelativeName, [], win32)
    when is_integer(UcLetter), UcLetter >= $A, UcLetter =< $Z ->
    join1b(Rest, RelativeName, [$:, UcLetter + $a - $A], win32);
join1b(<<$\\,$\\,Rest/binary>>, RelativeName, [], win32) ->
    join1b(<<$/,$/,Rest/binary>>, RelativeName, [], win32);
join1b(<<$/,$/,Rest/binary>>, RelativeName, [], win32) ->
    join1b(Rest, RelativeName, [$/, $/], win32);
join1b(<<$\\,Rest/binary>>, RelativeName, Result, win32) ->
    join1b(<<$/,Rest/binary>>, RelativeName, Result, win32);
join1b(<<$/,Rest/binary>>, RelativeName, [$., $/ | Result], OsType) ->
    join1b(Rest, RelativeName, [$/ | Result], OsType);
join1b(<<$/,Rest/binary>>, RelativeName, [$/ | Result], OsType) ->
    join1b(Rest, RelativeName, [$/ | Result], OsType);
join1b(<<>>, <<>>, Result, OsType) ->
    list_to_binary(maybe_remove_dirsep(Result, OsType));
join1b(<<>>, RelativeName, [$: | Rest], win32) ->
    join1b(RelativeName, <<>>, [$: | Rest], win32);
join1b(<<>>, RelativeName, [$/, $/ | Result], win32) ->
    join1b(RelativeName, <<>>, [$/, $/ | Result], win32);
join1b(<<>>, RelativeName, [$/ | Result], OsType) ->
    join1b(RelativeName, <<>>, [$/ | Result], OsType);
join1b(<<>>, RelativeName, [$., $/ | Result], OsType) ->
    join1b(RelativeName, <<>>, [$/ | Result], OsType);
join1b(<<>>, RelativeName, Result, OsType) ->
    join1b(RelativeName, <<>>, [$/ | Result], OsType);
join1b(<<Char,Rest/binary>>, RelativeName, Result, OsType)
    when is_integer(Char) ->
    join1b(Rest, RelativeName, [Char | Result], OsType).

maybe_remove_dirsep([$/, $:, Letter], win32) ->
    [Letter, $:, $/];
maybe_remove_dirsep([$/], _) ->
    [$/];
maybe_remove_dirsep([$/, $/], win32) ->
    [$/, $/];
maybe_remove_dirsep([$/ | Name], _) ->
    lists:reverse(Name);
maybe_remove_dirsep(Name, _) ->
    lists:reverse(Name).

-spec append(file:filename_all(), file:name_all()) ->
                file:filename_all().

append(Dir, Name) when is_binary(Dir), is_binary(Name) ->
    <<Dir/binary,$/:8,Name/binary>>;
append(Dir, Name) when is_binary(Dir) ->
    append(Dir, filename_string_to_binary(Name));
append(Dir, Name) when is_binary(Name) ->
    append(filename_string_to_binary(Dir), Name);
append(Dir, Name) ->
    Dir ++ [$/ | Name].

-spec pathtype(Path) -> absolute | relative | volumerelative
                  when Path :: file:name_all().

pathtype(Atom) when is_atom(Atom) ->
    pathtype(atom_to_list(Atom));
pathtype(Name)
    when
        is_list(Name)
        orelse
        is_binary(Name) ->
    case os:type() of
        {win32, _} ->
            win32_pathtype(Name);
        {_, _} ->
            unix_pathtype(Name)
    end.

unix_pathtype(<<$/,_/binary>>) ->
    absolute;
unix_pathtype([$/ | _]) ->
    absolute;
unix_pathtype([List | Rest]) when is_list(List) ->
    unix_pathtype(List ++ Rest);
unix_pathtype([Atom | Rest]) when is_atom(Atom) ->
    unix_pathtype(atom_to_list(Atom) ++ Rest);
unix_pathtype(_) ->
    relative.

win32_pathtype([List | Rest]) when is_list(List) ->
    win32_pathtype(List ++ Rest);
win32_pathtype([Atom | Rest]) when is_atom(Atom) ->
    win32_pathtype(atom_to_list(Atom) ++ Rest);
win32_pathtype([Char, List | Rest]) when is_list(List) ->
    win32_pathtype([Char | List ++ Rest]);
win32_pathtype(<<$/,$/,_/binary>>) ->
    absolute;
win32_pathtype(<<$\\,$/,_/binary>>) ->
    absolute;
win32_pathtype(<<$/,$\\,_/binary>>) ->
    absolute;
win32_pathtype(<<$\\,$\\,_/binary>>) ->
    absolute;
win32_pathtype(<<$/,_/binary>>) ->
    volumerelative;
win32_pathtype(<<$\\,_/binary>>) ->
    volumerelative;
win32_pathtype(<<_Letter,$:,$/,_/binary>>) ->
    absolute;
win32_pathtype(<<_Letter,$:,$\\,_/binary>>) ->
    absolute;
win32_pathtype(<<_Letter,$:,_/binary>>) ->
    volumerelative;
win32_pathtype([$/, $/ | _]) ->
    absolute;
win32_pathtype([$\\, $/ | _]) ->
    absolute;
win32_pathtype([$/, $\\ | _]) ->
    absolute;
win32_pathtype([$\\, $\\ | _]) ->
    absolute;
win32_pathtype([$/ | _]) ->
    volumerelative;
win32_pathtype([$\\ | _]) ->
    volumerelative;
win32_pathtype([C1, C2, List | Rest]) when is_list(List) ->
    pathtype([C1, C2 | List ++ Rest]);
win32_pathtype([_Letter, $:, $/ | _]) ->
    absolute;
win32_pathtype([_Letter, $:, $\\ | _]) ->
    absolute;
win32_pathtype([_Letter, $: | _]) ->
    volumerelative;
win32_pathtype(_) ->
    relative.

-spec rootname(Filename) -> file:filename_all()
                  when Filename :: file:name_all().

rootname(Name) when is_binary(Name) ->
    list_to_binary(rootname(binary_to_list(Name)));
rootname(Name0) ->
    Name = flatten(Name0),
    rootname(Name, [], [], major_os_type()).

rootname([$/ | Rest], Root, Ext, OsType) ->
    rootname(Rest, [$/] ++ Ext ++ Root, [], OsType);
rootname([$\\ | Rest], Root, Ext, win32) ->
    rootname(Rest, [$/] ++ Ext ++ Root, [], win32);
rootname([$. | Rest], [$/ | _] = Root, [], OsType) ->
    rootname(Rest, [$. | Root], [], OsType);
rootname([$. | Rest], Root, Ext, OsType) ->
    rootname(Rest, Ext ++ Root, ".", OsType);
rootname([Char | Rest], Root, [], OsType) when is_integer(Char) ->
    rootname(Rest, [Char | Root], [], OsType);
rootname([Char | Rest], Root, Ext, OsType) when is_integer(Char) ->
    rootname(Rest, Root, [Char | Ext], OsType);
rootname([], Root, _Ext, _OsType) ->
    lists:reverse(Root).

-spec rootname(Filename, Ext) -> file:filename_all()
                  when
                      Filename :: file:name_all(),
                      Ext :: file:name_all().

rootname(Name, Ext) when is_binary(Name), is_binary(Ext) ->
    list_to_binary(rootname(binary_to_list(Name), binary_to_list(Ext)));
rootname(Name, Ext) when is_binary(Name) ->
    rootname(Name, filename_string_to_binary(Ext));
rootname(Name, Ext) when is_binary(Ext) ->
    rootname(filename_string_to_binary(Name), Ext);
rootname(Name0, Ext0) ->
    Name = flatten(Name0),
    Ext = flatten(Ext0),
    rootname2(Name, Ext, [], major_os_type()).

rootname2(Ext, Ext, [$/ | _] = Result, _OsType) ->
    lists:reverse(Result, Ext);
rootname2(Ext, Ext, [$\\ | _] = Result, win32) ->
    lists:reverse(Result, Ext);
rootname2(Ext, Ext, Result, _OsType) ->
    lists:reverse(Result);
rootname2([], _Ext, Result, _OsType) ->
    lists:reverse(Result);
rootname2([Char | Rest], Ext, Result, OsType) when is_integer(Char) ->
    rootname2(Rest, Ext, [Char | Result], OsType).

-spec split(Filename) -> Components
               when
                   Filename :: file:name_all(),
                   Components :: [file:name_all()].

split(Name) when is_binary(Name) ->
    case os:type() of
        {win32, _} ->
            win32_splitb(Name);
        _ ->
            unix_splitb(Name)
    end;
split(Name0) ->
    Name = flatten(Name0),
    case os:type() of
        {win32, _} ->
            win32_split(Name);
        _ ->
            unix_split(Name)
    end.

unix_splitb(Name) ->
    L = binary:split(Name, [<<"/">>], [global]),
    LL =
        case L of
            [<<>> | Rest] when Rest =/= [] ->
                [<<"/">> | Rest];
            _ ->
                L
        end,
    [ 
     X ||
         X <- LL,
         X =/= <<>>
    ].

fix_driveletter(Letter0) ->
    if
        Letter0 >= $A, Letter0 =< $Z ->
            Letter0 + $a - $A;
        true ->
            Letter0
    end.

win32_splitb(<<Letter0,$:,Slash,Rest/binary>>)
    when
        (Slash =:= $\\
         orelse
         Slash =:= $/)
        andalso
        is_integer(Letter0)
        andalso
        ($A =< Letter0
         andalso
         Letter0 =< $Z
         orelse
         $a =< Letter0
         andalso
         Letter0 =< $z) ->
    Letter = fix_driveletter(Letter0),
    L = binary:split(Rest, [<<"/">>, <<"\\">>], [global]),
    [<<Letter,$:,$/>> |
     [ 
      X ||
          X <- L,
          X =/= <<>>
     ]];
win32_splitb(<<Letter0,$:,Rest/binary>>)
    when
        is_integer(Letter0)
        andalso
        ($A =< Letter0
         andalso
         Letter0 =< $Z
         orelse
         $a =< Letter0
         andalso
         Letter0 =< $z) ->
    Letter = fix_driveletter(Letter0),
    L = binary:split(Rest, [<<"/">>, <<"\\">>], [global]),
    [<<Letter,$:>> |
     [ 
      X ||
          X <- L,
          X =/= <<>>
     ]];
win32_splitb(<<Slash,Slash,Rest/binary>>)
    when
        Slash =:= $\\
        orelse
        Slash =:= $/ ->
    L = binary:split(Rest, [<<"/">>, <<"\\">>], [global]),
    [<<"//">> |
     [ 
      X ||
          X <- L,
          X =/= <<>>
     ]];
win32_splitb(<<Slash,Rest/binary>>)
    when
        Slash =:= $\\
        orelse
        Slash =:= $/ ->
    L = binary:split(Rest, [<<"/">>, <<"\\">>], [global]),
    [<<$/>> |
     [ 
      X ||
          X <- L,
          X =/= <<>>
     ]];
win32_splitb(Name) ->
    L = binary:split(Name, [<<"/">>, <<"\\">>], [global]),
    [ 
     X ||
         X <- L,
         X =/= <<>>
    ].

unix_split(Name) ->
    split(Name, [], unix).

win32_split([Slash, Slash | Rest])
    when
        Slash =:= $\\
        orelse
        Slash =:= $/ ->
    split(Rest, [[$/, $/]], win32);
win32_split([$\\ | Rest]) ->
    win32_split([$/ | Rest]);
win32_split([X, $\\ | Rest]) when is_integer(X) ->
    win32_split([X, $/ | Rest]);
win32_split([X, Y, $\\ | Rest]) when is_integer(X), is_integer(Y) ->
    win32_split([X, Y, $/ | Rest]);
win32_split([UcLetter, $: | Rest])
    when is_integer(UcLetter), $A =< UcLetter, UcLetter =< $Z ->
    win32_split([UcLetter + $a - $A, $: | Rest]);
win32_split([Letter, $:, $/ | Rest]) ->
    split(Rest, [], [[Letter, $:, $/]], win32);
win32_split([Letter, $: | Rest]) ->
    split(Rest, [], [[Letter, $:]], win32);
win32_split(Name) ->
    split(Name, [], win32).

split([$/ | Rest], Components, OsType) ->
    split(Rest, [], [[$/] | Components], OsType);
split([$\\ | Rest], Components, win32) ->
    split(Rest, [], [[$/] | Components], win32);
split(RelativeName, Components, OsType) ->
    split(RelativeName, [], Components, OsType).

split([$\\ | Rest], Comp, Components, win32) ->
    split([$/ | Rest], Comp, Components, win32);
split([$/ | Rest], [], Components, OsType) ->
    split(Rest, [], Components, OsType);
split([$/ | Rest], Comp, Components, OsType) ->
    split(Rest, [], [lists:reverse(Comp) | Components], OsType);
split([Char | Rest], Comp, Components, OsType) when is_integer(Char) ->
    split(Rest, [Char | Comp], Components, OsType);
split([], [], Components, _OsType) ->
    lists:reverse(Components);
split([], Comp, Components, OsType) ->
    split([], [], [lists:reverse(Comp) | Components], OsType).

-spec nativename(Path) -> file:filename_all()
                    when Path :: file:name_all().

nativename(Name0) ->
    Name = join([Name0]),
    case os:type() of
        {win32, _} ->
            win32_nativename(Name);
        _ ->
            Name
    end.

win32_nativename(Name) when is_binary(Name) ->
    binary:replace(Name, <<"/">>, <<"\\">>, [global]);
win32_nativename([$/ | Rest]) ->
    [$\\ | win32_nativename(Rest)];
win32_nativename([C | Rest]) ->
    [C | win32_nativename(Rest)];
win32_nativename([]) ->
    [].

separators() ->
    case os:type() of
        {win32, _} ->
            {$\\, $:};
        _ ->
            {false, false}
    end.

major_os_type() ->
    {OsT, _} = os:type(),
    OsT.

-spec flatten(Filename) -> file:filename_all()
                 when Filename :: file:name_all().

flatten(Bin) when is_binary(Bin) ->
    Bin;
flatten(List) ->
    do_flatten(List, []).

do_flatten([H | T], Tail) when is_list(H) ->
    do_flatten(H, do_flatten(T, Tail));
do_flatten([H | T], Tail) when is_atom(H) ->
    atom_to_list(H) ++ do_flatten(T, Tail);
do_flatten([H | T], Tail) ->
    [H | do_flatten(T, Tail)];
do_flatten([], Tail) ->
    Tail;
do_flatten(Atom, Tail) when is_atom(Atom) ->
    atom_to_list(Atom) ++ flatten(Tail).

filename_string_to_binary(List) ->
    case
        unicode:characters_to_binary(flatten(List),
                                     unicode,
                                     file:native_name_encoding())
    of
        {error, _, _} ->
            error(badarg);
        Bin when is_binary(Bin) ->
            Bin
    end.

-type basedir_path_type() ::
          user_cache | user_config | user_data | user_log.

-type basedir_paths_type() :: site_config | site_data.

-type basedir_opts() ::
          #{author => string() | binary(),
            os => windows | darwin | linux,
            version => string() | binary()}.

-spec basedir(PathType, Application) -> file:filename_all()
                 when
                     PathType :: basedir_path_type(),
                     Application :: string() | binary();
             (PathsType, Application) -> [file:filename_all()]
                 when
                     PathsType :: basedir_paths_type(),
                     Application :: string() | binary().

basedir(Type, Application)
    when
        is_atom(Type),
        is_list(Application)
        orelse
        is_binary(Application) ->
    basedir(Type, Application, #{}).

-spec basedir(PathType, Application, Opts) -> file:filename_all()
                 when
                     PathType :: basedir_path_type(),
                     Application :: string() | binary(),
                     Opts :: basedir_opts();
             (PathsType, Application, Opts) -> [file:filename_all()]
                 when
                     PathsType :: basedir_paths_type(),
                     Application :: string() | binary(),
                     Opts :: basedir_opts().

basedir(Type, Application, Opts)
    when
        is_atom(Type),
        is_map(Opts),
        is_list(Application)
        orelse
        is_binary(Application) ->
    Os = basedir_os_from_opts(Opts),
    Name = basedir_name_from_opts(Os, Application, Opts),
    Base = basedir_from_os(Type, Os),
    case {Type, Os} of
        {user_log, linux} ->
            filename:join([Base, Name, "log"]);
        {user_log, windows} ->
            filename:join([Base, Name, "Logs"]);
        {user_cache, windows} ->
            filename:join([Base, Name, "Cache"]);
        {Type, _}
            when
                Type =:= site_config
                orelse
                Type =:= site_data ->
            [ 
             filename:join([B, Name]) ||
                 B <- Base
            ];
        _ ->
            filename:join([Base, Name])
    end.

basedir_os_from_opts(#{os := linux}) ->
    linux;
basedir_os_from_opts(#{os := windows}) ->
    windows;
basedir_os_from_opts(#{os := darwin}) ->
    darwin;
basedir_os_from_opts(#{}) ->
    basedir_os_type().

basedir_name_from_opts(windows, App,
                       #{author := Author, version := Vsn}) ->
    filename:join([Author, App, Vsn]);
basedir_name_from_opts(windows, App, #{author := Author}) ->
    filename:join([Author, App]);
basedir_name_from_opts(_, App, #{version := Vsn}) ->
    filename:join([App, Vsn]);
basedir_name_from_opts(_, App, _) ->
    App.

basedir_from_os(Type, Os) ->
    case Os of
        linux ->
            basedir_linux(Type);
        darwin ->
            basedir_darwin(Type);
        windows ->
            basedir_windows(Type)
    end.

basedir_linux(Type) ->
    case Type of
        user_data ->
            getenv("XDG_DATA_HOME", ".local/share", true);
        user_config ->
            getenv("XDG_CONFIG_HOME", ".config", true);
        user_cache ->
            getenv("XDG_CACHE_HOME", ".cache", true);
        user_log ->
            getenv("XDG_CACHE_HOME", ".cache", true);
        site_data ->
            Base =
                getenv("XDG_DATA_DIRS",
                       "/usr/local/share/:/usr/share/",
                       false),
            string:lexemes(Base, ":");
        site_config ->
            Base = getenv("XDG_CONFIG_DIRS", "/etc/xdg", false),
            string:lexemes(Base, ":")
    end.

basedir_darwin(Type) ->
    case Type of
        user_data ->
            basedir_join_home("Library/Application Support");
        user_config ->
            basedir_join_home("Library/Application Support");
        user_cache ->
            basedir_join_home("Library/Caches");
        user_log ->
            basedir_join_home("Library/Logs");
        site_data ->
            ["/Library/Application Support"];
        site_config ->
            ["/Library/Application Support"]
    end.

basedir_windows(Type) ->
    case basedir_windows_appdata() of
        noappdata ->
            case Type of
                user_data ->
                    basedir_join_home("Local");
                user_config ->
                    basedir_join_home("Roaming");
                user_cache ->
                    basedir_join_home("Local");
                user_log ->
                    basedir_join_home("Local");
                site_data ->
                    [];
                site_config ->
                    []
            end;
        {ok, AppData} ->
            case Type of
                user_data ->
                    getenv("LOCALAPPDATA", AppData);
                user_config ->
                    AppData;
                user_cache ->
                    getenv("LOCALAPPDATA", AppData);
                user_log ->
                    getenv("LOCALAPPDATA", AppData);
                site_data ->
                    [];
                site_config ->
                    []
            end
    end.

basedir_windows_appdata() ->
    case os:getenv("APPDATA") of
        Invalid
            when
                Invalid =:= false
                orelse
                Invalid =:= [] ->
            noappdata;
        Val ->
            {ok, Val}
    end.

getenv(K, Def, false) ->
    getenv(K, Def);
getenv(K, Def, true) ->
    getenv(K, basedir_join_home(Def)).

getenv(K, Def) ->
    case os:getenv(K) of
        [] ->
            Def;
        false ->
            Def;
        Val ->
            Val
    end.

basedir_join_home(Dir) ->
    case os:getenv("HOME") of
        false ->
            {ok, [[Home]]} = init:get_argument(home),
            filename:join(Home, Dir);
        Home ->
            filename:join(Home, Dir)
    end.

basedir_os_type() ->
    case os:type() of
        {unix, darwin} ->
            darwin;
        {win32, _} ->
            windows;
        _ ->
            linux
    end.

-spec validate(FileName) -> boolean() when FileName :: file:name_all().

validate(FileName) when is_binary(FileName) ->
    validate_bin(FileName);
validate(FileName) when is_list(FileName); is_atom(FileName) ->
    validate_list(FileName, file:native_name_encoding(), os:type()).

validate_list(FileName, Enc, Os) ->
    try
        true = validate_list(FileName, Enc, Os, 0) > 0
    catch
        _:_ ->
            false
    end.

validate_list([], _Enc, _Os, Chars) ->
    Chars;
validate_list(C, Enc, Os, Chars) when is_integer(C) ->
    validate_char(C, Enc, Os),
    Chars + 1;
validate_list(A, Enc, Os, Chars) when is_atom(A) ->
    validate_list(atom_to_list(A), Enc, Os, Chars);
validate_list([H | T], Enc, Os, Chars) ->
    NewChars = validate_list(H, Enc, Os, Chars),
    validate_list(T, Enc, Os, NewChars).

validate_char(C, _, _) when C < 1 ->
    throw(invalid);
validate_char(C, latin1, _) when C > 255 ->
    throw(invalid);
validate_char(C, utf8, _) when C >= 1114112 ->
    throw(invalid);
validate_char(C, utf8, {win32, _}) when C > 65535 ->
    throw(invalid);
validate_char(_C, utf8, {win32, _}) ->
    ok;
validate_char(C, utf8, _) when 55296 =< C, C =< 57343 ->
    throw(invalid);
validate_char(_, _, _) ->
    ok.

validate_bin(Bin) ->
    try
        true = validate_bin(Bin, 0) > 0
    catch
        _:_ ->
            false
    end.

validate_bin(<<>>, Bs) ->
    Bs;
validate_bin(<<0,_Rest/binary>>, _Bs) ->
    throw(invalid);
validate_bin(<<_B,Rest/binary>>, Bs) ->
    validate_bin(Rest, Bs + 1).



