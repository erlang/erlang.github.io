-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.2/src/dets.erl", 1).

-module(dets).

-compile(nowarn_deprecated_catch).

-export([all/0,
         bchunk/2,
         close/1,
         delete/2,
         delete_all_objects/1,
         delete_object/2,
         first/1,
         foldl/3,
         foldr/3,
         from_ets/2,
         info/1,
         info/2,
         init_table/2,
         init_table/3,
         insert/2,
         insert_new/2,
         is_compatible_bchunk_format/2,
         is_dets_file/1,
         lookup/2,
         match/1,
         match/2,
         match/3,
         match_delete/2,
         match_object/1,
         match_object/2,
         match_object/3,
         member/2,
         next/2,
         open_file/1,
         open_file/2,
         pid2name/1,
         repair_continuation/2,
         safe_fixtable/2,
         select/1,
         select/2,
         select/3,
         select_delete/2,
         slot/2,
         sync/1,
         table/1,
         table/2,
         to_ets/2,
         traverse/2,
         update_counter/3]).

-export([start/0,stop/0]).

-export([istart_link/1,
         init/2,
         internal_open/3,
         add_user/3,
         internal_close/1,
         remove_user/2,
         system_continue/3,
         system_terminate/4,
         system_code_change/4]).

-export([file_info/1,
         fsck/1,
         fsck/2,
         get_head_field/2,
         view/1,
         where/2,
         verbose/0,
         verbose/1]).

-export([lookup_keys/2]).

-export_type([bindings_cont/0,
              cont/0,
              object_cont/0,
              select_cont/0,
              tab_name/0]).

-compile({inline,
          [{einval, 2},
           {badarg, 2},
           {undefined, 1},
           {badarg_exit, 2},
           {lookup_reply, 2},
           {pidof, 1},
           {resp, 2}]}).

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

-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.2/src/dets.erl", 169).

-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.2/src/dets.hrl", 1).

-type access() :: read | read_write.

-type auto_save() :: infinity | non_neg_integer().

-type hash_bif() :: phash | phash2.

-type keypos() :: pos_integer().

-type no_colls() ::
          [{LogSize :: non_neg_integer(),
            NoCollections :: non_neg_integer()}].

-type no_slots() :: default | non_neg_integer().

-type tab_name() :: term().

-type type() :: bag | duplicate_bag | set.

-type update_mode() ::
          dirty | new_dirty | saved | {error, Reason :: term()}.

-record(head,{m :: non_neg_integer(),
              m2 :: non_neg_integer(),
              next :: non_neg_integer(),
              fptr :: file:fd(),
              no_objects :: non_neg_integer(),
              no_keys :: non_neg_integer(),
              maxobjsize :: undefined | non_neg_integer(),
              n,
              type :: type(),
              keypos :: keypos(),
              freelists :: undefined | tuple(),
              freelists_p :: undefined | non_neg_integer(),
              no_collections :: undefined | no_colls(),
              auto_save :: auto_save(),
              update_mode :: update_mode(),
              fixed =
                  false ::
                      false |
                      {{integer(), integer()},
                       [{pid(), non_neg_integer()}]},
              hash_bif :: hash_bif(),
              has_md5 :: boolean(),
              min_no_slots :: no_slots(),
              max_no_slots :: no_slots(),
              cache :: undefined | cache(),
              filename :: file:name(),
              access = read_write :: access(),
              ram_file = false :: boolean(),
              name :: tab_name(),
              parent :: undefined | pid(),
              server :: undefined | pid(),
              bump :: non_neg_integer(),
              base :: non_neg_integer()}).

-record(fileheader,{freelist :: non_neg_integer(),
                    fl_base :: non_neg_integer(),
                    cookie :: non_neg_integer(),
                    closed_properly :: non_neg_integer(),
                    type :: badtype | type(),
                    version :: non_neg_integer(),
                    m :: non_neg_integer(),
                    next :: non_neg_integer(),
                    keypos :: keypos(),
                    no_objects :: non_neg_integer(),
                    no_keys :: non_neg_integer(),
                    min_no_slots :: non_neg_integer(),
                    max_no_slots :: non_neg_integer(),
                    no_colls :: undefined | no_colls(),
                    hash_method :: non_neg_integer(),
                    read_md5 :: binary(),
                    has_md5 :: boolean(),
                    md5 :: binary(),
                    trailer :: non_neg_integer(),
                    eof :: non_neg_integer(),
                    n}).

-type delay() :: non_neg_integer().

-type threshold() :: non_neg_integer().

-type cache_parms() :: {Delay :: delay(), Size :: threshold()}.

-record(cache,{cache ::
                   [{Key :: term(),
                     {Seq :: non_neg_integer(), Item :: term()}}],
               csize :: non_neg_integer(),
               inserts :: non_neg_integer(),
               wrtime :: undefined | integer(),
               tsize :: threshold(),
               delay :: delay()}).

-type cache() :: #cache{}.

-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.2/src/dets.erl", 171).

-record(dets_cont,{what ::
                       undefined | bchunk | bindings | object | select,
                   no_objs :: default | pos_integer(),
                   bin :: eof | binary(),
                   alloc ::
                       binary() |
                       {From :: non_neg_integer(),
                        To :: non_neg_integer,
                        binary()},
                   tab :: tab_name(),
                   proc :: undefined | pid(),
                   match_program ::
                       true | undefined |
                       {match_spec, ets:compiled_match_spec()}}).

-record(open_args,{file :: list(),
                   type :: type(),
                   keypos :: keypos(),
                   repair :: force | boolean(),
                   min_no_slots :: no_slots(),
                   max_no_slots :: no_slots(),
                   ram_file :: boolean(),
                   delayed_write :: cache_parms(),
                   auto_save :: auto_save(),
                   access :: access(),
                   debug :: boolean()}).

-opaque bindings_cont() :: #dets_cont{}.

-opaque cont() :: #dets_cont{}.

-type match_spec() :: ets:match_spec().

-type object() :: tuple().

-opaque object_cont() :: #dets_cont{}.

-type pattern() :: atom() | tuple().

-opaque select_cont() :: #dets_cont{}.

add_user(Pid, Tab, Args) ->
    req(Pid, {add_user, Tab, Args}).

-spec all() -> [tab_name()].

all() ->
    dets_server:all().

-spec bchunk(Name, Continuation) ->
                {Continuation2, Data} |
                '$end_of_table' |
                {error, Reason}
                when
                    Name :: tab_name(),
                    Continuation :: start | cont(),
                    Continuation2 :: cont(),
                    Data :: binary() | tuple(),
                    Reason :: term().

bchunk(Tab, start) ->
    badarg(treq(Tab, {bchunk_init, Tab}), [Tab, start]);
bchunk(Tab, {dets_cont, bchunk, _, _, _, Tab, _, _} = State) ->
    badarg(treq(Tab, {bchunk, State}), [Tab, State]);
bchunk(Tab, Term) ->
    error(badarg, [Tab, Term]).

-spec close(Name) -> ok | {error, Reason}
               when Name :: tab_name(), Reason :: term().

close(Tab) ->
    case dets_server:close(Tab) of
        badarg ->
            {error, not_owner};
        Reply ->
            Reply
    end.

-spec delete(Name, Key) -> ok | {error, Reason}
                when Name :: tab_name(), Key :: term(), Reason :: term().

delete(Tab, Key) ->
    badarg(treq(Tab, {delete_key, [Key]}), [Tab, Key]).

-spec delete_all_objects(Name) -> ok | {error, Reason}
                            when Name :: tab_name(), Reason :: term().

delete_all_objects(Tab) ->
    case treq(Tab, delete_all_objects) of
        badarg ->
            error(badarg, [Tab]);
        fixed ->
            match_delete(Tab, '_');
        Reply ->
            Reply
    end.

-spec delete_object(Name, Object) -> ok | {error, Reason}
                       when
                           Name :: tab_name(),
                           Object :: object(),
                           Reason :: term().

delete_object(Tab, O) ->
    badarg(treq(Tab, {delete_object, [O]}), [Tab, O]).

fsck(Fname, _Version) ->
    fsck(Fname).

fsck(Fname) ->
    catch
        begin
            {ok, Fd, FH} = read_file_header(Fname, read, false),
            void,
            case dets_v9:check_file_header(FH, Fd) of
                {error, not_closed} ->
                    fsck(Fd, make_ref(), Fname, FH, default, default);
                {ok, _Head} ->
                    fsck(Fd, make_ref(), Fname, FH, default, default);
                Error ->
                    Error
            end
        end.

-spec first(Name) -> Key | '$end_of_table'
               when Name :: tab_name(), Key :: term().

first(Tab) ->
    badarg_exit(treq(Tab, first), [Tab]).

-spec foldr(Function, Acc0, Name) -> Acc | {error, Reason}
               when
                   Name :: tab_name(),
                   Function ::
                       fun((Object :: object(), AccIn) -> AccOut),
                   Acc0 :: term(),
                   Acc :: term(),
                   AccIn :: term(),
                   AccOut :: term(),
                   Reason :: term().

foldr(Fun, Acc, Tab) ->
    foldl(Fun, Acc, Tab).

-spec foldl(Function, Acc0, Name) -> Acc | {error, Reason}
               when
                   Name :: tab_name(),
                   Function ::
                       fun((Object :: object(), AccIn) -> AccOut),
                   Acc0 :: term(),
                   Acc :: term(),
                   AccIn :: term(),
                   AccOut :: term(),
                   Reason :: term().

foldl(Fun, Acc, Tab) ->
    Ref = make_ref(),
    badarg(do_traverse(Fun, Acc, Tab, Ref), [Fun, Acc, Tab]).

-spec from_ets(Name, EtsTab) -> ok | {error, Reason}
                  when
                      Name :: tab_name(),
                      EtsTab :: ets:table(),
                      Reason :: term().

from_ets(DTab, ETab) ->
    ets:safe_fixtable(ETab, true),
    Spec = [{'_', [], ['$_']}],
    LC = ets:select(ETab, Spec, 100),
    InitFun = from_ets_fun(LC, ETab),
    Reply = treq(DTab, {initialize, InitFun, term, default}),
    ets:safe_fixtable(ETab, false),
    case Reply of
        {thrown, Thrown} ->
            throw(Thrown);
        Else ->
            badarg(Else, [DTab, ETab])
    end.

from_ets_fun(LC, ETab) ->
    fun(close) ->
           ok;
       (read) when LC =:= '$end_of_table' ->
           end_of_input;
       (read) ->
           {L, C} = LC,
           {L, from_ets_fun(ets:select(C), ETab)}
    end.

-spec info(Name) -> InfoList | undefined
              when
                  Name :: tab_name(),
                  InfoList :: [InfoTuple],
                  InfoTuple ::
                      {file_size, non_neg_integer()} |
                      {filename, file:name()} |
                      {keypos, keypos()} |
                      {size, non_neg_integer()} |
                      {type, type()}.

info(Tab) ->
    case catch dets_server:get_pid(Tab) of
        {'EXIT', _Reason} ->
            undefined;
        Pid ->
            undefined(req(Pid, info))
    end.

-spec info(Name, Item) -> Value | undefined
              when
                  Name :: tab_name(),
                  Item ::
                      access | auto_save | bchunk_format | hash |
                      file_size | filename | keypos | memory | no_keys |
                      no_objects | no_slots | owner | ram_file |
                      safe_fixed | safe_fixed_monotonic_time | size |
                      type,
                  Value :: term().

info(Tab, owner) ->
    case catch dets_server:get_pid(Tab) of
        Pid when is_pid(Pid) ->
            Pid;
        _ ->
            undefined
    end;
info(Tab, users) ->
    case dets_server:users(Tab) of
        [] ->
            undefined;
        Users ->
            Users
    end;
info(Tab, Tag) ->
    case catch dets_server:get_pid(Tab) of
        {'EXIT', _Reason} ->
            undefined;
        Pid ->
            undefined(req(Pid, {info, Tag}))
    end.

-spec init_table(Name, InitFun) -> ok | {error, Reason}
                    when
                        Name :: tab_name(),
                        InitFun :: fun((Arg) -> Res),
                        Arg :: read | close,
                        Res ::
                            end_of_input |
                            {[object()], InitFun} |
                            {Data, InitFun} |
                            term(),
                        Reason :: term(),
                        Data :: binary() | tuple().

init_table(Tab, InitFun) ->
    init_table(Tab, InitFun, []).

-spec init_table(Name, InitFun, Options) -> ok | {error, Reason}
                    when
                        Name :: tab_name(),
                        InitFun :: fun((Arg) -> Res),
                        Arg :: read | close,
                        Res ::
                            end_of_input |
                            {[object()], InitFun} |
                            {Data, InitFun} |
                            term(),
                        Options :: Option | [Option],
                        Option ::
                            {min_no_slots, no_slots()} |
                            {format, term | bchunk},
                        Reason :: term(),
                        Data :: binary() | tuple().

init_table(Tab, InitFun, Options) when is_function(InitFun) ->
    case options(Options, [format, min_no_slots]) of
        {badarg, _} ->
            error(badarg, [Tab, InitFun, Options]);
        [Format, MinNoSlots] ->
            case treq(Tab, {initialize, InitFun, Format, MinNoSlots}) of
                {thrown, Thrown} ->
                    throw(Thrown);
                Else ->
                    badarg(Else, [Tab, InitFun, Options])
            end
    end;
init_table(Tab, InitFun, Options) ->
    error(badarg, [Tab, InitFun, Options]).

-spec insert(Name, Objects) -> ok | {error, Reason}
                when
                    Name :: tab_name(),
                    Objects :: object() | [object()],
                    Reason :: term().

insert(Tab, Objs) when is_list(Objs) ->
    badarg(treq(Tab, {insert, Objs}), [Tab, Objs]);
insert(Tab, Obj) ->
    badarg(treq(Tab, {insert, [Obj]}), [Tab, Obj]).

-spec insert_new(Name, Objects) -> boolean() | {error, Reason}
                    when
                        Name :: tab_name(),
                        Objects :: object() | [object()],
                        Reason :: term().

insert_new(Tab, Objs) when is_list(Objs) ->
    badarg(treq(Tab, {insert_new, Objs}), [Tab, Objs]);
insert_new(Tab, Obj) ->
    badarg(treq(Tab, {insert_new, [Obj]}), [Tab, Obj]).

internal_close(Pid) ->
    req(Pid, close).

internal_open(Pid, Ref, Args) ->
    req(Pid, {internal_open, Ref, Args}).

-spec is_compatible_bchunk_format(Name, BchunkFormat) -> boolean()
                                     when
                                         Name :: tab_name(),
                                         BchunkFormat :: binary().

is_compatible_bchunk_format(Tab, Term) ->
    badarg(treq(Tab, {is_compatible_bchunk_format, Term}), [Tab, Term]).

-spec is_dets_file(Filename) -> boolean() | {error, Reason}
                      when Filename :: file:name(), Reason :: term().

is_dets_file(FileName) ->
    case catch read_file_header(FileName, read, false) of
        {ok, Fd, FH} ->
            _ = file:close(Fd),
            case FH of
                {fileheader, _, _, REC0, _, _, _, _, _, _, _, _, _, _,
                 _, _, _, _, _, _, _, _} ->
                    REC0;
                REC0 ->
                    error({badrecord, REC0})
            end
            =:=
            11259375;
        {error, {tooshort, _}} ->
            false;
        {error, {not_a_dets_file, _}} ->
            false;
        Other ->
            Other
    end.

-spec lookup(Name, Key) -> Objects | {error, Reason}
                when
                    Name :: tab_name(),
                    Key :: term(),
                    Objects :: [object()],
                    Reason :: term().

lookup(Tab, Key) ->
    badarg(treq(Tab, {lookup_keys, [Key]}), [Tab, Key]).

lookup_keys(Tab, Keys) ->
    case catch lists:usort(Keys) of
        UKeys when is_list(UKeys), UKeys =/= [] ->
            badarg(treq(Tab, {lookup_keys, UKeys}), [Tab, Keys]);
        _Else ->
            error(badarg, [Tab, Keys])
    end.

-spec match(Name, Pattern) -> [Match] | {error, Reason}
               when
                   Name :: tab_name(),
                   Pattern :: pattern(),
                   Match :: [term()],
                   Reason :: term().

match(Tab, Pat) ->
    badarg(safe_match(Tab, Pat, bindings), [Tab, Pat]).

-spec match(Name, Pattern, N) ->
               {[Match], Continuation} |
               '$end_of_table' |
               {error, Reason}
               when
                   Name :: tab_name(),
                   Pattern :: pattern(),
                   N :: default | non_neg_integer(),
                   Continuation :: bindings_cont(),
                   Match :: [term()],
                   Reason :: term().

match(Tab, Pat, N) ->
    badarg(init_chunk_match(Tab, Pat, bindings, N, no_safe),
           [Tab, Pat, N]).

-spec match(Continuation) ->
               {[Match], Continuation2} |
               '$end_of_table' |
               {error, Reason}
               when
                   Continuation :: bindings_cont(),
                   Continuation2 :: bindings_cont(),
                   Match :: [term()],
                   Reason :: term().

match({dets_cont, _, _, _, _, _, _, _} = State)
    when
        (true
         orelse
         fail)
        and
        (element(2, State) =:= bindings) ->
    badarg(chunk_match(State, no_safe), [State]);
match(Term) ->
    error(badarg, [Term]).

-spec match_delete(Name, Pattern) -> ok | {error, Reason}
                      when
                          Name :: tab_name(),
                          Pattern :: pattern(),
                          Reason :: term().

match_delete(Tab, Pat) ->
    badarg(match_delete(Tab, Pat, delete), [Tab, Pat]).

match_delete(Tab, Pat, What) ->
    case compile_match_spec(What, Pat) of
        {Spec, MP} ->
            case catch dets_server:get_pid(Tab) of
                {'EXIT', _Reason} ->
                    badarg;
                Proc ->
                    R = req(Proc, {match_delete_init, MP, Spec}),
                    do_match_delete(Proc, R, What, 0)
            end;
        badarg ->
            badarg
    end.

do_match_delete(_Proc, {done, N1}, select, N) ->
    N + N1;
do_match_delete(_Proc, {done, _N1}, _What, _N) ->
    ok;
do_match_delete(Proc, {cont, State, N1}, What, N) ->
    do_match_delete(Proc,
                    req(Proc, {match_delete, State}),
                    What,
                    N + N1);
do_match_delete(_Proc, Error, _What, _N) ->
    Error.

