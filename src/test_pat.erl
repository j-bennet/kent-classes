-module(test_pat).

-include_lib("eunit/include/eunit.hrl").

perimeter_test() ->
  ?assertEqual(12.566370614359172, pat:perimeter({circle, 2})).

area_test() ->
  ?assertEqual(12.566370614359172, pat:area({circle, 2})).

enclose_test() ->
  ?assertEqual({rectangle, 4, 4}, pat:enclose({circle, 2})).
