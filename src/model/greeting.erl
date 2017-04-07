-module(greeting, [Id, GreetingText]).
-compile(export_all).

validation_tests() ->
 [{fun() -> length(GreetingText) > 0 end,
	"Greeting must be nonempty"},
  {fun() -> length(GreetingText) =< 140 end,
	"Too long!"}].
