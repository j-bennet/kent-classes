-module(test_first).

-include_lib("eunit/include/eunit.hrl").

mult_test() ->
	Result = first:mult(2, 3),
	?assertEqual(6, Result).

square_test() ->
	Result = first:square(8),
	?assertEqual(64, Result).

treble_test() ->
	Result = first:treble(8),
	?assertEqual(24, Result).