-spec match_object(Name, Pattern) -> Objects | {error, Reason}
                      when
                          Name :: tab_name(),
                          Pattern :: pattern(),
                          Objects :: [object()],
                          Reason :: term().

match_object(Tab, Pat) ->
    badarg(safe_match(Tab, Pat, object), [Tab, Pat]).

-spec match_object(Name, Pattern, N) ->
                      {Objects, Continuation} |
                      '$end_of_table' |
                      {error, Reason}
                      when
                          Name :: tab_name(),
                          Pattern :: pattern(),
                          N :: default | non_neg_integer(),
                          Continuation :: object_cont(),
                          Objects :: [object()],
                          Reason :: term().

match_object(Tab, Pat, N) ->
    badarg(init_chunk_match(Tab, Pat, object, N, no_safe),
           [Tab, Pat, N]).

-spec match_object(Continuation) ->
                      {Objects, Continuation2} |
                      '$end_of_table' |
                      {error, Reason}
                      when
                          Continuation :: object_cont(),
                          Continuation2 :: object_cont(),
                          Objects :: [object()],
                          Reason :: term().

match_object({dets_cont, _, _, _, _, _, _, _} = State)
    when
        (true
         orelse
         fail)
        and
        (element(2, State) =:= object) ->
    badarg(chunk_match(State, no_safe), [State]);
match_object(Term) ->
    error(badarg, [Term]).

-spec member(Name, Key) -> boolean() | {error, Reason}
                when Name :: tab_name(), Key :: term(), Reason :: term().

member(Tab, Key) ->
    badarg(treq(Tab, {member, Key}), [Tab, Key]).

-spec next(Name, Key1) -> Key2 | '$end_of_table'
              when Name :: tab_name(), Key1 :: term(), Key2 :: term().

next(Tab, Key) ->
    badarg_exit(treq(Tab, {next, Key}), [Tab, Key]).

-spec open_file(Filename) -> {ok, Reference} | {error, Reason}
                   when
                       Filename :: file:name(),
                       Reference :: reference(),
                       Reason :: term().

open_file(File0) ->
    File = to_list(File0),
    case is_list(File) of
        true ->
            case dets_server:open_file(File) of
                badarg ->
                    error(dets_process_died, [File]);
                Reply ->
                    einval(Reply, [File])
            end;
        false ->
            error(badarg, [File0])
    end.

-spec open_file(Name, Args) -> {ok, Name} | {error, Reason}
                   when
                       Name :: tab_name(),
                       Args :: [OpenArg],
                       OpenArg ::
                           {access, access()} |
                           {auto_save, auto_save()} |
                           {estimated_no_objects, non_neg_integer()} |
                           {file, file:name()} |
                           {max_no_slots, no_slots()} |
                           {min_no_slots, no_slots()} |
                           {keypos, keypos()} |
                           {ram_file, boolean()} |
                           {repair, boolean() | force} |
                           {type, type()},
                       Reason :: term().

open_file(Tab, Args) when is_list(Args) ->
    case catch defaults(Tab, Args) of
        {open_args, _, _, _, _, _, _, _, _, _, _, _} = OpenArgs
            when true ->
            case dets_server:open_file(Tab, OpenArgs) of
                badarg ->
                    error(dets_process_died, [Tab, Args]);
                Reply ->
                    einval(Reply, [Tab, Args])
            end;
        _ ->
            error(badarg, [Tab, Args])
    end;
open_file(Tab, Arg) ->
    open_file(Tab, [Arg]).

-spec pid2name(Pid) -> {ok, Name} | undefined
                  when Pid :: pid(), Name :: tab_name().

pid2name(Pid) ->
    dets_server:pid2name(Pid).

remove_user(Pid, From) ->
    req(Pid, {close, From}).

-spec repair_continuation(Continuation, MatchSpec) -> Continuation2
                             when
                                 Continuation :: select_cont(),
                                 Continuation2 :: select_cont(),
                                 MatchSpec :: match_spec().

repair_continuation({dets_cont, _, _, _, _, _, _, {match_spec, B}} =
                        Cont,
                    MS) ->
    case ets:is_compiled_ms(B) of
        true ->
            Cont;
        false ->
            begin
                REC1 = {match_spec, ets:match_spec_compile(MS)},
                REC2 = Cont,
                case REC2 of
                    {dets_cont, _, _, _, _, _, _, _} ->
                        setelement(8, REC2, REC1);
                    _ ->
                        error({badrecord, REC2})
                end
            end
    end;
repair_continuation({dets_cont, _, _, _, _, _, _, _} = Cont, _MS) ->
    Cont;
repair_continuation(T, MS) ->
    error(badarg, [T, MS]).

-spec safe_fixtable(Name, Fix) -> ok
                       when Name :: tab_name(), Fix :: boolean().

safe_fixtable(Tab, Bool) when Bool; not Bool ->
    badarg(treq(Tab, {safe_fixtable, Bool}), [Tab, Bool]);
safe_fixtable(Tab, Term) ->
    error(badarg, [Tab, Term]).

-spec select(Name, MatchSpec) -> Selection | {error, Reason}
                when
                    Name :: tab_name(),
                    MatchSpec :: match_spec(),
                    Selection :: [term()],
                    Reason :: term().

select(Tab, Pat) ->
    badarg(safe_match(Tab, Pat, select), [Tab, Pat]).

-spec select(Name, MatchSpec, N) ->
                {Selection, Continuation} |
                '$end_of_table' |
                {error, Reason}
                when
                    Name :: tab_name(),
                    MatchSpec :: match_spec(),
                    N :: default | non_neg_integer(),
                    Continuation :: select_cont(),
                    Selection :: [term()],
                    Reason :: term().

select(Tab, Pat, N) ->
    badarg(init_chunk_match(Tab, Pat, select, N, no_safe),
           [Tab, Pat, N]).

-spec select(Continuation) ->
                {Selection, Continuation2} |
                '$end_of_table' |
                {error, Reason}
                when
                    Continuation :: select_cont(),
                    Continuation2 :: select_cont(),
                    Selection :: [term()],
                    Reason :: term().

select({dets_cont, _, _, _, _, _, _, _} = State)
    when
        (true
         orelse
         fail)
        and
        (element(2, State) =:= select) ->
    badarg(chunk_match(State, no_safe), [State]);
select(Term) ->
    error(badarg, [Term]).

-spec select_delete(Name, MatchSpec) -> N | {error, Reason}
                       when
                           Name :: tab_name(),
                           MatchSpec :: match_spec(),
                           N :: non_neg_integer(),
                           Reason :: term().

select_delete(Tab, Pat) ->
    badarg(match_delete(Tab, Pat, select), [Tab, Pat]).

-spec slot(Name, I) -> '$end_of_table' | Objects | {error, Reason}
              when
                  Name :: tab_name(),
                  I :: non_neg_integer(),
                  Objects :: [object()],
                  Reason :: term().

slot(Tab, Slot) when is_integer(Slot), Slot >= 0 ->
    badarg(treq(Tab, {slot, Slot}), [Tab, Slot]);
slot(Tab, Term) ->
    error(badarg, [Tab, Term]).

start() ->
    dets_server:start().

stop() ->
    dets_server:stop().

istart_link(Server) ->
    {ok, proc_lib:spawn_link(dets, init, [self(), Server])}.

-spec sync(Name) -> ok | {error, Reason}
              when Name :: tab_name(), Reason :: term().

sync(Tab) ->
    badarg(treq(Tab, sync), [Tab]).

-spec table(Name) -> QueryHandle
               when
                   Name :: tab_name(), QueryHandle :: qlc:query_handle().

table(Tab) ->
    table(Tab, []).

-spec table(Name, Options) -> QueryHandle
               when
                   Name :: tab_name(),
                   Options :: Option | [Option],
                   Option ::
                       {n_objects, Limit} | {traverse, TraverseMethod},
                   Limit :: default | pos_integer(),
                   TraverseMethod ::
                       first_next | select | {select, match_spec()},
                   QueryHandle :: qlc:query_handle().

table(Tab, Opts) ->
    case options(Opts, [traverse, n_objects]) of
        {badarg, _} ->
            error(badarg, [Tab, Opts]);
        [Traverse, NObjs] ->
            TF =
                case Traverse of
                    first_next ->
                        fun() ->
                               qlc_next(Tab, first(Tab))
                        end;
                    select ->
                        fun(MS) ->
                               qlc_select(select(Tab, MS, NObjs))
                        end;
                    {select, MS} ->
                        fun() ->
                               qlc_select(select(Tab, MS, NObjs))
                        end
                end,
            PreFun =
                fun(_) ->
                       safe_fixtable(Tab, true)
                end,
            PostFun =
                fun() ->
                       safe_fixtable(Tab, false)
                end,
            InfoFun =
                fun(Tag) ->
                       table_info(Tab, Tag)
                end,
            LookupFun =
                case Traverse of
                    {select, _MS} ->
                        undefined;
                    _ ->
                        fun(_KeyPos, [K]) ->
                               lookup(Tab, K);
                           (_KeyPos, Ks) ->
                               lookup_keys(Tab, Ks)
                        end
                end,
            FormatFun =
                fun({all, _NElements, _ElementFun}) ->
                       As =
                           [Tab |
                            [ 
                             Opts ||
                                 _ <- [[]],
                                 Opts =/= []
                            ]],
                       {dets, table, As};
                   ({match_spec, MS}) ->
                       {dets, table,
                        [Tab,
                         [{traverse, {select, MS}} | listify(Opts)]]};
                   ({lookup, _KeyPos, [Value], _NElements, ElementFun}) ->
                       io_lib:format("~w:lookup(~w, ~w)",
                                     [dets, Tab, ElementFun(Value)]);
                   ({lookup, _KeyPos, Values, _NElements, ElementFun}) ->
                       Vals =
                           [ 
                            ElementFun(V) ||
                                V <- Values
                           ],
                       io_lib:format("lists:flatmap(fun(V) -> ~w:lookup"
                                     "(~w, V) end, ~w)",
                                     [dets, Tab, Vals])
                end,
            qlc:table(TF,
                      [{pre_fun, PreFun},
                       {post_fun, PostFun},
                       {info_fun, InfoFun},
                       {format_fun, FormatFun},
                       {key_equality, '=:='},
                       {lookup_fun, LookupFun}])
    end.

qlc_next(_Tab, '$end_of_table') ->
    [];
qlc_next(Tab, Key) ->
    case lookup(Tab, Key) of
        Objects when is_list(Objects) ->
            Objects
            ++
            fun() ->
                   qlc_next(Tab, next(Tab, Key))
            end;
        Error ->
            exit(Error)
    end.

qlc_select('$end_of_table') ->
    [];
qlc_select({Objects, Cont}) when is_list(Objects) ->
    Objects
    ++
    fun() ->
           qlc_select(select(Cont))
    end;
qlc_select(Error) ->
    Error.

table_info(Tab, num_of_objects) ->
    info(Tab, size);
table_info(Tab, keypos) ->
    info(Tab, keypos);
table_info(Tab, is_unique_objects) ->
    info(Tab, type) =/= duplicate_bag;
table_info(_Tab, _) ->
    undefined.

-spec to_ets(Name, EtsTab) -> EtsTab | {error, Reason}
                when
                    Name :: tab_name(),
                    EtsTab :: ets:table(),
                    Reason :: term().

to_ets(DTab, ETab) ->
    case ets:info(ETab, protection) of
        undefined ->
            error(badarg, [DTab, ETab]);
        _ ->
            Fun =
                fun(X, T) ->
                       true = ets:insert(T, X),
                       T
                end,
            foldl(Fun, ETab, DTab)
    end.

-spec traverse(Name, Fun) -> Return | {error, Reason}
                  when
                      Name :: tab_name(),
                      Fun :: fun((Object) -> FunReturn),
                      Object :: object(),
                      FunReturn ::
                          continue |
                          {continue, Val} |
                          {done, Value} |
                          OtherValue,
                      Return :: [term()] | OtherValue,
                      Val :: term(),
                      Value :: term(),
                      OtherValue :: term(),
                      Reason :: term().

traverse(Tab, Fun) ->
    Ref = make_ref(),
    TFun =
        fun(O, Acc) ->
               case Fun(O) of
                   continue ->
                       Acc;
                   {continue, Val} ->
                       [Val | Acc];
                   {done, Value} ->
                       throw({Ref, [Value | Acc]});
                   Other ->
                       throw({Ref, Other})
               end
        end,
    badarg(do_traverse(TFun, [], Tab, Ref), [Tab, Fun]).

-spec update_counter(Name, Key, Increment) -> Result
                        when
                            Name :: tab_name(),
                            Key :: term(),
                            Increment :: {Pos, Incr} | Incr,
                            Pos :: integer(),
                            Incr :: integer(),
                            Result :: integer().

update_counter(Tab, Key, C) ->
    badarg(treq(Tab, {update_counter, Key, C}), [Tab, Key, C]).

verbose() ->
    verbose(true).

verbose(What) ->
    ok = dets_server:verbose(What),
    All = dets_server:all(),
    Fun =
        fun(Tab) ->
               treq(Tab, {set_verbose, What})
        end,
    lists:foreach(Fun, All),
    All.

where(Tab, Object) ->
    badarg(treq(Tab, {where, Object}), [Tab, Object]).

do_traverse(Fun, Acc, Tab, Ref) ->
    case catch dets_server:get_pid(Tab) of
        {'EXIT', _Reason} ->
            badarg;
        Proc ->
            try
                do_trav(Proc, Acc, Fun)
            catch
                throw:{Ref, Result} ->
                    Result
            end
    end.

do_trav(Proc, Acc, Fun) ->
    {Spec, MP} = compile_match_spec(object, '_'),
    case req(Proc, {match, MP, Spec, default, safe}) of
        {cont, State} ->
            do_trav(State, Proc, Acc, Fun);
        Error ->
            Error
    end.

do_trav(State, Proc, Acc, Fun) ->
    case req(Proc, {match_init, State, safe}) of
        '$end_of_table' ->
            Acc;
        {cont, {Bins, NewState}} ->
            do_trav_bins(NewState, Proc, Acc, Fun, lists:reverse(Bins));
        Error ->
            Error
    end.

do_trav_bins(State, Proc, Acc, Fun, []) ->
    do_trav(State, Proc, Acc, Fun);
do_trav_bins(State, Proc, Acc, Fun, [Bin | Bins]) ->
    case catch binary_to_term(Bin) of
        {'EXIT', _} ->
            req(Proc,
                {corrupt, dets_utils:bad_object(do_trav_bins, Bin)});
        Term ->
            NewAcc = Fun(Term, Acc),
            do_trav_bins(State, Proc, NewAcc, Fun, Bins)
    end.

safe_match(Tab, Pat, What) ->
    do_safe_match(init_chunk_match(Tab, Pat, What, default, safe), []).

do_safe_match({error, Error}, _L) ->
    {error, Error};
do_safe_match({L, C}, LL) ->
    do_safe_match(chunk_match(C, safe), L ++ LL);
do_safe_match('$end_of_table', L) ->
    L;
do_safe_match(badarg, _L) ->
    badarg.

init_chunk_match(Tab, Pat, What, N, Safe)
    when is_integer(N), N >= 0; N =:= default ->
    case compile_match_spec(What, Pat) of
        {Spec, MP} ->
            case catch dets_server:get_pid(Tab) of
                {'EXIT', _Reason} ->
                    badarg;
                Proc ->
                    case req(Proc, {match, MP, Spec, N, Safe}) of
                        {done, L} ->
                            {L,
                             {dets_cont, What, default, eof, <<>>, Tab,
                              Proc, undefined}};
                        {cont, State} ->
                            chunk_match(begin
                                            REC3 = State,
                                            case REC3 of
                                                {dets_cont, _, _, _, _,
                                                 _, _, _} ->
                                                    setelement(2,
                                                               setelement(6,
                                                                          setelement(7,
                                                                                     REC3,
                                                                                     Proc),
                                                                          Tab),
                                                               What);
                                                _ ->
                                                    error({badrecord,
                                                           REC3})
                                            end
                                        end,
                                        Safe);
                        Error ->
                            Error
                    end
            end;
        badarg ->
            badarg
    end;
init_chunk_match(_Tab, _Pat, _What, _N, _Safe) ->
    badarg.

chunk_match({dets_cont, _, _, _, _, _, Proc, _} = State, Safe) ->
    case req(Proc, {match_init, State, Safe}) of
        '$end_of_table' = Reply ->
            Reply;
        {cont, {Bins, NewState}} ->
            MP =
                case NewState of
                    {dets_cont, _, _, _, _, _, _, REC4} ->
                        REC4;
                    REC4 ->
                        error({badrecord, REC4})
                end,
            case catch do_foldl_bins(Bins, MP) of
                {'EXIT', _} ->
                    case ets:is_compiled_ms(MP) of
                        true ->
                            Bad =
                                dets_utils:bad_object(chunk_match, Bins),
                            req(Proc, {corrupt, Bad});
                        false ->
                            badarg
                    end;
                [] ->
                    chunk_match(NewState, Safe);
                Terms ->
                    {Terms, NewState}
            end;
        Error ->
            Error
    end.

do_foldl_bins(Bins, true) ->
    foldl_bins(Bins, []);
do_foldl_bins(Bins, {match_spec, MP}) ->
    foldl_bins(Bins, MP, []).

foldl_bins([], Terms) ->
    Terms;
foldl_bins([Bin | Bins], Terms) ->
    foldl_bins(Bins, [binary_to_term(Bin) | Terms]).

foldl_bins([], _MP, Terms) ->
    Terms;
foldl_bins([Bin | Bins], MP, Terms) ->
    Term = binary_to_term(Bin),
    case ets:match_spec_run([Term], MP) of
        [] ->
            foldl_bins(Bins, MP, Terms);
        [Result] ->
            foldl_bins(Bins, MP, [Result | Terms])
    end.

compile_match_spec(select, [{'_', [], ['$_']}] = Spec) ->
    {Spec, true};
compile_match_spec(select, Spec) ->
    try
        {Spec, {match_spec, ets:match_spec_compile(Spec)}}
    catch
        error:_ ->
            badarg
    end;
compile_match_spec(object, Pat) ->
    compile_match_spec(select, [{Pat, [], ['$_']}]);
compile_match_spec(bindings, Pat) ->
    compile_match_spec(select, [{Pat, [], ['$$']}]);
compile_match_spec(delete, Pat) ->
    compile_match_spec(select, [{Pat, [], [true]}]).

