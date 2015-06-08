-module(lists).
-export([product/1, max/1]).

%%%-------------------------------------------------------------------
%% Product of list elements. Tail-recursive.
%%%-------------------------------------------------------------------
product(Xs) ->
  product(Xs, 1).

product([], A) ->
	A;

product([X | Xs], A) ->
  product(Xs, X * A).

%%%-------------------------------------------------------------------
%% Max of list elements.
%%%-------------------------------------------------------------------
max(A, B) ->
  if
    A > B -> A;
    true -> B
  end.

max([X]) -> X;

max([X | Xs]) ->
  max(X, max(Xs)).