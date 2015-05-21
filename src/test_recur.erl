-module(test_recur).

-include_lib("eunit/include/eunit.hrl").

fib_test() ->
  ?assertEqual(0, recur:fib(0)),
  ?assertEqual(1, recur:fib(1)),
  ?assertEqual(1, recur:fib(2)),
  ?assertEqual(2, recur:fib(3)).

piece_test() ->
  ?assertEqual(1, recur:pieces(0)),
  ?assertEqual(2, recur:pieces(1)),
  ?assertEqual(4, recur:pieces(2)),
  ?assertEqual(7, recur:pieces(3)).