defaults(Tab, Args) ->
    Defaults0 =
        {open_args,
         to_list(Tab),
         set, 1, true, default, default, false,
         {3000, 14000},
         timer:minutes(3),
         read_write, false},
    Fun = fun repl/2,
    Defaults = lists:foldl(Fun, Defaults0, Args),
    true =
        is_list(case Defaults of
                    {open_args, REC5, _, _, _, _, _, _, _, _, _, _} ->
                        REC5;
                    REC5 ->
                        error({badrecord, REC5})
                end),
    is_comp_min_max(Defaults).

to_list(T) when is_atom(T) ->
    atom_to_list(T);
to_list(T) ->
    T.

repl({access, A}, Defs) ->
    mem(A, [read, read_write]),
    begin
        REC6 = Defs,
        case REC6 of
            {open_args, _, _, _, _, _, _, _, _, _, _, _} ->
                setelement(11, REC6, A);
            _ ->
                error({badrecord, REC6})
        end
    end;
repl({auto_save, Int}, Defs) when is_integer(Int), Int >= 0 ->
    begin
        REC7 = Defs,
        case REC7 of
            {open_args, _, _, _, _, _, _, _, _, _, _, _} ->
                setelement(10, REC7, Int);
            _ ->
                error({badrecord, REC7})
        end
    end;
repl({auto_save, infinity}, Defs) ->
    begin
        REC8 = Defs,
        case REC8 of
            {open_args, _, _, _, _, _, _, _, _, _, _, _} ->
                setelement(10, REC8, infinity);
            _ ->
                error({badrecord, REC8})
        end
    end;
repl({cache_size, Int}, Defs) when is_integer(Int), Int >= 0 ->
    Defs;
repl({cache_size, infinity}, Defs) ->
    Defs;
repl({delayed_write, default}, Defs) ->
    begin
        REC9 = Defs,
        case REC9 of
            {open_args, _, _, _, _, _, _, _, _, _, _, _} ->
                setelement(9, REC9, {3000, 14000});
            _ ->
                error({badrecord, REC9})
        end
    end;
repl({delayed_write, {Delay, Size} = C}, Defs)
    when is_integer(Delay), Delay >= 0, is_integer(Size), Size >= 0 ->
    begin
        REC10 = Defs,
        case REC10 of
            {open_args, _, _, _, _, _, _, _, _, _, _, _} ->
                setelement(9, REC10, C);
            _ ->
                error({badrecord, REC10})
        end
    end;
repl({estimated_no_objects, I}, Defs) ->
    repl({min_no_slots, I}, Defs);
repl({file, File}, Defs) ->
    begin
        REC11 = to_list(File),
        REC12 = Defs,
        case REC12 of
            {open_args, _, _, _, _, _, _, _, _, _, _, _} ->
                setelement(2, REC12, REC11);
            _ ->
                error({badrecord, REC12})
        end
    end;
repl({keypos, P}, Defs) when is_integer(P), P > 0 ->
    begin
        REC13 = Defs,
        case REC13 of
            {open_args, _, _, _, _, _, _, _, _, _, _, _} ->
                setelement(4, REC13, P);
            _ ->
                error({badrecord, REC13})
        end
    end;
repl({max_no_slots, I}, Defs) ->
    MaxSlots = is_max_no_slots(I),
    begin
        REC14 = Defs,
        case REC14 of
            {open_args, _, _, _, _, _, _, _, _, _, _, _} ->
                setelement(7, REC14, MaxSlots);
            _ ->
                error({badrecord, REC14})
        end
    end;
repl({min_no_slots, I}, Defs) ->
    MinSlots = is_min_no_slots(I),
    begin
        REC15 = Defs,
        case REC15 of
            {open_args, _, _, _, _, _, _, _, _, _, _, _} ->
                setelement(6, REC15, MinSlots);
            _ ->
                error({badrecord, REC15})
        end
    end;
repl({ram_file, Bool}, Defs) ->
    mem(Bool, [true, false]),
    begin
        REC16 = Defs,
        case REC16 of
            {open_args, _, _, _, _, _, _, _, _, _, _, _} ->
                setelement(8, REC16, Bool);
            _ ->
                error({badrecord, REC16})
        end
    end;
repl({repair, T}, Defs) ->
    mem(T, [true, false, force]),
    begin
        REC17 = Defs,
        case REC17 of
            {open_args, _, _, _, _, _, _, _, _, _, _, _} ->
                setelement(5, REC17, T);
            _ ->
                error({badrecord, REC17})
        end
    end;
repl({type, T}, Defs) ->
    mem(T, [set, bag, duplicate_bag]),
    begin
        REC18 = Defs,
        case REC18 of
            {open_args, _, _, _, _, _, _, _, _, _, _, _} ->
                setelement(3, REC18, T);
            _ ->
                error({badrecord, REC18})
        end
    end;
repl({version, Version}, Defs) ->
    is_version(Version),
    Defs;
repl({debug, Bool}, Defs) ->
    mem(Bool, [true, false]),
    begin
        REC19 = Defs,
        case REC19 of
            {open_args, _, _, _, _, _, _, _, _, _, _, _} ->
                setelement(12, REC19, Bool);
            _ ->
                error({badrecord, REC19})
        end
    end;
repl({_, _}, _) ->
    exit(badarg).

is_min_no_slots(default) ->
    default;
is_min_no_slots(I) when is_integer(I), I >= 256 ->
    I;
is_min_no_slots(I) when is_integer(I), I >= 0 ->
    256.

is_max_no_slots(default) ->
    default;
is_max_no_slots(I) when is_integer(I), I > 0, I < 1 bsl 31 ->
    I.

is_comp_min_max(Defs) ->
    {open_args, _, _, _, _, Min, Max, _, _, _, _, _} = Defs,
    if
        Min =:= default ->
            Defs;
        Max =:= default ->
            Defs;
        true ->
            true = Min =< Max,
            Defs
    end.

is_version(default) ->
    true;
is_version(9) ->
    true.

mem(X, L) ->
    case lists:member(X, L) of
        true ->
            true;
        false ->
            exit(badarg)
    end.

options(Options, Keys) when is_list(Options) ->
    options(Options, Keys, []);
options(Option, Keys) ->
    options([Option], Keys, []).

options(Options, [Key | Keys], L) when is_list(Options) ->
    V = case lists:keysearch(Key, 1, Options) of
            {value, {format, Format}}
                when Format =:= term; Format =:= bchunk ->
                {ok, Format};
            {value, {min_no_slots, I}} ->
                case catch is_min_no_slots(I) of
                    {'EXIT', _} ->
                        badarg;
                    MinNoSlots ->
                        {ok, MinNoSlots}
                end;
            {value, {n_objects, default}} ->
                {ok, default_option(Key)};
            {value, {n_objects, NObjs}}
                when is_integer(NObjs), NObjs >= 1 ->
                {ok, NObjs};
            {value, {traverse, select}} ->
                {ok, select};
            {value, {traverse, {select, MS}}} ->
                {ok, {select, MS}};
            {value, {traverse, first_next}} ->
                {ok, first_next};
            {value, {Key, _}} ->
                badarg;
            false ->
                Default = default_option(Key),
                {ok, Default}
        end,
    case V of
        badarg ->
            {badarg, Key};
        {ok, Value} ->
            NewOptions = lists:keydelete(Key, 1, Options),
            options(NewOptions, Keys, [Value | L])
    end;
options([], [], L) ->
    lists:reverse(L);
options(Options, _, _L) ->
    {badarg, Options}.

default_option(format) ->
    term;
default_option(min_no_slots) ->
    default;
default_option(traverse) ->
    select;
default_option(n_objects) ->
    default.

listify(L) when is_list(L) ->
    L;
listify(T) ->
    [T].

treq(Tab, R) ->
    case catch dets_server:get_pid(Tab) of
        Pid when is_pid(Pid) ->
            req(Pid, R);
        _ ->
            badarg
    end.

req(Proc, R) ->
    Ref = monitor(process, Proc),
    Proc ! {'$dets_call', {self(), Ref}, R},
    receive
        {'DOWN', Ref, process, Proc, _Info} ->
            badarg;
        {Ref, Reply} ->
            demonitor(Ref, [flush]),
            Reply
    end.

pidof({Pid, _Tag}) ->
    Pid.

resp({Pid, Tag} = _From, Message) ->
    Pid ! {Tag, Message},
    ok.

einval({error, {file_error, _, einval}}, A) ->
    error(badarg, A);
einval({error, {file_error, _, badarg}}, A) ->
    error(badarg, A);
einval(Reply, _A) ->
    Reply.

badarg(badarg, A) ->
    error(badarg, A);
badarg(Reply, _A) ->
    Reply.

undefined(badarg) ->
    undefined;
undefined(Reply) ->
    Reply.

badarg_exit(badarg, A) ->
    error(badarg, A);
badarg_exit({ok, Reply}, _A) ->
    Reply;
badarg_exit(Reply, _A) ->
    exit(Reply).

init(Parent, Server) ->
    process_flag(trap_exit, true),
    receive
        {'$dets_call', From, {internal_open, Ref, Args} = Op} ->
            try do_internal_open(Parent, Server, From, Ref, Args) of
                Head ->
                    open_file_loop(Head, 0)
            catch
                exit:normal ->
                    exit(normal);
                _:Bad:Stacktrace ->
                    bug_found(no_name, Op, Bad, Stacktrace, From),
                    exit(Bad)
            end
    end.

open_file_loop({head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                _, _, _, _, _, _, _, _, _, _, _, _} =
                   Head,
               N)
    when
        (true
         orelse
         fail)
        and
        (element(1, element(16, Head)) =:= error) ->
    open_file_loop2(Head, N);
open_file_loop(Head, N) ->
    receive
        {'$dets_call', From, {match_init, _State, _Safe} = Op} ->
            do_apply_op(Op, From, Head, N);
        {'$dets_call', From, {bchunk, _State} = Op} ->
            do_apply_op(Op, From, Head, N);
        {'$dets_call', From, {next, _Key} = Op} ->
            do_apply_op(Op, From, Head, N);
        {'$dets_call', From, {match_delete_init, _MP, _Spec} = Op} ->
            do_apply_op(Op, From, Head, N);
        {'EXIT', Pid, Reason}
            when
                (is_record(Head, head, 30)
                 orelse
                 fail)
                and
                (Pid =:= element(27, Head)) ->
            _NewHead = do_stop(Head),
            exit(Reason);
        {'EXIT', Pid, Reason}
            when
                (is_record(Head, head, 30)
                 orelse
                 fail)
                and
                (Pid =:= element(28, Head)) ->
            _NewHead = do_stop(Head),
            exit(Reason);
        {'EXIT', Pid, _Reason} ->
            H2 = remove_fix(Head, Pid, close),
            open_file_loop(H2, N);
        {system, From, Req} ->
            sys:handle_system_msg(Req, From,
                                  case Head of
                                      {head, _, _, _, _, _, _, _, _, _,
                                       _, _, _, _, _, _, _, _, _, _, _,
                                       _, _, _, _, _, REC20, _, _, _} ->
                                          REC20;
                                      REC20 ->
                                          error({badrecord, REC20})
                                  end,
                                  dets, [], Head)
    after
        0 -> open_file_loop2(Head, N)
    end.

open_file_loop2(Head, N) ->
    receive
        {'$dets_call', From, Op} ->
            do_apply_op(Op, From, Head, N);
        {'EXIT', Pid, Reason}
            when
                (is_record(Head, head, 30)
                 orelse
                 fail)
                and
                (Pid =:= element(27, Head)) ->
            _NewHead = do_stop(Head),
            exit(Reason);
        {'EXIT', Pid, Reason}
            when
                (is_record(Head, head, 30)
                 orelse
                 fail)
                and
                (Pid =:= element(28, Head)) ->
            _NewHead = do_stop(Head),
            exit(Reason);
        {'EXIT', Pid, _Reason} ->
            H2 = remove_fix(Head, Pid, close),
            open_file_loop(H2, N);
        {system, From, Req} ->
            sys:handle_system_msg(Req, From,
                                  case Head of
                                      {head, _, _, _, _, _, _, _, _, _,
                                       _, _, _, _, _, _, _, _, _, _, _,
                                       _, _, _, _, _, REC21, _, _, _} ->
                                          REC21;
                                      REC21 ->
                                          error({badrecord, REC21})
                                  end,
                                  dets, [], Head);
        Message ->
            error_logger:format("** dets: unexpected message(ignored): "
                                "~tw~n",
                                [Message]),
            open_file_loop(Head, N)
    end.

do_apply_op(Op, From, Head, N) ->
    try apply_op(Op, From, Head, N) of
        ok ->
            open_file_loop(Head, N);
        {N2,
         {head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
          _, _, _, _, _, _, _, _, _, _} =
             H2}
            when true, is_integer(N2) ->
            open_file_loop(H2, N2);
        {head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
         _, _, _, _, _, _, _, _, _, _} =
            H2
            when true ->
            open_file_loop(H2, N);
        {{more, From1, Op1, N1}, NewHead} ->
            do_apply_op(Op1, From1, NewHead, N1)
    catch
        exit:normal ->
            exit(normal);
        _:Bad:Stacktrace ->
            bug_found(case Head of
                          {head, _, _, _, _, _, _, _, _, _, _, _, _, _,
                           _, _, _, _, _, _, _, _, _, _, _, REC22, _, _,
                           _, _} ->
                              REC22;
                          REC22 ->
                              error({badrecord, REC22})
                      end,
                      Op, Bad, Stacktrace, From),
            open_file_loop(Head, N)
    end.

