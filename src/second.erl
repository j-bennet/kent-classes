-module(second).
-export([hypotenuse/2, perimeter/2, area/2]).

hypotenuse(A, B) ->
	math:sqrt(first:square(A) + first:square(B)).

perimeter(A, B) ->
	A + B + hypotenuse(A, B).

area(A, B) ->
	A * B / 2.
