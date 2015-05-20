-module(variables).

%% API
-export([xor1/2, xor2/2, xor3/2, maxThree/3, howManyEqual/3]).

%%------------------------------------
%% Three versions of XOR
%%------------------------------------
xor1(A, A) -> false;
xor1(_, _) -> true.

xor2(A, B) -> (A or B) and not (A and B).

xor3(A, B) -> (A or B) and (A =/= B).

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


