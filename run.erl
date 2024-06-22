-module(run).
-export([world/0]).

world() ->
    io:format("Hello, World!").


% Anonymous function
Fun = fun(X) -> X + 1 end.