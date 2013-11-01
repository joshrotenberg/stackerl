-module(stackerl_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%% ===================================================================
%% Application callbacks
%% ===================================================================

start(_StartType, Stack) ->
    stackerl_sup:start_link(Stack).

stop(_State) ->
    ok.
