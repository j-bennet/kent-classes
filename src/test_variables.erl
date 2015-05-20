-module(test_variables).

-include_lib("eunit/include/eunit.hrl").

xor1_test() ->
  ?assertEqual(true, variables:xor1(true, false)),
  ?assertEqual(true, variables:xor1(false, true)),
  ?assertEqual(false, variables:xor1(true, true)),
  ?assertEqual(false, variables:xor1(false, false)).

xor2_test() ->
  ?assertEqual(true, variables:xor2(true, false)),
  ?assertEqual(true, variables:xor2(false, true)),
  ?assertEqual(false, variables:xor2(true, true)),
  ?assertEqual(false, variables:xor2(false, false)).

xor3_test() ->
  ?assertEqual(true, variables:xor3(true, false)),
  ?assertEqual(true, variables:xor3(false, true)),
  ?assertEqual(false, variables:xor3(true, true)),
  ?assertEqual(false, variables:xor3(false, false)).

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
