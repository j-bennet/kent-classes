-module(variables).

%% API
-export([maxThree/3, howManyEqual/3]).

%%------------------------------------
%% Max of 3 numbers
%%------------------------------------
maxThree(A, B, C) ->
  M1 = max(A, B),
  max(M1, C).

%%------------------------------------
%% How many of the 3 numbers are equal
%%------------------------------------
howManyEqual(A, A, A) -> 3;
howManyEqual(A, A, _) -> 2;
howManyEqual(_, A, A) -> 2;
howManyEqual(A, _, A) -> 2;
howManyEqual(_, _, _) -> 0.