apply_op(Op, From, Head, N) ->
    case Op of
        {add_user, Tab, OpenArgs} ->
            {open_args, Fname, Type, Keypos, _, _, _, Ram, _, _, Access,
             _} =
                OpenArgs,
            Res =
                if
                    (is_record(Head, head, 30)
                     orelse
                     fail)
                    and
                    (Tab =:= element(26, Head)),
                    element(11, Head) =:= Keypos,
                    element(10, Head) =:= Type,
                    element(25, Head) =:= Ram,
                    element(24, Head) =:= Access,
                    Fname =:= element(23, Head) ->
                        ok;
                    true ->
                        err({error, incompatible_arguments})
                end,
            resp(From, Res),
            ok;
        auto_save ->
            case
                case Head of
                    {head, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                     REC23, _, _, _, _, _, _, _, _, _, _, _, _, _, _} ->
                        REC23;
                    REC23 ->
                        error({badrecord, REC23})
                end
            of
                saved ->
                    Head;
                {error, _Reason} ->
                    Head;
                _Dirty when N =:= 0 ->
                    dets_utils:vformat("** dets: Auto save of ~tp\n",
                                       [case Head of
                                            {head, _, _, _, _, _, _, _,
                                             _, _, _, _, _, _, _, _, _,
                                             _, _, _, _, _, _, _, _,
                                             REC24, _, _, _, _} ->
                                                REC24;
                                            REC24 ->
                                                error({badrecord, REC24})
                                        end]),
                    {NewHead, _Res} = perform_save(Head, true),
                    garbage_collect(),
                    {0, NewHead};
                dirty ->
                    start_auto_save_timer(Head),
                    {0, Head}
            end;
        close ->
            resp(From, fclose(Head)),
            _NewHead = unlink_fixing_procs(Head),
            void,
            exit(normal);
        {close, Pid} ->
            NewHead = remove_fix(Head, Pid, close),
            resp(From, status(NewHead)),
            NewHead;
        {corrupt, Reason} ->
            {H2, Error} = dets_utils:corrupt_reason(Head, Reason),
            resp(From, Error),
            H2;
        {delayed_write, WrTime} ->
            delayed_write(Head, WrTime);
        info ->
            {H2, Res} = finfo(Head),
            resp(From, Res),
            H2;
        {info, Tag} ->
            {H2, Res} = finfo(Head, Tag),
            resp(From, Res),
            H2;
        {is_compatible_bchunk_format, Term} ->
            Res = test_bchunk_format(Head, Term),
            resp(From, Res),
            ok;
        {internal_open, Ref, Args} ->
            do_internal_open(case Head of
                                 {head, _, _, _, _, _, _, _, _, _, _, _,
                                  _, _, _, _, _, _, _, _, _, _, _, _, _,
                                  _, REC25, _, _, _} ->
                                     REC25;
                                 REC25 ->
                                     error({badrecord, REC25})
                             end,
                             case Head of
                                 {head, _, _, _, _, _, _, _, _, _, _, _,
                                  _, _, _, _, _, _, _, _, _, _, _, _, _,
                                  _, _, REC26, _, _} ->
                                     REC26;
                                 REC26 ->
                                     error({badrecord, REC26})
                             end,
                             From, Ref, Args);
        may_grow
            when
                (is_record(Head, head, 30)
                 orelse
                 fail)
                and
                (element(16, Head) =/= saved) ->
            if
                (is_record(Head, head, 30)
                 orelse
                 fail)
                and
                (element(16, Head) =:= dirty) ->
                    {H2, _Res} = dets_v9:may_grow(Head, 0, many_times),
                    {N + 1, H2};
                true ->
                    ok
            end;
        {set_verbose, What} ->
            set_verbose(What),
            resp(From, ok),
            ok;
        {where, Object} ->
            {H2, Res} = where_is_object(Head, Object),
            resp(From, Res),
            H2;
        _Message
            when
                (is_record(Head, head, 30)
                 orelse
                 fail)
                and
                (element(1, element(16, Head)) =:= error) ->
            resp(From, status(Head)),
            ok;
        {bchunk_init, Tab} ->
            {H2, Res} = do_bchunk_init(Head, Tab),
            resp(From, Res),
            H2;
        {bchunk, State} ->
            {H2, Res} = do_bchunk(Head, State),
            resp(From, Res),
            H2;
        delete_all_objects ->
            {H2, Res} = fdelete_all_objects(Head),
            resp(From, Res),
            garbage_collect(),
            {0, H2};
        {delete_key, _Keys}
            when
                (is_record(Head, head, 30)
                 orelse
                 fail)
                and
                (element(16, Head) =:= dirty) ->
            stream_op(Op, From, [], Head, N);
        {delete_object, Objs}
            when
                (is_record(Head, head, 30)
                 orelse
                 fail)
                and
                (element(16, Head) =:= dirty) ->
            case
                check_objects(Objs,
                              case Head of
                                  {head, _, _, _, _, _, _, _, _, _,
                                   REC27, _, _, _, _, _, _, _, _, _, _,
                                   _, _, _, _, _, _, _, _, _} ->
                                      REC27;
                                  REC27 ->
                                      error({badrecord, REC27})
                              end)
            of
                true ->
                    stream_op(Op, From, [], Head, N);
                false ->
                    resp(From, badarg),
                    ok
            end;
        first ->
            {H2, Res} = ffirst(Head),
            resp(From, Res),
            H2;
        {initialize, InitFun, Format, MinNoSlots} ->
            {H2, Res} = finit(Head, InitFun, Format, MinNoSlots),
            resp(From, Res),
            garbage_collect(),
            H2;
        {insert, Objs}
            when
                (is_record(Head, head, 30)
                 orelse
                 fail)
                and
                (element(16, Head) =:= dirty) ->
            case
                check_objects(Objs,
                              case Head of
                                  {head, _, _, _, _, _, _, _, _, _,
                                   REC28, _, _, _, _, _, _, _, _, _, _,
                                   _, _, _, _, _, _, _, _, _} ->
                                      REC28;
                                  REC28 ->
                                      error({badrecord, REC28})
                              end)
            of
                true ->
                    stream_op(Op, From, [], Head, N);
                false ->
                    resp(From, badarg),
                    ok
            end;
        {insert_new, Objs}
            when
                (is_record(Head, head, 30)
                 orelse
                 fail)
                and
                (element(16, Head) =:= dirty) ->
            {H2, Res} = finsert_new(Head, Objs),
            resp(From, Res),
            {N + 1, H2};
        {lookup_keys, _Keys} ->
            stream_op(Op, From, [], Head, N);
        {match_init, State, Safe} ->
            {H1, Res} = fmatch_init(Head, State),
            H2 =
                case Res of
                    {cont, _} ->
                        H1;
                    _ when Safe =:= no_safe ->
                        H1;
                    _ when Safe =:= safe ->
                        do_safe_fixtable(H1, pidof(From), false)
                end,
            resp(From, Res),
            H2;
        {match, MP, Spec, NObjs, Safe} ->
            {H2, Res} = fmatch(Head, MP, Spec, NObjs, Safe, From),
            resp(From, Res),
            H2;
        {member, _Key} = Op ->
            stream_op(Op, From, [], Head, N);
        {next, Key} ->
            {H2, Res} = fnext(Head, Key),
            resp(From, Res),
            H2;
        {match_delete, State}
            when
                (is_record(Head, head, 30)
                 orelse
                 fail)
                and
                (element(16, Head) =:= dirty) ->
            {H1, Res} = fmatch_delete(Head, State),
            H2 =
                case Res of
                    {cont, _S, _N} ->
                        H1;
                    _ ->
                        do_safe_fixtable(H1, pidof(From), false)
                end,
            resp(From, Res),
            {N + 1, H2};
        {match_delete_init, MP, Spec}
            when
                (is_record(Head, head, 30)
                 orelse
                 fail)
                and
                (element(16, Head) =:= dirty) ->
            {H2, Res} = fmatch_delete_init(Head, MP, Spec, From),
            resp(From, Res),
            {N + 1, H2};
        {safe_fixtable, Bool} ->
            NewHead = do_safe_fixtable(Head, pidof(From), Bool),
            resp(From, ok),
            NewHead;
        {slot, Slot} ->
            {H2, Res} = fslot(Head, Slot),
            resp(From, Res),
            H2;
        sync ->
            {NewHead, Res} = perform_save(Head, true),
            resp(From, Res),
            garbage_collect(),
            {0, NewHead};
        {update_counter, Key, Incr}
            when
                (is_record(Head, head, 30)
                 orelse
                 fail)
                and
                (element(16, Head) =:= dirty) ->
            {NewHead, Res} = do_update_counter(Head, Key, Incr),
            resp(From, Res),
            {N + 1, NewHead};
        WriteOp
            when
                (is_record(Head, head, 30)
                 orelse
                 fail)
                and
                (element(16, Head) =:= new_dirty) ->
            H2 =
                begin
                    REC29 = Head,
                    case REC29 of
                        {head, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                         _, _, _, _, _, _, _, _, _, _, _, _, _, _, _} ->
                            setelement(16, REC29, dirty);
                        _ ->
                            error({badrecord, REC29})
                    end
                end,
            apply_op(WriteOp, From, H2, 0);
        WriteOp
            when
                (is_record(Head, head, 30)
                 orelse
                 fail)
                and
                (element(24, Head) =:= read_write),
                element(16, Head) =:= saved ->
            case catch dets_v9:mark_dirty(Head) of
                ok ->
                    start_auto_save_timer(Head),
                    H2 =
                        begin
                            REC30 = Head,
                            case REC30 of
                                {head, _, _, _, _, _, _, _, _, _, _, _,
                                 _, _, _, _, _, _, _, _, _, _, _, _, _,
                                 _, _, _, _, _} ->
                                    setelement(16, REC30, dirty);
                                _ ->
                                    error({badrecord, REC30})
                            end
                        end,
                    apply_op(WriteOp, From, H2, 0);
                {{head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                  _, _, _, _, _, _, _, _, _, _, _, _, _} =
                     NewHead,
                 Error}
                    when true ->
                    resp(From, Error),
                    NewHead
            end;
        WriteOp
            when
                is_tuple(WriteOp),
                (is_record(Head, head, 30)
                 orelse
                 fail)
                and
                (element(24, Head) =:= read) ->
            Reason =
                {access_mode,
                 case Head of
                     {head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                      _, _, _, _, _, _, REC31, _, _, _, _, _, _, _} ->
                         REC31;
                     REC31 ->
                         error({badrecord, REC31})
                 end},
            resp(From, err({error, Reason})),
            ok
    end.

bug_found(Name, Op, Bad, Stacktrace, From) ->
    case dets_utils:debug_mode() of
        true ->
            error_logger:format("** dets: Bug was found when accessing "
                                "table ~tw,~n** dets: operation was ~tp"
                                " and reply was ~tw.~n** dets: Stacktra"
                                "ce: ~tw~n",
                                [Name, Op, Bad, Stacktrace]);
        false ->
            error_logger:format("** dets: Bug was found when accessing "
                                "table ~tw~n",
                                [Name])
    end,
    if
        From =/= self() ->
            resp(From, {error, {dets_bug, Name, Op, Bad}}),
            ok;
        true ->
            ok
    end.

do_internal_open(Parent, Server, From, Ref, Args) ->
    void,
    case do_open_file(Args, Parent, Server, Ref) of
        {ok, Head} ->
            resp(From, ok),
            Head;
        Error ->
            resp(From, Error),
            exit(normal)
    end.

start_auto_save_timer({head, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                       _, _, _, _, _, _, _, _, _, _, _, _, _, _, _} =
                          Head)
    when
        (true
         orelse
         fail)
        and
        (element(15, Head) =:= infinity) ->
    ok;
start_auto_save_timer(Head) ->
    Millis =
        case Head of
            {head, _, _, _, _, _, _, _, _, _, _, _, _, _, REC32, _, _,
             _, _, _, _, _, _, _, _, _, _, _, _, _} ->
                REC32;
            REC32 ->
                error({badrecord, REC32})
        end,
    _Ref =
        erlang:send_after(Millis,
                          self(),
                          {'$dets_call', self(), auto_save}),
    ok.

stream_op(Op, Pid, Pids, Head, N) ->
    {head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, M, Fxd, _, _, _, _,
     _, _, _, _, _, _, _, _, _} =
        Head,
    stream_op(Head, Pids, [], N, Pid, Op, Fxd, M).

stream_loop(Head, Pids, C, N, false = Fxd, M) ->
    receive
        {'$dets_call', From, Message} ->
            stream_op(Head, Pids, C, N, From, Message, Fxd, M)
    after
        0 -> stream_end(Head, Pids, C, N, no_more)
    end;
stream_loop(Head, Pids, C, N, _Fxd, _M) ->
    stream_end(Head, Pids, C, N, no_more).

stream_op(Head, Pids, C, N, Pid, {lookup_keys, Keys}, Fxd, M) ->
    NC = [{{lookup, Pid}, Keys} | C],
    stream_loop(Head, Pids, NC, N, Fxd, M);
stream_op(Head, Pids, C, N, Pid,
          {insert, _Objects} = Op,
          Fxd,
          dirty = M) ->
    NC = [Op | C],
    stream_loop(Head, [Pid | Pids], NC, N, Fxd, M);
stream_op(Head, Pids, C, N, Pid,
          {delete_key, _Keys} = Op,
          Fxd,
          dirty = M) ->
    NC = [Op | C],
    stream_loop(Head, [Pid | Pids], NC, N, Fxd, M);
stream_op(Head, Pids, C, N, Pid,
          {delete_object, _Os} = Op,
          Fxd,
          dirty = M) ->
    NC = [Op | C],
    stream_loop(Head, [Pid | Pids], NC, N, Fxd, M);
stream_op(Head, Pids, C, N, Pid, {member, Key}, Fxd, M) ->
    NC = [{{lookup, [Pid]}, [Key]} | C],
    stream_loop(Head, Pids, NC, N, Fxd, M);
stream_op(Head, Pids, C, N, Pid, Op, _Fxd, _M) ->
    stream_end(Head, Pids, C, N, {Pid, Op}).

stream_end(Head, Pids0, C, N, Next) ->
    case catch update_cache(Head, lists:reverse(C)) of
        {Head1, [], PwriteList} ->
            stream_end1(Pids0, Next, N, C, Head1, PwriteList);
        {Head1, Found, PwriteList} ->
            _ = lookup_replies(Found),
            stream_end1(Pids0, Next, N, C, Head1, PwriteList);
        {head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
         _, _, _, _, _, _, _, _, _, _} =
            Head1
            when true ->
            stream_end2(Pids0, Pids0, Next, N, C, Head1, ok);
        {{head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
          _, _, _, _, _, _, _, _, _, _} =
             Head1,
         Error}
            when true ->
            Fun =
                fun({{lookup, [Pid]}, _Keys}, L) ->
                       [Pid | L];
                   ({{lookup, Pid}, _Keys}, L) ->
                       [Pid | L];
                   (_, L) ->
                       L
                end,
            LPs0 = lists:foldl(Fun, [], C),
            LPs = lists:usort(lists:flatten(LPs0)),
            stream_end2(Pids0 ++ LPs, Pids0, Next, N, C, Head1, Error);
        DetsError ->
            throw(DetsError)
    end.

stream_end1(Pids, Next, N, C, Head, []) ->
    stream_end2(Pids, Pids, Next, N, C, Head, ok);
stream_end1(Pids, Next, N, C, Head, PwriteList) ->
    {Head1, PR} = catch dets_utils:pwrite(Head, PwriteList),
    stream_end2(Pids, Pids, Next, N, C, Head1, PR).

stream_end2([Pid | Pids], Ps, Next, N, C, Head, Reply) ->
    resp(Pid, Reply),
    stream_end2(Pids, Ps, Next, N + 1, C, Head, Reply);
stream_end2([], Ps, no_more, N, C, Head, _Reply) ->
    penalty(Head, Ps, C),
    {N, Head};
stream_end2([], _Ps, {From, Op}, N, _C, Head, _Reply) ->
    {{more, From, Op, N}, Head}.

penalty({head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
         _, _, _, _, _, _, _, _, _, _} =
            H,
        _Ps, _C)
    when
        (true
         orelse
         fail)
        and
        (element(17, H) =:= false) ->
    ok;
penalty(_H, _Ps, [{{lookup, _Pids}, _Keys}]) ->
    ok;
penalty({head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
         {_, [{Pid, _}]},
         _, _, _, _, _, _, _, _, _, _, _, _, _},
        [{Pid, _Tag} = _From],
        _C) ->
    ok;
penalty(_H, _Ps, _C) ->
    timer:sleep(1).

lookup_replies([{P, O}]) ->
    lookup_reply(P, O);
lookup_replies(Q) ->
    [{P, O} | L] = dets_utils:family(Q),
    lookup_replies(P, lists:append(O), L).

lookup_replies(P, O, []) ->
    lookup_reply(P, O);
lookup_replies(P, O, [{P2, O2} | L]) ->
    _ = lookup_reply(P, O),
    lookup_replies(P2, lists:append(O2), L).

lookup_reply([P], O) ->
    resp(P, O =/= []);
lookup_reply(P, O) ->
    resp(P, O).

system_continue(_Parent, _, Head) ->
    open_file_loop(Head, 0).

system_terminate(Reason, _Parent, _, Head) ->
    _NewHead = do_stop(Head),
    exit(Reason).

system_code_change(State, _Module, _OldVsn, _Extra) ->
    {ok, State}.

read_file_header(FileName, Access, RamFile) ->
    BF =
        if
            RamFile ->
                case file:read_file(FileName) of
                    {ok, B} ->
                        B;
                    Err ->
                        dets_utils:file_error(FileName, Err)
                end;
            true ->
                FileName
        end,
    {ok, Fd} = dets_utils:open(BF, open_args(Access, RamFile)),
    {ok, <<Version:32>>} = dets_utils:pread_close(Fd, FileName, 16, 4),
    if
        Version =< 8 ->
            _ = file:close(Fd),
            throw({error, {format_8_no_longer_supported, FileName}});
        Version =:= 9 ->
            dets_v9:read_file_header(Fd, FileName);
        true ->
            _ = file:close(Fd),
            throw({error, {not_a_dets_file, FileName}})
    end.

fclose(Head) ->
    {Head1, Res} = perform_save(Head, false),
    case
        case Head1 of
            {head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
             _, _, _, _, _, REC33, _, _, _, _, _} ->
                REC33;
            REC33 ->
                error({badrecord, REC33})
        end
    of
        true ->
            Res;
        false ->
            dets_utils:stop_disk_map(),
            Res2 =
                file:close(case Head1 of
                               {head, _, _, _, REC34, _, _, _, _, _, _,
                                _, _, _, _, _, _, _, _, _, _, _, _, _,
                                _, _, _, _, _, _} ->
                                   REC34;
                               REC34 ->
                                   error({badrecord, REC34})
                           end),
            if
                Res2 =:= ok ->
                    Res;
                true ->
                    Res2
            end
    end.

perform_save({head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
              _, _, _, _, _, _, _, _, _, _, _, _} =
                 Head,
             DoSync)
    when
        (true
         orelse
         fail)
        and
        (element(16, Head) =:= dirty);
        (true
         orelse
         fail)
        and
        (element(16, Head) =:= new_dirty) ->
    case
        catch
            begin
                {Head1, []} = write_cache(Head),
                {Head2, ok} = dets_v9:do_perform_save(Head1),
                ok = ensure_written(Head2, DoSync),
                {begin
                     REC35 = Head2,
                     case REC35 of
                         {head, _, _, _, _, _, _, _, _, _, _, _, _, _,
                          _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                          _} ->
                             setelement(16, REC35, saved);
                         _ ->
                             error({badrecord, REC35})
                     end
                 end,
                 ok}
            end
    of
        {{head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
          _, _, _, _, _, _, _, _, _, _} =
             NewHead,
         _} =
            Reply
            when true ->
            Reply
    end;
perform_save(Head, _DoSync) ->
    {Head, status(Head)}.

ensure_written({head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                _, _, _, _, _, _, _, _, _, _, _, _} =
                   Head,
               DoSync)
    when
        (true
         orelse
         fail)
        and
        element(25, Head) ->
    {ok, EOF} = dets_utils:position(Head, eof),
    {ok, Bin} = dets_utils:pread(Head, 0, EOF, 0),
    if
        DoSync ->
            dets_utils:write_file(Head, Bin);
        not DoSync ->
            case
                file:write_file(case Head of
                                    {head, _, _, _, _, _, _, _, _, _, _,
                                     _, _, _, _, _, _, _, _, _, _, _,
                                     REC36, _, _, _, _, _, _, _} ->
                                        REC36;
                                    REC36 ->
                                        error({badrecord, REC36})
                                end,
                                Bin)
            of
                ok ->
                    ok;
                Error ->
                    dets_utils:corrupt_file(Head, Error)
            end
    end;
ensure_written(Head, true)
    when
        not ((is_record(Head, head, 30)
              orelse
              fail)
             and
             element(25, Head)) ->
    dets_utils:sync(Head);
ensure_written(Head, false)
    when
        not ((is_record(Head, head, 30)
              orelse
              fail)
             and
             element(25, Head)) ->
    ok.

do_bchunk_init(Head, Tab) ->
    case catch write_cache(Head) of
        {H2, []} ->
            case dets_v9:table_parameters(H2) of
                undefined ->
                    {H2, {error, old_version}};
                Parms ->
                    L = dets_utils:all_allocated(H2),
                    Bin =
                        if
                            L =:= <<>> ->
                                eof;
                            true ->
                                <<>>
                        end,
                    BinParms = term_to_binary(Parms),
                    {H2,
                     {{dets_cont, bchunk, default, Bin, L, Tab,
                       self(),
                       undefined},
                      [BinParms]}}
            end;
        {{head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
          _, _, _, _, _, _, _, _, _, _} =
             NewHead,
         _} =
            HeadError
            when true ->
            HeadError
    end.

do_bchunk(Head, {dets_cont, _, _, _, _, _, Proc, _})
    when Proc =/= self() ->
    {Head, badarg};
do_bchunk(Head, {dets_cont, _, _, eof, _, _, _, _}) ->
    {Head, '$end_of_table'};
do_bchunk(Head, State) ->
    case
        dets_v9:read_bchunks(Head,
                             case State of
                                 {dets_cont, _, _, _, REC37, _, _, _} ->
                                     REC37;
                                 REC37 ->
                                     error({badrecord, REC37})
                             end)
    of
        {error, Reason} ->
            dets_utils:corrupt_reason(Head, Reason);
        {finished, Bins} ->
            {Head,
             {begin
                  REC38 = State,
                  case REC38 of
                      {dets_cont, _, _, _, _, _, _, _} ->
                          setelement(4, REC38, eof);
                      _ ->
                          error({badrecord, REC38})
                  end
              end,
              Bins}};
        {Bins, NewL} ->
            {Head,
             {begin
                  REC39 = State,
                  case REC39 of
                      {dets_cont, _, _, _, _, _, _, _} ->
                          setelement(5, REC39, NewL);
                      _ ->
                          error({badrecord, REC39})
                  end
              end,
              Bins}}
    end.

fdelete_all_objects({head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                     _, _, _, _, _, _, _, _, _, _, _, _, _, _} =
                        Head)
    when
        (true
         orelse
         fail)
        and
        (element(17, Head) =:= false) ->
    case catch do_delete_all_objects(Head) of
        {ok, NewHead} ->
            start_auto_save_timer(NewHead),
            {NewHead, ok};
        {error, Reason} ->
            dets_utils:corrupt_reason(Head, Reason)
    end;
