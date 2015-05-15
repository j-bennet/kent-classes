-module(test_second).

-include_lib("eunit/include/eunit.hrl").

hypotenuse_test() ->
	Result = second:hypotenuse(5, 6),
	?assertEqual(7.810249675906654, Result).

perimeter_test() ->
	Result = second:perimeter(5, 6),
	?assertEqual(18.810249675906654, Result).

area_test() ->
	Result = second:area(5, 6),
	?assertEqual(15.0, Result).
