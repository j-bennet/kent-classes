-module(tailrec).

%% API
-export([fib/1, perfect/1]).

%%%-------------------------------------------------------------------
%% Fibonacci with tail recursion
%%%-------------------------------------------------------------------
fib(X) -> fib(0, 1, X).
fib(A, _, 0) -> A;
fib(A, B, X) -> fib(B, A + B, X - 1).

%%%-------------------------------------------------------------------
%% A positive integer is perfect when it is the sum of its divisors
%%%-------------------------------------------------------------------
perfect(X) when X > 0 -> perfect(X, 1, 0).

perfect(X, Div, Sum)
  when Div == X ->
  Sum == X;

perfect(X, Div, Sum)
  when X rem Div == 0 ->
  perfect(X, Div + 1, Sum + Div);

perfect(X, Div, Sum) ->
  perfect(X, Div + 1, Sum).