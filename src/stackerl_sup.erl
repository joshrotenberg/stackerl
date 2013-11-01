
-module(stackerl_sup).

-behaviour(supervisor).

%% API
-export([start_link/1]).

%% Supervisor callbacks
-export([init/1]).

%% ===================================================================
%% API functions
%% ===================================================================

start_link(Stack) ->
    supervisor:start_link({local, ?MODULE}, ?MODULE, Stack).

%% ===================================================================
%% Supervisor callbacks
%% ===================================================================

init(Stack) ->
    Worker = {stackerl_server,
	      {stackerl_server, start_link, [Stack]},
	      permanent, 2000, worker, [stackerl_server]},
    {ok, { {one_for_one, 5, 10}, [Worker]} }.

