-module(test_lists).

-include_lib("eunit/include/eunit.hrl").

max1_test() ->
	Result = lists:max([2]),
	?assertEqual(2, Result).

max2_test() ->
	Result = lists:max([2, 3, 4]),
	?assertEqual(4, Result).

max3_test() ->
	Result = lists:max([4, 3]),
	?assertEqual(4, Result).
