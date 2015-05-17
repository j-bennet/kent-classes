-module(test_variables).

-include_lib("eunit/include/eunit.hrl").

max_three_test() ->
  Result = variables:maxThree(34, 25, 36),
  ?assertEqual(36, Result).

how_many_equal_1_test() ->
  Result = variables:howManyEqual(1, 2, 3),
  ?assertEqual(0, Result).

how_many_equal_2_test() ->
  Result = variables:howManyEqual(1, 2, 2),
  ?assertEqual(2, Result).

how_many_equal_3_test() ->
  Result = variables:howManyEqual(2, 2, 2),
  ?assertEqual(3, Result).
