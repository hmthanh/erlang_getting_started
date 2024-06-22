% Named function in a module
-module(math).
-export([add/2]).

add(X, Y) ->
    io:format(X + Y).