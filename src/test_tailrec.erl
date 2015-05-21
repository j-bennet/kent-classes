-module(test_tailrec).

-include_lib("eunit/include/eunit.hrl").

fib_test() ->
  ?assertEqual(0, tailrec:fib(0)),
  ?assertEqual(1, tailrec:fib(1)),
  ?assertEqual(1, tailrec:fib(2)),
  ?assertEqual(2, tailrec:fib(3)).

perfect_test() ->
  ?assertEqual(true, tailrec:perfect(6)),
  ?assertEqual(true, tailrec:perfect(28)),
  ?assertEqual(true, tailrec:perfect(496)),
  ?assertEqual(false, tailrec:perfect(10)),
  ?assertEqual(false, tailrec:perfect(100)),
  ?assertEqual(false, tailrec:perfect(200)).
