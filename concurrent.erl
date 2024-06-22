% Function to be run in a new process
-module(concurrent).
-export([start/0, loop/0]).

start() ->
    spawn(fun loop/0).

loop() ->
    receive
        hello ->
            io:format("Hello from process!~n"),
            loop();
        stop ->
            io:format("Stopping process~n")
    end.