fdelete_all_objects(Head) ->
    {Head, fixed}.

do_delete_all_objects(Head) ->
    {head, _, _, _, Fd, _, _, _, _, Type, Kp, _, _, _, Auto, _, _, _, _,
     MinSlots, MaxSlots, Cache, Fname, _, Ram, Tab, _, _, _, _} =
        Head,
    CacheSz = dets_utils:cache_size(Cache),
    ok = dets_utils:truncate(Fd, Fname, bof),
    dets_v9:initiate_file(Fd, Tab, Fname, Type, Kp, MinSlots, MaxSlots,
                          Ram, CacheSz, Auto, true).

ffirst(H) ->
    Ref = make_ref(),
    case catch {Ref, ffirst1(H)} of
        {Ref, {NH, R}} ->
            {NH, {ok, R}};
        {{head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
          _, _, _, _, _, _, _, _, _, _} =
             NH,
         R}
            when true ->
            {NH, {error, R}}
    end.

ffirst1(H) ->
    check_safe_fixtable(H),
    {NH, []} = write_cache(H),
    ffirst(NH, 0).

ffirst(H, Slot) ->
    case dets_v9:slot_objs(H, Slot) of
        '$end_of_table' ->
            {H, '$end_of_table'};
        [] ->
            ffirst(H, Slot + 1);
        [X | _] ->
            {H,
             element(case H of
                         {head, _, _, _, _, _, _, _, _, _, REC40, _, _,
                          _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                          _, _} ->
                             REC40;
                         REC40 ->
                             error({badrecord, REC40})
                     end,
                     X)}
    end.

finsert(Head, Objects) ->
    case catch update_cache(Head, Objects, insert) of
        {NewHead, []} ->
            {NewHead, ok};
        {{head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
          _, _, _, _, _, _, _, _, _, _} =
             NewHead,
         _} =
            HeadError
            when true ->
            HeadError
    end.

finsert_new(Head, Objects) ->
    KeyPos =
        case Head of
            {head, _, _, _, _, _, _, _, _, _, REC41, _, _, _, _, _, _,
             _, _, _, _, _, _, _, _, _, _, _, _, _} ->
                REC41;
            REC41 ->
                error({badrecord, REC41})
        end,
    case
        catch
            lists:map(fun(Obj) ->
                             element(KeyPos, Obj)
                      end,
                      Objects)
    of
        Keys when is_list(Keys) ->
            case catch update_cache(Head, Keys, {lookup, nopid}) of
                {Head1, PidObjs} when is_list(PidObjs) ->
                    case
                        lists:all(fun({_P, OL}) ->
                                         OL =:= []
                                  end,
                                  PidObjs)
                    of
                        true ->
                            case
                                catch
                                    update_cache(Head1, Objects, insert)
                            of
                                {NewHead, []} ->
                                    {NewHead, true};
                                {{head, _, _, _, _, _, _, _, _, _, _, _,
                                  _, _, _, _, _, _, _, _, _, _, _, _, _,
                                  _, _, _, _, _} =
                                     NewHead,
                                 Error}
                                    when true ->
                                    {NewHead, Error}
                            end;
                        false = Reply ->
                            {Head1, Reply}
                    end;
                {{head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                  _, _, _, _, _, _, _, _, _, _, _, _, _} =
                     NewHead,
                 _} =
                    HeadError
                    when true ->
                    HeadError
            end;
        _ ->
            {Head, badarg}
    end.

do_safe_fixtable(Head, Pid, true) ->
    case
        case Head of
            {head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, REC42,
             _, _, _, _, _, _, _, _, _, _, _, _, _} ->
                REC42;
            REC42 ->
                error({badrecord, REC42})
        end
    of
        false ->
            link(Pid),
            MonTime = erlang:monotonic_time(),
            TimeOffset = erlang:time_offset(),
            Fixed = {{MonTime, TimeOffset}, [{Pid, 1}]},
            Ftab = dets_utils:get_freelists(Head),
            begin
                REC43 = {Ftab, Ftab},
                REC44 = Head,
                case REC44 of
                    {head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                     _, _, _, _, _, _, _, _, _, _, _, _, _, _} ->
                        setelement(12,
                                   setelement(17, REC44, Fixed),
                                   REC43);
                    _ ->
                        error({badrecord, REC44})
                end
            end;
        {TimeStamp, Counters} ->
            case lists:keysearch(Pid, 1, Counters) of
                {value, {Pid, Counter}} ->
                    NewCounters =
                        lists:keyreplace(Pid, 1, Counters,
                                         {Pid, Counter + 1}),
                    begin
                        REC45 = {TimeStamp, NewCounters},
                        REC46 = Head,
                        case REC46 of
                            {head, _, _, _, _, _, _, _, _, _, _, _, _,
                             _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                             _, _, _} ->
                                setelement(17, REC46, REC45);
                            _ ->
                                error({badrecord, REC46})
                        end
                    end;
                false ->
                    link(Pid),
                    Fixed = {TimeStamp, [{Pid, 1} | Counters]},
                    begin
                        REC47 = Head,
                        case REC47 of
                            {head, _, _, _, _, _, _, _, _, _, _, _, _,
                             _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                             _, _, _} ->
                                setelement(17, REC47, Fixed);
                            _ ->
                                error({badrecord, REC47})
                        end
                    end
            end
    end;
do_safe_fixtable(Head, Pid, false) ->
    remove_fix(Head, Pid, false).

remove_fix(Head, Pid, How) ->
    case
        case Head of
            {head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, REC48,
             _, _, _, _, _, _, _, _, _, _, _, _, _} ->
                REC48;
            REC48 ->
                error({badrecord, REC48})
        end
    of
        false ->
            Head;
        {TimeStamp, Counters} ->
            case lists:keysearch(Pid, 1, Counters) of
                {value, {Pid, Counter}}
                    when Counter =:= 1; How =:= close ->
                    unlink(Pid),
                    case lists:keydelete(Pid, 1, Counters) of
                        [] ->
                            check_growth(Head),
                            garbage_collect(),
                            begin
                                REC49 = dets_utils:get_freelists(Head),
                                REC50 = Head,
                                case REC50 of
                                    {head, _, _, _, _, _, _, _, _, _, _,
                                     _, _, _, _, _, _, _, _, _, _, _, _,
                                     _, _, _, _, _, _, _} ->
                                        setelement(12,
                                                   setelement(17, REC50,
                                                              false),
                                                   REC49);
                                    _ ->
                                        error({badrecord, REC50})
                                end
                            end;
                        NewCounters ->
                            begin
                                REC51 = {TimeStamp, NewCounters},
                                REC52 = Head,
                                case REC52 of
                                    {head, _, _, _, _, _, _, _, _, _, _,
                                     _, _, _, _, _, _, _, _, _, _, _, _,
                                     _, _, _, _, _, _, _} ->
                                        setelement(17, REC52, REC51);
                                    _ ->
                                        error({badrecord, REC52})
                                end
                            end
                    end;
                {value, {Pid, Counter}} ->
                    NewCounters =
                        lists:keyreplace(Pid, 1, Counters,
                                         {Pid, Counter - 1}),
                    begin
                        REC53 = {TimeStamp, NewCounters},
                        REC54 = Head,
                        case REC54 of
                            {head, _, _, _, _, _, _, _, _, _, _, _, _,
                             _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                             _, _, _} ->
                                setelement(17, REC54, REC53);
                            _ ->
                                error({badrecord, REC54})
                        end
                    end;
                false ->
                    Head
            end
    end.

do_stop(Head) ->
    _NewHead = unlink_fixing_procs(Head),
    fclose(Head).

unlink_fixing_procs(Head) ->
    case
        case Head of
            {head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, REC55,
             _, _, _, _, _, _, _, _, _, _, _, _, _} ->
                REC55;
            REC55 ->
                error({badrecord, REC55})
        end
    of
        false ->
            Head;
        {_, Counters} ->
            lists:foreach(fun({Pid, _Counter}) ->
                                 unlink(Pid)
                          end,
                          Counters),
            begin
                REC56 = dets_utils:get_freelists(Head),
                REC57 = Head,
                case REC57 of
                    {head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                     _, _, _, _, _, _, _, _, _, _, _, _, _, _} ->
                        setelement(12,
                                   setelement(17, REC57, false),
                                   REC56);
                    _ ->
                        error({badrecord, REC57})
                end
            end
    end.

check_growth({head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
              _, _, _, _, _, read, _, _, _, _, _, _}) ->
    ok;
check_growth(Head) ->
    NoThings = no_things(Head),
    if
        (is_record(Head, head, 30)
         orelse
         fail)
        and
        (NoThings > element(4, Head)) ->
            _Ref =
                erlang:send_after(200,
                                  self(),
                                  {'$dets_call', self(), may_grow}),
            ok;
        true ->
            ok
    end.

finfo(H) ->
    case catch write_cache(H) of
        {H2, []} ->
            Info =
                catch
                    [{type,
                      case H2 of
                          {head, _, _, _, _, _, _, _, _, REC58, _, _, _,
                           _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                           _, _} ->
                              REC58;
                          REC58 ->
                              error({badrecord, REC58})
                      end},
                     {keypos,
                      case H2 of
                          {head, _, _, _, _, _, _, _, _, _, REC59, _, _,
                           _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                           _, _} ->
                              REC59;
                          REC59 ->
                              error({badrecord, REC59})
                      end},
                     {size,
                      case H2 of
                          {head, _, _, _, _, REC60, _, _, _, _, _, _, _,
                           _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                           _, _} ->
                              REC60;
                          REC60 ->
                              error({badrecord, REC60})
                      end},
                     {file_size,
                      file_size(case H2 of
                                    {head, _, _, _, REC61, _, _, _, _,
                                     _, _, _, _, _, _, _, _, _, _, _, _,
                                     _, _, _, _, _, _, _, _, _} ->
                                        REC61;
                                    REC61 ->
                                        error({badrecord, REC61})
                                end,
                                case H2 of
                                    {head, _, _, _, _, _, _, _, _, _, _,
                                     _, _, _, _, _, _, _, _, _, _, _,
                                     REC62, _, _, _, _, _, _, _} ->
                                        REC62;
                                    REC62 ->
                                        error({badrecord, REC62})
                                end)},
                     {filename,
                      case H2 of
                          {head, _, _, _, _, _, _, _, _, _, _, _, _, _,
                           _, _, _, _, _, _, _, _, REC63, _, _, _, _, _,
                           _, _} ->
                              REC63;
                          REC63 ->
                              error({badrecord, REC63})
                      end}],
            {H2, Info};
        {{head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
          _, _, _, _, _, _, _, _, _, _} =
             H2,
         _} =
            HeadError
            when true ->
            HeadError
    end.

finfo(H, access) ->
    {H,
     case H of
         {head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
          _, _, _, REC64, _, _, _, _, _, _} ->
             REC64;
         REC64 ->
             error({badrecord, REC64})
     end};
finfo(H, auto_save) ->
    {H,
     case H of
         {head, _, _, _, _, _, _, _, _, _, _, _, _, _, REC65, _, _, _,
          _, _, _, _, _, _, _, _, _, _, _, _} ->
             REC65;
         REC65 ->
             error({badrecord, REC65})
     end};
finfo(H, bchunk_format) ->
    case catch write_cache(H) of
        {H2, []} ->
            case dets_v9:table_parameters(H2) of
                undefined = Undef ->
                    {H2, Undef};
                Parms ->
                    {H2, term_to_binary(Parms)}
            end;
        {{head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
          _, _, _, _, _, _, _, _, _, _} =
             H2,
         _} =
            HeadError
            when true ->
            HeadError
    end;
finfo(H, delayed_write) ->
    {H,
     dets_utils:cache_size(case H of
                               {head, _, _, _, _, _, _, _, _, _, _, _,
                                _, _, _, _, _, _, _, _, _, REC66, _, _,
                                _, _, _, _, _, _} ->
                                   REC66;
                               REC66 ->
                                   error({badrecord, REC66})
                           end)};
finfo(H, filename) ->
    {H,
     case H of
         {head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
          _, _, REC67, _, _, _, _, _, _, _} ->
             REC67;
         REC67 ->
             error({badrecord, REC67})
     end};
finfo(H, file_size) ->
    case catch write_cache(H) of
        {H2, []} ->
            {H2,
             catch
                 file_size(case H of
                               {head, _, _, _, REC68, _, _, _, _, _, _,
                                _, _, _, _, _, _, _, _, _, _, _, _, _,
                                _, _, _, _, _, _} ->
                                   REC68;
                               REC68 ->
                                   error({badrecord, REC68})
                           end,
                           case H of
                               {head, _, _, _, _, _, _, _, _, _, _, _,
                                _, _, _, _, _, _, _, _, _, _, REC69, _,
                                _, _, _, _, _, _} ->
                                   REC69;
                               REC69 ->
                                   error({badrecord, REC69})
                           end)};
        {{head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
          _, _, _, _, _, _, _, _, _, _} =
             H2,
         _} =
            HeadError
            when true ->
            HeadError
    end;
finfo(H, fixed) ->
    {H,
     not (case H of
              {head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, REC70,
               _, _, _, _, _, _, _, _, _, _, _, _, _} ->
                  REC70;
              REC70 ->
                  error({badrecord, REC70})
          end
          =:=
          false)};
finfo(H, hash) ->
    {H,
     case H of
         {head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, REC71,
          _, _, _, _, _, _, _, _, _, _, _, _} ->
             REC71;
         REC71 ->
             error({badrecord, REC71})
     end};
finfo(H, keypos) ->
    {H,
     case H of
         {head, _, _, _, _, _, _, _, _, _, REC72, _, _, _, _, _, _, _,
          _, _, _, _, _, _, _, _, _, _, _, _} ->
             REC72;
         REC72 ->
             error({badrecord, REC72})
     end};
finfo(H, memory) ->
    finfo(H, file_size);
finfo(H, no_objects) ->
    finfo(H, size);
finfo(H, no_keys) ->
    case catch write_cache(H) of
        {H2, []} ->
            {H2,
             case H2 of
                 {head, _, _, _, _, _, REC73, _, _, _, _, _, _, _, _, _,
                  _, _, _, _, _, _, _, _, _, _, _, _, _, _} ->
                     REC73;
                 REC73 ->
                     error({badrecord, REC73})
             end};
        {{head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
          _, _, _, _, _, _, _, _, _, _} =
             H2,
         _} =
            HeadError
            when true ->
            HeadError
    end;
finfo(H, no_slots) ->
    {H, dets_v9:no_slots(H)};
finfo(H, pid) ->
    {H, self()};
finfo(H, ram_file) ->
    {H,
     case H of
         {head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
          _, _, _, _, REC74, _, _, _, _, _} ->
             REC74;
         REC74 ->
             error({badrecord, REC74})
     end};
finfo(H, safe_fixed) ->
    {H,
     case
         case H of
             {head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, REC75,
              _, _, _, _, _, _, _, _, _, _, _, _, _} ->
                 REC75;
             REC75 ->
                 error({badrecord, REC75})
         end
     of
         false ->
             false;
         {{FixMonTime, TimeOffset}, RefList} ->
             {make_timestamp(FixMonTime, TimeOffset), RefList}
     end};
finfo(H, safe_fixed_monotonic_time) ->
    {H,
     case
         case H of
             {head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, REC76,
              _, _, _, _, _, _, _, _, _, _, _, _, _} ->
                 REC76;
             REC76 ->
                 error({badrecord, REC76})
         end
     of
         false ->
             false;
         {{FixMonTime, _TimeOffset}, RefList} ->
             {FixMonTime, RefList}
     end};
finfo(H, size) ->
    case catch write_cache(H) of
        {H2, []} ->
            {H2,
             case H2 of
                 {head, _, _, _, _, REC77, _, _, _, _, _, _, _, _, _, _,
                  _, _, _, _, _, _, _, _, _, _, _, _, _, _} ->
                     REC77;
                 REC77 ->
                     error({badrecord, REC77})
             end};
        {{head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
          _, _, _, _, _, _, _, _, _, _} =
             H2,
         _} =
            HeadError
            when true ->
            HeadError
    end;
finfo(H, type) ->
    {H,
     case H of
         {head, _, _, _, _, _, _, _, _, REC78, _, _, _, _, _, _, _, _,
          _, _, _, _, _, _, _, _, _, _, _, _} ->
             REC78;
         REC78 ->
             error({badrecord, REC78})
     end};
finfo(H, version) ->
    {H, 9};
finfo(H, _) ->
    {H, undefined}.

file_size(Fd, FileName) ->
    {ok, Pos} = dets_utils:position(Fd, FileName, eof),
    Pos.

test_bchunk_format(_Head, undefined) ->
    false;
test_bchunk_format(Head, Term) ->
    dets_v9:try_bchunk_header(Term, Head) =/= not_ok.

do_open_file([Fname, Verbose], Parent, Server, Ref) ->
    case catch fopen2(Fname, Ref) of
        {error, {tooshort, _}} ->
            err({error, {not_a_dets_file, Fname}});
        {error, _Reason} = Error ->
            err(Error);
        {ok, Head} ->
            maybe_put(verbose, Verbose),
            {ok,
             begin
                 REC79 = Head,
                 case REC79 of
                     {head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                      _, _, _, _, _, _, _, _, _, _, _, _, _, _} ->
                         setelement(27,
                                    setelement(28, REC79, Server),
                                    Parent);
                     _ ->
                         error({badrecord, REC79})
                 end
             end};
        {'EXIT', _Reason} = Error ->
            Error;
        Bad ->
            error_logger:format("** dets: Bug was found in open_file/1,"
                                " reply was ~tw.~n",
                                [Bad]),
            {error, {dets_bug, Fname, Bad}}
    end;
