-module(lint_test). -record(r, {a}).
              f() -> []().
              g() -> (no_record)#r{a=42}.
            