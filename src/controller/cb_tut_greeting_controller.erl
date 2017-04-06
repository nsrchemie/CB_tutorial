-module(cb_tut_greeting_controller, [Req]).
-compile(export_all).

hello('GET', []) ->
 {ok,  [{greeting, "hello!"}]}.

list('GET', []) ->
 Greetings = boss_db:find(greeting, []),
 {ok, [{greetings, Greetings}]}.