do_open_file([Tab, OpenArgs, Verb], Parent, Server, _Ref) ->
    case catch fopen3(Tab, OpenArgs) of
        {error, {tooshort, _}} ->
            err({error,
                 {not_a_dets_file,
                  case OpenArgs of
                      {open_args, REC80, _, _, _, _, _, _, _, _, _, _} ->
                          REC80;
                      REC80 ->
                          error({badrecord, REC80})
                  end}});
        {error, _Reason} = Error ->
            err(Error);
        {ok, Head} ->
            maybe_put(verbose, Verb),
            {ok,
             begin
                 REC81 = Head,
                 case REC81 of
                     {head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                      _, _, _, _, _, _, _, _, _, _, _, _, _, _} ->
                         setelement(27,
                                    setelement(28, REC81, Server),
                                    Parent);
                     _ ->
                         error({badrecord, REC81})
                 end
             end};
        {'EXIT', _Reason} = Error ->
            Error;
        Bad ->
            error_logger:format("** dets: Bug was found in open_file/2,"
                                " arguments were~n** dets: ~tw and repl"
                                "y was ~tw.~n",
                                [OpenArgs, Bad]),
            {error, {dets_bug, Tab, {open_file, OpenArgs}, Bad}}
    end.

maybe_put(_, undefined) ->
    ignore;
maybe_put(K, V) ->
    put(K, V).

finit({head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
       _, _, _, _, _, _, _, _, _} =
          Head,
      InitFun, _Format, _NoSlots)
    when
        (true
         orelse
         fail)
        and
        (element(24, Head) =:= read) ->
    _ = catch InitFun(close),
    {Head,
     {error,
      {access_mode,
       case Head of
           {head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
            _, _, _, REC82, _, _, _, _, _, _, _} ->
               REC82;
           REC82 ->
               error({badrecord, REC82})
       end}}};
finit({head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
       _, _, _, _, _, _, _, _, _} =
          Head,
      InitFun, _Format, _NoSlots)
    when
        (true
         orelse
         fail)
        and
        (element(17, Head) =/= false) ->
    _ = catch InitFun(close),
    {Head,
     {error,
      {fixed_table,
       case Head of
           {head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
            _, _, _, _, _, _, REC83, _, _, _, _} ->
               REC83;
           REC83 ->
               error({badrecord, REC83})
       end}}};
finit(Head, InitFun, Format, NoSlots) ->
    case catch do_finit(Head, InitFun, Format, NoSlots) of
        {ok, NewHead} ->
            check_growth(NewHead),
            start_auto_save_timer(NewHead),
            {NewHead, ok};
        badarg ->
            {Head, badarg};
        Error ->
            dets_utils:corrupt(Head, Error)
    end.

do_finit(Head, Init, Format, NoSlots) ->
    {head, _, _, _, Fd, _, _, _, _, Type, Kp, _, _, _, Auto, UpdateMode,
     _, _, _, MinSlots0, MaxSlots, Cache, Fname, _, Ram, Tab, _, _, _,
     _} =
        Head,
    CacheSz = dets_utils:cache_size(Cache),
    {How, Head1} =
        case Format of
            term when is_integer(NoSlots), NoSlots > MaxSlots ->
                throw(badarg);
            term ->
                MinSlots = choose_no_slots(NoSlots, MinSlots0),
                if
                    UpdateMode =:= new_dirty, MinSlots =:= MinSlots0 ->
                        {general_init, Head};
                    true ->
                        ok = dets_utils:truncate(Fd, Fname, bof),
                        {ok, H} =
                            dets_v9:initiate_file(Fd, Tab, Fname, Type,
                                                  Kp, MinSlots,
                                                  MaxSlots, Ram,
                                                  CacheSz, Auto, false),
                        {general_init, H}
                end;
            bchunk ->
                ok = dets_utils:truncate(Fd, Fname, bof),
                {bchunk_init, Head}
        end,
    case How of
        bchunk_init ->
            case dets_v9:bchunk_init(Head1, Init) of
                {ok, NewHead} ->
                    {ok,
                     begin
                         REC84 = NewHead,
                         case REC84 of
                             {head, _, _, _, _, _, _, _, _, _, _, _, _,
                              _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                              _, _, _} ->
                                 setelement(16, REC84, dirty);
                             _ ->
                                 error({badrecord, REC84})
                         end
                     end};
                Error ->
                    Error
            end;
        general_init ->
            Cntrs = ets:new(dets_init, []),
            Input = dets_v9:bulk_input(Head1, Init, Cntrs),
            SlotNumbers =
                {case Head1 of
                     {head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                      _, _, _, REC85, _, _, _, _, _, _, _, _, _, _} ->
                         REC85;
                     REC85 ->
                         error({badrecord, REC85})
                 end,
                 bulk_init, MaxSlots},
            {Reply, SizeData} =
                do_sort(Head1, SlotNumbers, Input, Cntrs, Fname),
            Bulk = true,
            case Reply of
                {ok, NoDups, H1} ->
                    fsck_copy(SizeData, H1, Bulk, NoDups);
                Else ->
                    close_files(Bulk, SizeData, Head1),
                    Else
            end
    end.

flookup_keys(Head, Keys) ->
    case catch update_cache(Head, Keys, {lookup, nopid}) of
        {NewHead, [{_NoPid, Objs}]} ->
            {NewHead, Objs};
        {NewHead, L} when is_list(L) ->
            {NewHead,
             lists:flatmap(fun({_Pid, OL}) ->
                                  OL
                           end,
                           L)};
        {{head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
          _, _, _, _, _, _, _, _, _, _} =
             NewHead,
         _} =
            HeadError
            when true ->
            HeadError
    end.

fmatch_init(Head, {dets_cont, _, _, eof, _, _, _, _}) ->
    {Head, '$end_of_table'};
fmatch_init(Head, C) ->
    case scan(Head, C) of
        {scan_error, Reason} ->
            dets_utils:corrupt_reason(Head, Reason);
        {Ts, NC} ->
            {Head, {cont, {Ts, NC}}}
    end.

fmatch(Head, MP, Spec, N, Safe, From) ->
    KeyPos =
        case Head of
            {head, _, _, _, _, _, _, _, _, _, REC86, _, _, _, _, _, _,
             _, _, _, _, _, _, _, _, _, _, _, _, _} ->
                REC86;
            REC86 ->
                error({badrecord, REC86})
        end,
    case find_all_keys(Spec, KeyPos, []) of
        [] ->
            case catch write_cache(Head) of
                {Head1, []} ->
                    NewHead =
                        case Safe of
                            safe ->
                                do_safe_fixtable(Head1,
                                                 pidof(From),
                                                 true);
                            no_safe ->
                                Head1
                        end,
                    C0 = init_scan(NewHead, N),
                    {NewHead,
                     {cont,
                      begin
                          REC87 = C0,
                          case REC87 of
                              {dets_cont, _, _, _, _, _, _, _} ->
                                  setelement(8, REC87, MP);
                              _ ->
                                  error({badrecord, REC87})
                          end
                      end}};
                {{head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                  _, _, _, _, _, _, _, _, _, _, _, _, _} =
                     NewHead,
                 _} =
                    HeadError
                    when true ->
                    HeadError
            end;
        List ->
            Keys = lists:usort(List),
            {NewHead, Reply} = flookup_keys(Head, Keys),
            case Reply of
                Objs when is_list(Objs) ->
                    {match_spec, MS} = MP,
                    MatchingObjs = ets:match_spec_run(Objs, MS),
                    {NewHead, {done, MatchingObjs}};
                Error ->
                    {NewHead, Error}
            end
    end.

find_all_keys([], _, Ks) ->
    Ks;
find_all_keys([{H, _, _} | T], KeyPos, Ks) when is_tuple(H) ->
    case tuple_size(H) of
        Enough when Enough >= KeyPos ->
            Key = element(KeyPos, H),
            case contains_variable(Key) of
                true ->
                    [];
                false ->
                    find_all_keys(T, KeyPos, [Key | Ks])
            end;
        _ ->
            find_all_keys(T, KeyPos, Ks)
    end;
find_all_keys(_, _, _) ->
    [].

contains_variable('_') ->
    true;
contains_variable(A) when is_atom(A) ->
    case atom_to_list(A) of
        [$$ | T] ->
            case catch list_to_integer(T) of
                {'EXIT', _} ->
                    false;
                _ ->
                    true
            end;
        _ ->
            false
    end;
contains_variable(T) when is_tuple(T) ->
    contains_variable(tuple_to_list(T));
contains_variable([]) ->
    false;
contains_variable([H | T]) ->
    case contains_variable(H) of
        true ->
            true;
        false ->
            contains_variable(T)
    end;
contains_variable(_) ->
    false.

fmatch_delete_init(Head, MP, Spec, From) ->
    KeyPos =
        case Head of
            {head, _, _, _, _, _, _, _, _, _, REC88, _, _, _, _, _, _,
             _, _, _, _, _, _, _, _, _, _, _, _, _} ->
                REC88;
            REC88 ->
                error({badrecord, REC88})
        end,
    case
        catch
            case find_all_keys(Spec, KeyPos, []) of
                [] ->
                    do_fmatch_delete_var_keys(Head, MP, Spec, From);
                List ->
                    Keys = lists:usort(List),
                    do_fmatch_constant_keys(Head, Keys, MP)
            end
    of
        {{head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
          _, _, _, _, _, _, _, _, _, _} =
             NewHead,
         _} =
            Reply
            when true ->
            Reply
    end.

fmatch_delete(Head, C) ->
    case scan(Head, C) of
        {scan_error, Reason} ->
            dets_utils:corrupt_reason(Head, Reason);
        {[], _} ->
            {Head, {done, 0}};
        {RTs, NC} ->
            {match_spec, MP} =
                case C of
                    {dets_cont, _, _, _, _, _, _, REC89} ->
                        REC89;
                    REC89 ->
                        error({badrecord, REC89})
                end,
            case catch filter_binary_terms(RTs, MP, []) of
                {'EXIT', _} ->
                    Bad = dets_utils:bad_object(fmatch_delete, RTs),
                    dets_utils:corrupt_reason(Head, Bad);
                Terms ->
                    do_fmatch_delete(Head, Terms, NC)
            end
    end.

do_fmatch_delete_var_keys({head, _, _, _, _, _, _, _, _, _, _, _, _, _,
                           _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                           _} =
                              Head,
                          _MP,
                          [{'_', [], [true]}],
                          _From)
    when
        (true
         orelse
         fail)
        and
        (element(17, Head) =:= false) ->
    {Head1, []} = write_cache(Head),
    N = case Head1 of
            {head, _, _, _, _, REC90, _, _, _, _, _, _, _, _, _, _, _,
             _, _, _, _, _, _, _, _, _, _, _, _, _} ->
                REC90;
            REC90 ->
                error({badrecord, REC90})
        end,
    case fdelete_all_objects(Head1) of
        {NewHead, ok} ->
            {NewHead, {done, N}};
        Reply ->
            Reply
    end;
do_fmatch_delete_var_keys(Head, MP, _Spec, From) ->
    Head1 = do_safe_fixtable(Head, pidof(From), true),
    {NewHead, []} = write_cache(Head1),
    C0 = init_scan(NewHead, default),
    {NewHead,
     {cont,
      begin
          REC91 = C0,
          case REC91 of
              {dets_cont, _, _, _, _, _, _, _} ->
                  setelement(8, REC91, MP);
              _ ->
                  error({badrecord, REC91})
          end
      end,
      0}}.

do_fmatch_constant_keys(Head, Keys, {match_spec, MP}) ->
    case flookup_keys(Head, Keys) of
        {NewHead, ReadTerms} when is_list(ReadTerms) ->
            Terms = filter_terms(ReadTerms, MP, []),
            do_fmatch_delete(NewHead, Terms, fixed);
        Reply ->
            Reply
    end.

filter_binary_terms([Bin | Bins], MP, L) ->
    Term = binary_to_term(Bin),
    case ets:match_spec_run([Term], MP) of
        [true] ->
            filter_binary_terms(Bins, MP, [Term | L]);
        _ ->
            filter_binary_terms(Bins, MP, L)
    end;
filter_binary_terms([], _MP, L) ->
    L.

filter_terms([Term | Terms], MP, L) ->
    case ets:match_spec_run([Term], MP) of
        [true] ->
            filter_terms(Terms, MP, [Term | L]);
        _ ->
            filter_terms(Terms, MP, L)
    end;
filter_terms([], _MP, L) ->
    L.

do_fmatch_delete(Head, Terms, What) ->
    N = length(Terms),
    case do_delete(Head, Terms, delete_object) of
        {NewHead, ok} when What =:= fixed ->
            {NewHead, {done, N}};
        {NewHead, ok} ->
            {NewHead, {cont, What, N}};
        Reply ->
            Reply
    end.

do_delete(Head, Things, What) ->
    case catch update_cache(Head, Things, What) of
        {NewHead, []} ->
            {NewHead, ok};
        {{head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
          _, _, _, _, _, _, _, _, _, _} =
             NewHead,
         _} =
            HeadError
            when true ->
            HeadError
    end.

fnext(Head, Key) ->
    Slot = dets_v9:db_hash(Key, Head),
    Ref = make_ref(),
    case catch {Ref, fnext(Head, Key, Slot)} of
        {Ref, {H, R}} ->
            {H, {ok, R}};
        {{head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
          _, _, _, _, _, _, _, _, _, _} =
             NewHead,
         _} =
            HeadError
            when true ->
            HeadError
    end.

fnext(H, Key, Slot) ->
    {NH, []} = write_cache(H),
    case dets_v9:slot_objs(NH, Slot) of
        '$end_of_table' ->
            {NH, '$end_of_table'};
        L ->
            fnext_search(NH, Key, Slot, L)
    end.

fnext_search(H, K, Slot, L) ->
    Kp =
        case H of
            {head, _, _, _, _, _, _, _, _, _, REC92, _, _, _, _, _, _,
             _, _, _, _, _, _, _, _, _, _, _, _, _} ->
                REC92;
            REC92 ->
                error({badrecord, REC92})
        end,
    case beyond_key(K, Kp, L) of
        [] ->
            fnext_slot(H, K, Slot + 1);
        L2 ->
            {H,
             element(case H of
                         {head, _, _, _, _, _, _, _, _, _, REC93, _, _,
                          _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                          _, _} ->
                             REC93;
                         REC93 ->
                             error({badrecord, REC93})
                     end,
                     hd(L2))}
    end.

fnext_slot(H, K, Slot) ->
    case dets_v9:slot_objs(H, Slot) of
        '$end_of_table' ->
            {H, '$end_of_table'};
        [] ->
            fnext_slot(H, K, Slot + 1);
        L ->
            {H,
             element(case H of
                         {head, _, _, _, _, _, _, _, _, _, REC94, _, _,
                          _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                          _, _} ->
                             REC94;
                         REC94 ->
                             error({badrecord, REC94})
                     end,
                     hd(L))}
    end.

beyond_key(_K, _Kp, []) ->
    [];
beyond_key(K, Kp, [H | T]) ->
    case dets_utils:cmp(element(Kp, H), K) of
        0 ->
            beyond_key2(K, Kp, T);
        _ ->
            beyond_key(K, Kp, T)
    end.

beyond_key2(_K, _Kp, []) ->
    [];
beyond_key2(K, Kp, [H | T] = L) ->
    case dets_utils:cmp(element(Kp, H), K) of
        0 ->
            beyond_key2(K, Kp, T);
        _ ->
            L
    end.

fopen2(Fname, Tab) ->
    case file:read_file_info(Fname) of
        {ok, _} ->
            Acc = read_write,
            Ram = false,
            {ok, Fd, FH} = read_file_header(Fname, Acc, Ram),
            Do =
                case dets_v9:check_file_header(FH, Fd) of
                    {ok, Head1} ->
                        Head2 =
                            begin
                                REC95 = Head1,
                                case REC95 of
                                    {head, _, _, _, _, _, _, _, _, _, _,
                                     _, _, _, _, _, _, _, _, _, _, _, _,
                                     _, _, _, _, _, _, _} ->
                                        setelement(23, REC95, Fname);
                                    _ ->
                                        error({badrecord, REC95})
                                end
                            end,
                        try
                            {ok, dets_v9:init_freelist(Head2)}
                        catch
                            throw:_ ->
                                {repair,
                                 " has bad free lists, repairing ..."}
                        end;
                    {error, not_closed} ->
                        M = " not properly closed, repairing ...",
                        {repair, M};
                    Else ->
                        Else
                end,
            case Do of
                {repair, Mess} ->
                    error_logger:format("dets: file ~tp~s~n",
                                        [Fname, Mess]),
                    case fsck(Fd, Tab, Fname, FH, default, default) of
                        ok ->
                            fopen2(Fname, Tab);
                        Error ->
                            throw(Error)
                    end;
                {ok, Head} ->
                    open_final(Head, Fname, Acc, Ram,
                               {3000, 14000},
                               Tab, false);
                {error, Reason} ->
                    throw({error, {Reason, Fname}})
            end;
        Error ->
            dets_utils:file_error(Fname, Error)
    end.

fopen3(Tab, OpenArgs) ->
    FileName =
        case OpenArgs of
            {open_args, REC96, _, _, _, _, _, _, _, _, _, _} ->
                REC96;
            REC96 ->
                error({badrecord, REC96})
        end,
    case file:read_file_info(FileName) of
        {ok, _} ->
            fopen_existing_file(Tab, OpenArgs);
        Error
            when
                (is_record(OpenArgs, open_args, 12)
                 orelse
                 fail)
                and
                (element(11, OpenArgs) =:= read) ->
            dets_utils:file_error(FileName, Error);
        _Error ->
            fopen_init_file(Tab, OpenArgs)
    end.

