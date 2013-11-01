# stackerl

This is the Erlang equivalent of the OTP app in the
[Elixir](http://elixir-lang.org) [Building OTP apps with
Mix](http://elixir-lang.org/getting_started/mix/2.html) documentation,
implemented mainly as an exercise/example.

```
make
erl -pa ebin/
```
... then ...

```erlang
1> application:start(stackerl).
ok
2> gen_server:cast(stackerl_server, {push, foo}).
ok
3> gen_server:cast(stackerl_server, {push, bar}).
ok
4> gen_server:call(stackerl_server, pop).
bar
5> gen_server:call(stackerl_server, pop).
foo
6> gen_server:call(stackerl_server, pop).
hello
```
etc.