fopen_existing_file(Tab, OpenArgs) ->
    {open_args, Fname, Type, Kp, Rep, MinSlots, MaxSlots, Ram, CacheSz,
     Auto, Acc, Debug} =
        OpenArgs,
    {ok, Fd, FH} = read_file_header(Fname, Acc, Ram),
    MinF =
        (MinSlots =:= default)
        or
        (MinSlots
         =:=
         case FH of
             {fileheader, _, _, _, _, _, _, _, _, _, _, _, REC97, _, _,
              _, _, _, _, _, _, _} ->
                 REC97;
             REC97 ->
                 error({badrecord, REC97})
         end),
    MaxF =
        (MaxSlots =:= default)
        or
        (MaxSlots
         =:=
         case FH of
             {fileheader, _, _, _, _, _, _, _, _, _, _, _, _, REC98, _,
              _, _, _, _, _, _, _} ->
                 REC98;
             REC98 ->
                 error({badrecord, REC98})
         end),
    Wh =
        case dets_v9:check_file_header(FH, Fd) of
            {ok, Head}
                when
                    Rep =:= force,
                    Acc =:= read_write,
                    (is_record(FH, fileheader, 22)
                     orelse
                     fail)
                    and
                    (element(15, FH) =/= undefined),
                    MinF, MaxF ->
                {compact, Head};
            {ok, _Head} when Rep =:= force, Acc =:= read ->
                throw({error, {access_mode, Fname}});
            {ok, _Head} when Rep =:= force ->
                M = ", repair forced.",
                {repair, M};
            {ok, Head} ->
                {final, Head};
            {error, not_closed} when Rep =:= force, Acc =:= read_write ->
                M = ", repair forced.",
                {repair, M};
            {error, not_closed} when Rep =:= true, Acc =:= read_write ->
                M = " not properly closed, repairing ...",
                {repair, M};
            {error, not_closed} when Rep =:= false ->
                throw({error, {needs_repair, Fname}});
            {error, Reason} ->
                throw({error, {Reason, Fname}})
        end,
    Do =
        case Wh of
            {Tag, Hd} when Tag =:= final; Tag =:= compact ->
                Hd1 =
                    begin
                        REC99 = Hd,
                        case REC99 of
                            {head, _, _, _, _, _, _, _, _, _, _, _, _,
                             _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                             _, _, _} ->
                                setelement(23, REC99, Fname);
                            _ ->
                                error({badrecord, REC99})
                        end
                    end,
                try
                    {Tag, dets_v9:init_freelist(Hd1)}
                catch
                    throw:_ ->
                        {repair, " has bad free lists, repairing ..."}
                end;
            Else ->
                Else
        end,
    case Do of
        _
            when
                (is_record(FH, fileheader, 22)
                 orelse
                 fail)
                and
                (element(6, FH) =/= Type) ->
            throw({error, {type_mismatch, Fname}});
        _
            when
                (is_record(FH, fileheader, 22)
                 orelse
                 fail)
                and
                (element(10, FH) =/= Kp) ->
            throw({error, {keypos_mismatch, Fname}});
        {compact, SourceHead} ->
            error_logger:format("dets: file ~tp is now compacted ...~n",
                                [Fname]),
            {ok, NewSourceHead} =
                open_final(SourceHead, Fname, read, false,
                           {3000, 14000},
                           Tab, Debug),
            case catch compact(NewSourceHead) of
                ok ->
                    garbage_collect(),
                    fopen3(Tab,
                           begin
                               REC100 = OpenArgs,
                               case REC100 of
                                   {open_args, _, _, _, _, _, _, _, _,
                                    _, _, _} ->
                                       setelement(5, REC100, false);
                                   _ ->
                                       error({badrecord, REC100})
                               end
                           end);
                _Err ->
                    _ = file:close(Fd),
                    dets_utils:stop_disk_map(),
                    error_logger:format("dets: compaction of file ~tp f"
                                        "ailed, now repairing ...~n",
                                        [Fname]),
                    {ok, Fd2, _FH} = read_file_header(Fname, Acc, Ram),
                    do_repair(Fd2, Tab, Fname, FH, MinSlots, MaxSlots,
                              OpenArgs)
            end;
        {repair, Mess} ->
            error_logger:format("dets: file ~tp~s~n", [Fname, Mess]),
            do_repair(Fd, Tab, Fname, FH, MinSlots, MaxSlots, OpenArgs);
        {final, H} ->
            H1 =
                begin
                    REC101 = H,
                    case REC101 of
                        {head, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                         _, _, _, _, _, _, _, _, _, _, _, _, _, _, _} ->
                            setelement(15, REC101, Auto);
                        _ ->
                            error({badrecord, REC101})
                    end
                end,
            open_final(H1, Fname, Acc, Ram, CacheSz, Tab, Debug)
    end.

do_repair(Fd, Tab, Fname, FH, MinSlots, MaxSlots, OpenArgs) ->
    case fsck(Fd, Tab, Fname, FH, MinSlots, MaxSlots) of
        ok ->
            garbage_collect(),
            fopen3(Tab,
                   begin
                       REC102 = OpenArgs,
                       case REC102 of
                           {open_args, _, _, _, _, _, _, _, _, _, _, _} ->
                               setelement(5, REC102, false);
                           _ ->
                               error({badrecord, REC102})
                       end
                   end);
        Error ->
            throw(Error)
    end.

open_final(Head, Fname, Acc, Ram, CacheSz, Tab, Debug) ->
    Head1 =
        begin
            REC103 = dets_utils:new_cache(CacheSz),
            REC104 = Head,
            case REC104 of
                {head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                 _, _, _, _, _, _, _, _, _, _, _, _, _} ->
                    setelement(22,
                               setelement(23,
                                          setelement(24,
                                                     setelement(25,
                                                                setelement(26,
                                                                           REC104,
                                                                           Tab),
                                                                Ram),
                                                     Acc),
                                          Fname),
                               REC103);
                _ ->
                    error({badrecord, REC104})
            end
        end,
    init_disk_map(Tab, Debug),
    dets_v9:cache_segps(case Head1 of
                            {head, _, _, _, REC105, _, _, _, _, _, _, _,
                             _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                             _, _, _, _} ->
                                REC105;
                            REC105 ->
                                error({badrecord, REC105})
                        end,
                        Fname,
                        case Head1 of
                            {head, _, _, REC106, _, _, _, _, _, _, _, _,
                             _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                             _, _, _, _} ->
                                REC106;
                            REC106 ->
                                error({badrecord, REC106})
                        end),
    check_growth(Head1),
    {ok, Head1}.

fopen_init_file(Tab, OpenArgs) ->
    {open_args, Fname, Type, Kp, _, MinSlotsArg, MaxSlotsArg, Ram,
     CacheSz, Auto, _, Debug} =
        OpenArgs,
    MinSlots = choose_no_slots(MinSlotsArg, 256),
    MaxSlots = choose_no_slots(MaxSlotsArg, 32 * 1024 * 1024),
    FileSpec =
        if
            Ram ->
                [];
            true ->
                Fname
        end,
    {ok, Fd} = dets_utils:open(FileSpec, open_args(read_write, Ram)),
    init_disk_map(Tab, Debug),
    case
        catch
            dets_v9:initiate_file(Fd, Tab, Fname, Type, Kp, MinSlots,
                                  MaxSlots, Ram, CacheSz, Auto, true)
    of
        {error, Reason} when Ram ->
            _ = file:close(Fd),
            throw({error, Reason});
        {error, Reason} ->
            _ = file:close(Fd),
            _ = file:delete(Fname),
            throw({error, Reason});
        {ok, Head} ->
            start_auto_save_timer(Head),
            {ok,
             begin
                 REC107 = Head,
                 case REC107 of
                     {head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                      _, _, _, _, _, _, _, _, _, _, _, _, _, _} ->
                         setelement(16, REC107, new_dirty);
                     _ ->
                         error({badrecord, REC107})
                 end
             end}
    end.

init_disk_map(Name, Debug) ->
    case
        Debug
        orelse
        dets_utils:debug_mode()
    of
        true ->
            dets_utils:init_disk_map(Name);
        false ->
            ok
    end.

open_args(Access, RamFile) ->
    A1 =
        case Access of
            read ->
                [];
            read_write ->
                [write]
        end,
    A2 =
        case RamFile of
            true ->
                [ram];
            false ->
                [raw]
        end,
    A1 ++ A2 ++ [binary, read].

compact(SourceHead) ->
    {head, _, _, _, SFd, _, _, _, _, Type, Kp, _, _, _, Auto, _, _, _,
     _, _, _, _, Fname, _, Ram, Tab, _, _, _, _} =
        SourceHead,
    Tmp = tempfile(Fname),
    TblParms = dets_v9:table_parameters(SourceHead),
    {ok, Fd} = dets_utils:open(Tmp, open_args(read_write, false)),
    CacheSz = {3000, 14000},
    Head =
        case
            catch
                dets_v9:prep_table_copy(Fd, Tab, Tmp, Type, Kp, Ram,
                                        CacheSz, Auto, TblParms)
        of
            {ok, H} ->
                H;
            Error ->
                _ = file:close(Fd),
                _ = file:delete(Tmp),
                throw(Error)
        end,
    case dets_v9:compact_init(SourceHead, Head, TblParms) of
        {ok, NewHead} ->
            R = case fclose(NewHead) of
                    ok ->
                        ok = file:close(SFd),
                        dets_utils:rename(Tmp, Fname);
                    E ->
                        E
                end,
            if
                R =:= ok ->
                    ok;
                true ->
                    _ = file:delete(Tmp),
                    throw(R)
            end;
        Err ->
            _ = file:close(Fd),
            _ = file:delete(Tmp),
            throw(Err)
    end.

fsck(Fd, Tab, Fname, FH, MinSlotsArg, MaxSlotsArg) ->
    {fileheader, _, _, _, _, _, _, _, _, _, _, _, MinSlotsFile,
     MaxSlotsFile, _, _, _, _, _, _, _, _} =
        FH,
    EstNoSlots0 = file_no_things(FH),
    MinSlots = choose_no_slots(MinSlotsArg, MinSlotsFile),
    MaxSlots = choose_no_slots(MaxSlotsArg, MaxSlotsFile),
    EstNoSlots = min(MaxSlots, max(MinSlots, EstNoSlots0)),
    SlotNumbers = {MinSlots, EstNoSlots, MaxSlots},
    case fsck_try(Fd, Tab, FH, Fname, SlotNumbers) of
        {try_again, BetterNoSlots} ->
            BetterSlotNumbers = {MinSlots, BetterNoSlots, MaxSlots},
            case fsck_try(Fd, Tab, FH, Fname, BetterSlotNumbers) of
                {try_again, _} ->
                    _ = file:close(Fd),
                    {error, {cannot_repair, Fname}};
                Else ->
                    Else
            end;
        Else ->
            Else
    end.

choose_no_slots(default, NoSlots) ->
    NoSlots;
choose_no_slots(NoSlots, _) ->
    NoSlots.

fsck_try(Fd, Tab, FH, Fname, SlotNumbers) ->
    Tmp = tempfile(Fname),
    {fileheader, _, _, _, _, Type, _, _, _, KeyPos, _, _, _, _, _, _, _,
     _, _, _, _, _} =
        FH,
    {_MinSlots, EstNoSlots, MaxSlots} = SlotNumbers,
    OpenArgs =
        {open_args, Tmp, Type, KeyPos, false, EstNoSlots, MaxSlots,
         false,
         {3000, 14000},
         infinity, read_write, false},
    case catch fopen3(Tab, OpenArgs) of
        {ok, Head} ->
            case fsck_try_est(Head, Fd, Fname, SlotNumbers, FH) of
                {ok, NewHead} ->
                    R = case fclose(NewHead) of
                            ok ->
                                dets_utils:rename(Tmp, Fname);
                            Error ->
                                Error
                        end,
                    if
                        R =:= ok ->
                            ok;
                        true ->
                            _ = file:delete(Tmp),
                            R
                    end;
                TryAgainOrError ->
                    _ = file:delete(Tmp),
                    TryAgainOrError
            end;
        Error ->
            _ = file:close(Fd),
            Error
    end.

tempfile(Fname) ->
    Tmp = lists:concat([Fname, ".TMP"]),
    case file:delete(Tmp) of
        {error, _Reason} ->
            ok;
        ok ->
            assure_no_file(Tmp)
    end,
    Tmp.

assure_no_file(File) ->
    case file:read_file_info(File) of
        {ok, _FileInfo} ->
            timer:sleep(100),
            assure_no_file(File);
        {error, _} ->
            ok
    end.

fsck_try_est(Head, Fd, Fname, SlotNumbers, FH) ->
    Cntrs = ets:new(dets_repair, []),
    Input = dets_v9:fsck_input(Head, Fd, Cntrs, FH),
    {Reply, SizeData} = do_sort(Head, SlotNumbers, Input, Cntrs, Fname),
    Bulk = false,
    case Reply of
        {ok, NoDups, H1} ->
            _ = file:close(Fd),
            fsck_copy(SizeData, H1, Bulk, NoDups);
        {try_again, _} = Return ->
            close_files(Bulk, SizeData, Head),
            Return;
        Else ->
            _ = file:close(Fd),
            close_files(Bulk, SizeData, Head),
            Else
    end.

do_sort(Head, SlotNumbers, Input, Cntrs, Fname) ->
    Output = dets_v9:output_objs(Head, SlotNumbers, Cntrs),
    TmpDir = filename:dirname(Fname),
    Reply =
        catch
            file_sorter:sort(Input, Output,
                             [{format, binary}, {tmpdir, TmpDir}]),
    L = ets:tab2list(Cntrs),
    ets:delete(Cntrs),
    {Reply, lists:reverse(lists:keysort(1, L))}.

fsck_copy([{_LogSz, Pos, Bins, _NoObjects} | SizeData],
          Head, _Bulk, NoDups)
    when is_list(Bins) ->
    true = NoDups =:= 0,
    PWs =
        [{Pos, Bins} |
         lists:map(fun({_, P, B, _}) ->
                          {P, B}
                   end,
                   SizeData)],
    {head, _, _, _, Fd, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
     _, FileName, _, _, _, _, _, _, _} =
        Head,
    dets_utils:pwrite(Fd, FileName, PWs),
    {ok,
     begin
         REC108 = Head,
         case REC108 of
             {head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
              _, _, _, _, _, _, _, _, _, _, _, _} ->
                 setelement(16, REC108, dirty);
             _ ->
                 error({badrecord, REC108})
         end
     end};
fsck_copy(SizeData, Head, Bulk, NoDups) ->
    catch fsck_copy1(SizeData, Head, Bulk, NoDups).

fsck_copy1([SzData | L], Head, Bulk, NoDups) ->
    Out =
        case Head of
            {head, _, _, _, REC109, _, _, _, _, _, _, _, _, _, _, _, _,
             _, _, _, _, _, _, _, _, _, _, _, _, _} ->
                REC109;
            REC109 ->
                error({badrecord, REC109})
        end,
    {LogSz, Pos, {FileName, Fd}, NoObjects} = SzData,
    Size =
        if
            NoObjects =:= 0 ->
                0;
            true ->
                1 bsl (LogSz - 1)
        end,
    ExpectedSize = Size * NoObjects,
    case close_tmp(Fd) of
        ok ->
            ok;
        Err ->
            close_files(Bulk, L, Head),
            dets_utils:file_error(FileName, Err)
    end,
    case file:position(Out, Pos) of
        {ok, Pos} ->
            ok;
        Err2 ->
            close_files(Bulk, L, Head),
            dets_utils:file_error(case Head of
                                      {head, _, _, _, _, _, _, _, _, _,
                                       _, _, _, _, _, _, _, _, _, _, _,
                                       _, REC110, _, _, _, _, _, _, _} ->
                                          REC110;
                                      REC110 ->
                                          error({badrecord, REC110})
                                  end,
                                  Err2)
    end,
    CR = file:copy({FileName, [raw, binary]}, Out),
    _ = file:delete(FileName),
    case CR of
        {ok, Copied} when Copied =:= ExpectedSize; NoObjects =:= 0 ->
            fsck_copy1(L, Head, Bulk, NoDups);
        {ok, _Copied} ->
            close_files(Bulk, L, Head),
            Reason =
                if
                    Bulk ->
                        initialization_failed;
                    true ->
                        repair_failed
                end,
            {error,
             {Reason,
              case Head of
                  {head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                   _, _, _, _, _, REC111, _, _, _, _, _, _, _} ->
                      REC111;
                  REC111 ->
                      error({badrecord, REC111})
              end}};
        FError ->
            close_files(Bulk, L, Head),
            dets_utils:file_error(FileName, FError)
    end;
fsck_copy1([], Head, _Bulk, NoDups) when NoDups =/= 0 ->
    {error,
     {initialization_failed,
      case Head of
          {head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
           _, _, _, REC112, _, _, _, _, _, _, _} ->
              REC112;
          REC112 ->
              error({badrecord, REC112})
      end}};
fsck_copy1([], Head, _Bulk, _NoDups) ->
    {ok,
     begin
         REC113 = Head,
         case REC113 of
             {head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
              _, _, _, _, _, _, _, _, _, _, _, _} ->
                 setelement(16, REC113, dirty);
             _ ->
                 error({badrecord, REC113})
         end
     end}.

close_files(false, SizeData, Head) ->
    _ = file:close(case Head of
                       {head, _, _, _, REC114, _, _, _, _, _, _, _, _,
                        _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                        _} ->
                           REC114;
                       REC114 ->
                           error({badrecord, REC114})
                   end),
    close_files(true, SizeData, Head);
close_files(true, SizeData, _Head) ->
    Fun =
        fun({_Size, _Pos, {FileName, Fd}, _No}) ->
               _ = close_tmp(Fd),
               file:delete(FileName);
           (_) ->
               ok
        end,
    lists:foreach(Fun, SizeData).

close_tmp(Fd) ->
    file:close(Fd).

fslot(H, Slot) ->
    case
        catch
            begin
                {NH, []} = write_cache(H),
                Objs = dets_v9:slot_objs(NH, Slot),
                {NH, Objs}
            end
    of
        {{head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
          _, _, _, _, _, _, _, _, _, _} =
             NewHead,
         _Objects} =
            Reply
            when true ->
            Reply
    end.

do_update_counter({head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                   _, _, _, _, _, _, _, _, _, _, _, _, _} =
                      Head,
                  _Key, _Incr)
    when
        (true
         orelse
         fail)
        and
        (element(10, Head) =/= set) ->
    {Head, badarg};
do_update_counter(Head, Key, Incr) ->
    case flookup_keys(Head, [Key]) of
        {H1, [O]} ->
            Kp =
                case H1 of
                    {head, _, _, _, _, _, _, _, _, _, REC115, _, _, _,
                     _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _} ->
                        REC115;
                    REC115 ->
                        error({badrecord, REC115})
                end,
            case catch try_update_tuple(O, Kp, Incr) of
                {'EXIT', _} ->
                    {H1, badarg};
                {New, Term} ->
                    case finsert(H1, [Term]) of
                        {H2, ok} ->
                            {H2, New};
                        Reply ->
                            Reply
                    end
            end;
        {H1, []} ->
            {H1, badarg};
        HeadError ->
            HeadError
    end.

try_update_tuple(O, _Kp, {Pos, Incr}) ->
    try_update_tuple2(O, Pos, Incr);
try_update_tuple(O, Kp, Incr) ->
    try_update_tuple2(O, Kp + 1, Incr).

try_update_tuple2(O, Pos, Incr) ->
    New = element(Pos, O) + Incr,
    {New, setelement(Pos, O, New)}.

set_verbose(true) ->
    put(verbose, yes);
set_verbose(_) ->
    erase(verbose).

where_is_object(Head, Object) ->
    Keypos =
        case Head of
            {head, _, _, _, _, _, _, _, _, _, REC116, _, _, _, _, _, _,
             _, _, _, _, _, _, _, _, _, _, _, _, _} ->
                REC116;
            REC116 ->
                error({badrecord, REC116})
        end,
    case check_objects([Object], Keypos) of
        true ->
            case catch write_cache(Head) of
                {NewHead, []} ->
                    {NewHead, dets_v9:find_object(NewHead, Object)};
                {{head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                  _, _, _, _, _, _, _, _, _, _, _, _, _} =
                     NewHead,
                 _} =
                    HeadError
                    when true ->
                    HeadError
            end;
        false ->
            {Head, badarg}
    end.

check_objects([T | Ts], Kp) when tuple_size(T) >= Kp ->
    check_objects(Ts, Kp);
check_objects(L, _Kp) ->
    L =:= [].

no_things(Head) ->
    case Head of
        {head, _, _, _, _, _, REC117, _, _, _, _, _, _, _, _, _, _, _,
         _, _, _, _, _, _, _, _, _, _, _, _} ->
            REC117;
        REC117 ->
            error({badrecord, REC117})
    end.

file_no_things(FH) ->
    case FH of
        {fileheader, _, _, _, _, _, _, _, _, _, _, REC118, _, _, _, _,
         _, _, _, _, _, _} ->
            REC118;
        REC118 ->
            error({badrecord, REC118})
    end.

update_cache(Head, KeysOrObjects, What) ->
    {Head1, LU, PwriteList} =
        update_cache(Head, [{What, KeysOrObjects}]),
    {NewHead, ok} = dets_utils:pwrite(Head1, PwriteList),
    {NewHead, LU}.

update_cache(Head, ToAdd) ->
    Cache =
        case Head of
            {head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
             _, _, REC119, _, _, _, _, _, _, _, _} ->
                REC119;
            REC119 ->
                error({badrecord, REC119})
        end,
    {cache, C, Size0, Ins, _, _, _} = Cache,
    NewSize = Size0 + erlang:external_size(ToAdd),
    {NewC, NewIns, Lookup, Found} =
        cache_binary(Head, ToAdd, C, Size0, Ins, false, []),
    NewCache =
        begin
            REC120 = Cache,
            case REC120 of
                {cache, _, _, _, _, _, _} ->
                    setelement(2,
                               setelement(3,
                                          setelement(4, REC120, NewIns),
                                          NewSize),
                               NewC);
                _ ->
                    error({badrecord, REC120})
            end
        end,
    Head1 =
        begin
            REC121 = Head,
            case REC121 of
                {head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                 _, _, _, _, _, _, _, _, _, _, _, _, _} ->
                    setelement(22, REC121, NewCache);
                _ ->
                    error({badrecord, REC121})
            end
        end,
    if
        Lookup;
        (is_record(Cache, cache, 7)
         orelse
         fail)
        and
        (NewSize >= element(6, Cache)) ->
            {NewHead, LU, PwriteList} = dets_v9:write_cache(Head1),
            {NewHead, Found ++ LU, PwriteList};
        NewC =:= [] ->
            {Head1, Found, []};
        (is_record(Cache, cache, 7)
         orelse
         fail)
        and
        (element(5, Cache) =:= undefined) ->
            Now = time_now(),
            Me = self(),
            Call = {'$dets_call', Me, {delayed_write, Now}},
            erlang:send_after(case Cache of
                                  {cache, _, _, _, _, _, REC122} ->
                                      REC122;
                                  REC122 ->
                                      error({badrecord, REC122})
                              end,
                              Me, Call),
            {begin
                 REC123 =
                     begin
                         REC125 = NewCache,
                         case REC125 of
                             {cache, _, _, _, _, _, _} ->
                                 setelement(5, REC125, Now);
                             _ ->
                                 error({badrecord, REC125})
                         end
                     end,
                 REC124 = Head1,
                 case REC124 of
                     {head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                      _, _, _, _, _, _, _, _, _, _, _, _, _, _} ->
                         setelement(22, REC124, REC123);
                     _ ->
                         error({badrecord, REC124})
                 end
             end,
             Found, []};
        Size0 =:= 0 ->
            {begin
                 REC126 =
                     begin
                         REC128 = time_now(),
                         REC129 = NewCache,
                         case REC129 of
                             {cache, _, _, _, _, _, _} ->
                                 setelement(5, REC129, REC128);
                             _ ->
                                 error({badrecord, REC129})
                         end
                     end,
                 REC127 = Head1,
                 case REC127 of
                     {head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                      _, _, _, _, _, _, _, _, _, _, _, _, _, _} ->
                         setelement(22, REC127, REC126);
                     _ ->
                         error({badrecord, REC127})
                 end
             end,
             Found, []};
        true ->
            {Head1, Found, []}
    end.

cache_binary(Head, [{Q, Os} | L], C, Seq, Ins, Lu, F)
    when Q =:= delete_object ->
    cache_obj_op(Head, L, C, Seq, Ins, Lu, F, Os,
                 case Head of
                     {head, _, _, _, _, _, _, _, _, _, REC130, _, _, _,
                      _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _} ->
                         REC130;
                     REC130 ->
                         error({badrecord, REC130})
                 end,
                 Q);
cache_binary(Head, [{Q, Os} | L], C, Seq, Ins, Lu, F) when Q =:= insert ->
    NewIns = Ins + length(Os),
    cache_obj_op(Head, L, C, Seq, NewIns, Lu, F, Os,
                 case Head of
                     {head, _, _, _, _, _, _, _, _, _, REC131, _, _, _,
                      _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _} ->
                         REC131;
                     REC131 ->
                         error({badrecord, REC131})
                 end,
                 Q);
cache_binary(Head, [{Q, Ks} | L], C, Seq, Ins, Lu, F)
    when Q =:= delete_key ->
    cache_key_op(Head, L, C, Seq, Ins, Lu, F, Ks, Q);
cache_binary(Head, [{Q, Ks} | L], C, Seq, Ins, _Lu, F) when C =:= [] ->
    cache_key_op(Head, L, C, Seq, Ins, true, F, Ks, Q);
cache_binary(Head, [{Q, Ks} | L], C, Seq, Ins, Lu, F) ->
    case
        dets_utils:cache_lookup(case Head of
                                    {head, _, _, _, _, _, _, _, _,
                                     REC132, _, _, _, _, _, _, _, _, _,
                                     _, _, _, _, _, _, _, _, _, _, _} ->
                                        REC132;
                                    REC132 ->
                                        error({badrecord, REC132})
                                end,
                                Ks, C, [])
    of
        false ->
            cache_key_op(Head, L, C, Seq, Ins, true, F, Ks, Q);
        Found ->
            {lookup, Pid} = Q,
            cache_binary(Head, L, C, Seq, Ins, Lu, [{Pid, Found} | F])
    end;
cache_binary(_Head, [], C, _Seq, Ins, Lu, F) ->
    {C, Ins, Lu, F}.

cache_key_op(Head, L, C, Seq, Ins, Lu, F, [K | Ks], Q) ->
    E = {K, {Seq, Q}},
    cache_key_op(Head, L, [E | C], Seq + 1, Ins, Lu, F, Ks, Q);
cache_key_op(Head, L, C, Seq, Ins, Lu, F, [], _Q) ->
    cache_binary(Head, L, C, Seq, Ins, Lu, F).

cache_obj_op(Head, L, C, Seq, Ins, Lu, F, [O | Os], Kp, Q) ->
    E = {element(Kp, O), {Seq, {Q, O}}},
    cache_obj_op(Head, L, [E | C], Seq + 1, Ins, Lu, F, Os, Kp, Q);
cache_obj_op(Head, L, C, Seq, Ins, Lu, F, [], _Kp, _Q) ->
    cache_binary(Head, L, C, Seq, Ins, Lu, F).

delayed_write(Head, WrTime) ->
    Cache =
        case Head of
            {head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
             _, _, REC133, _, _, _, _, _, _, _, _} ->
                REC133;
            REC133 ->
                error({badrecord, REC133})
        end,
    LastWrTime =
        case Cache of
            {cache, _, _, _, REC134, _, _} ->
                REC134;
            REC134 ->
                error({badrecord, REC134})
        end,
    if
        LastWrTime =:= WrTime ->
            case catch write_cache(Head) of
                {Head2, []} ->
                    NewCache =
                        begin
                            REC135 =
                                case Head2 of
                                    {head, _, _, _, _, _, _, _, _, _, _,
                                     _, _, _, _, _, _, _, _, _, _,
                                     REC136, _, _, _, _, _, _, _, _} ->
                                        REC136;
                                    REC136 ->
                                        error({badrecord, REC136})
                                end,
                            case REC135 of
                                {cache, _, _, _, _, _, _} ->
                                    setelement(5, REC135, undefined);
                                _ ->
                                    error({badrecord, REC135})
                            end
                        end,
                    begin
                        REC137 = Head2,
                        case REC137 of
                            {head, _, _, _, _, _, _, _, _, _, _, _, _,
                             _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                             _, _, _} ->
                                setelement(22, REC137, NewCache);
                            _ ->
                                error({badrecord, REC137})
                        end
                    end;
                {NewHead, _Error} ->
                    NewHead
            end;
        true ->
            if
                (is_record(Cache, cache, 7)
                 orelse
                 fail)
                and
                (element(3, Cache) =:= 0) ->
                    NewCache =
                        begin
                            REC138 = Cache,
                            case REC138 of
                                {cache, _, _, _, _, _, _} ->
                                    setelement(5, REC138, undefined);
                                _ ->
                                    error({badrecord, REC138})
                            end
                        end,
                    begin
                        REC139 = Head,
                        case REC139 of
                            {head, _, _, _, _, _, _, _, _, _, _, _, _,
                             _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                             _, _, _} ->
                                setelement(22, REC139, NewCache);
                            _ ->
                                error({badrecord, REC139})
                        end
                    end;
                true ->
                    When = round((LastWrTime - WrTime) / 1000),
                    Me = self(),
                    Call =
                        {'$dets_call', Me, {delayed_write, LastWrTime}},
                    erlang:send_after(When, Me, Call),
                    Head
            end
    end.

write_cache(Head) ->
    {Head1, LU, PwriteList} = dets_v9:write_cache(Head),
    {NewHead, ok} = dets_utils:pwrite(Head1, PwriteList),
    {NewHead, LU}.

status(Head) ->
    case
        case Head of
            {head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, REC140, _,
             _, _, _, _, _, _, _, _, _, _, _, _, _} ->
                REC140;
            REC140 ->
                error({badrecord, REC140})
        end
    of
        saved ->
            ok;
        dirty ->
            ok;
        new_dirty ->
            ok;
        Error ->
            Error
    end.

init_scan(Head, NoObjs) ->
    check_safe_fixtable(Head),
    FreeLists = dets_utils:get_freelists(Head),
    Base =
        case Head of
            {head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
             _, _, _, _, _, _, _, _, _, _, REC141} ->
                REC141;
            REC141 ->
                error({badrecord, REC141})
        end,
    case dets_utils:find_next_allocated(FreeLists, Base, Base) of
        {From, To} ->
            {dets_cont, undefined, NoObjs, <<>>,
             {From, To, <<>>},
             undefined, undefined, undefined};
        none ->
            {dets_cont, undefined, NoObjs, eof, <<>>, undefined,
             undefined, undefined}
    end.

check_safe_fixtable(Head) ->
    case
        case Head of
            {head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, REC142,
             _, _, _, _, _, _, _, _, _, _, _, _, _} ->
                REC142;
            REC142 ->
                error({badrecord, REC142})
        end
        =:=
        false
        andalso
        (get(verbose) =:= yes
         orelse
         dets_utils:debug_mode())
    of
        true ->
            error_logger:format("** dets: traversal of ~tp needs safe_f"
                                "ixtable~n",
                                [case Head of
                                     {head, _, _, _, _, _, _, _, _, _,
                                      _, _, _, _, _, _, _, _, _, _, _,
                                      _, _, _, _, REC143, _, _, _, _} ->
                                         REC143;
                                     REC143 ->
                                         error({badrecord, REC143})
                                 end]);
        false ->
            ok
    end.

scan(_Head, {dets_cont, _, _, _, <<>>, _, _, _} = C) ->
    {[], C};
scan(Head, C) ->
    {dets_cont, _, No, Bin, L0, _, _, _} = C,
    {From, To, L} = L0,
    R = case No of
            default ->
                0;
            _ when is_integer(No) ->
                -No - 1
        end,
    scan(Bin, Head, From, To, L, [], R,
         {C,
          case Head of
              {head, _, _, _, _, _, _, _, _, REC144, _, _, _, _, _, _,
               _, _, _, _, _, _, _, _, _, _, _, _, _, _} ->
                  REC144;
              REC144 ->
                  error({badrecord, REC144})
          end}).

scan(Bin, H, From, To, L, Ts, R, {C0, Type} = C) ->
    case dets_v9:scan_objs(H, Bin, From, To, L, Ts, R, Type) of
        {more, NFrom, NTo, NL, NTs, NR, Sz} ->
            scan_read(H, NFrom, NTo, Sz, NL, NTs, NR, C);
        {stop, <<>> = B, NFrom, NTo, <<>> = NL, NTs} ->
            Ftab = dets_utils:get_freelists(H),
            case
                dets_utils:find_next_allocated(Ftab, NFrom,
                                               case H of
                                                   {head, _, _, _, _, _,
                                                    _, _, _, _, _, _, _,
                                                    _, _, _, _, _, _, _,
                                                    _, _, _, _, _, _, _,
                                                    _, _, REC145} ->
                                                       REC145;
                                                   REC145 ->
                                                       error({badrecord,
                                                              REC145})
                                               end)
            of
                none ->
                    {NTs,
                     begin
                         REC146 = C0,
                         case REC146 of
                             {dets_cont, _, _, _, _, _, _, _} ->
                                 setelement(4,
                                            setelement(5, REC146, B),
                                            eof);
                             _ ->
                                 error({badrecord, REC146})
                         end
                     end};
                _ ->
                    {NTs,
                     begin
                         REC147 = {NFrom, NTo, NL},
                         REC148 = C0,
                         case REC148 of
                             {dets_cont, _, _, _, _, _, _, _} ->
                                 setelement(4,
                                            setelement(5, REC148,
                                                       REC147),
                                            B);
                             _ ->
                                 error({badrecord, REC148})
                         end
                     end}
            end;
        {stop, B, NFrom, NTo, NL, NTs} ->
            {NTs,
             begin
                 REC149 = {NFrom, NTo, NL},
                 REC150 = C0,
                 case REC150 of
                     {dets_cont, _, _, _, _, _, _, _} ->
                         setelement(4, setelement(5, REC150, REC149), B);
                     _ ->
                         error({badrecord, REC150})
                 end
             end};
        bad_object ->
            {scan_error, dets_utils:bad_object(scan, {From, To, Bin})}
    end.

scan_read(_H, From, To, _Min, L0, Ts, R, {C, _Type}) when R >= 8192 ->
    L = {From, To, L0},
    {Ts,
     begin
         REC151 = C,
         case REC151 of
             {dets_cont, _, _, _, _, _, _, _} ->
                 setelement(4, setelement(5, REC151, L), <<>>);
             _ ->
                 error({badrecord, REC151})
         end
     end};
scan_read(H, From, _To, Min, _L, Ts, R, C) ->
    Max =
        if
            Min < 8192 ->
                8192;
            true ->
                Min
        end,
    FreeLists = dets_utils:get_freelists(H),
    case
        dets_utils:find_allocated(FreeLists, From, Max,
                                  case H of
                                      {head, _, _, _, _, _, _, _, _, _,
                                       _, _, _, _, _, _, _, _, _, _, _,
                                       _, _, _, _, _, _, _, _, REC152} ->
                                          REC152;
                                      REC152 ->
                                          error({badrecord, REC152})
                                  end)
    of
        <<>> = Bin0 ->
            {Cont, _} = C,
            {Ts,
             begin
                 REC153 = Cont,
                 case REC153 of
                     {dets_cont, _, _, _, _, _, _, _} ->
                         setelement(4, setelement(5, REC153, Bin0), eof);
                     _ ->
                         error({badrecord, REC153})
                 end
             end};
        <<From1:32,To1:32,L1/binary>> ->
            case
                dets_utils:pread_n(case H of
                                       {head, _, _, _, REC154, _, _, _,
                                        _, _, _, _, _, _, _, _, _, _, _,
                                        _, _, _, _, _, _, _, _, _, _, _} ->
                                           REC154;
                                       REC154 ->
                                           error({badrecord, REC154})
                                   end,
                                   From1, Max)
            of
                eof ->
                    {scan_error, premature_eof};
                NewBin ->
                    scan(NewBin, H, From1, To1, L1, Ts, R, C)
            end
    end.

err(Error) ->
    case get(verbose) of
        yes ->
            error_logger:format("** dets: failed with ~tw~n", [Error]),
            Error;
        undefined ->
            Error
    end.

-compile({inline, [{time_now, 0}]}).

time_now() ->
    erlang:monotonic_time(1000000).

make_timestamp(MonTime, TimeOffset) ->
    ErlangSystemTime =
        erlang:convert_time_unit(MonTime + TimeOffset,
                                 native, microsecond),
    MegaSecs = ErlangSystemTime div 1000000000000,
    Secs = ErlangSystemTime div 1000000 - MegaSecs * 1000000,
    MicroSecs = ErlangSystemTime rem 1000000,
    {MegaSecs, Secs, MicroSecs}.

file_info(FileName) ->
    case catch read_file_header(FileName, read, false) of
        {ok, Fd, FH} ->
            _ = file:close(Fd),
            dets_v9:file_info(FH);
        Other ->
            Other
    end.

get_head_field(Fd, Field) ->
    dets_utils:read_4(Fd, Field).

view(FileName) ->
    case catch read_file_header(FileName, read, false) of
        {ok, Fd, FH} ->
            try dets_v9:check_file_header(FH, Fd) of
                {ok, H0} ->
                    case dets_v9:check_file_header(FH, Fd) of
                        {ok, H0} ->
                            H = dets_v9:init_freelist(H0),
                            v_free_list(H),
                            dets_v9:v_segments(H),
                            ok;
                        X ->
                            X
                    end
            after
                _ = file:close(Fd)
            end;
        X ->
            X
    end.

v_free_list(Head) ->
    io:format("FREE LIST ...... \n", []),
    io:format("~p~n", [dets_utils:all_free(Head)]),
    io:format("END OF FREE LIST \n", []).



