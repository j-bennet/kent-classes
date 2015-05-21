-module(pat).

%% API
-export([perimeter/1, area/1, enclose/1]).

%%%-------------------------------------------------------------------
%% Define a function perimeter/1 which takes a shape and returns
%% the perimeter of the shape.
%%%-------------------------------------------------------------------
perimeter({circle, R}) ->
  2 * math:pi() * R;

perimeter({rectangle, W, H}) ->
  2 * (W + H);

perimeter({triangle, A, B, C}) ->
  A + B + C.

%%%-------------------------------------------------------------------
%% Choose a suitable representation of triangles, and augment area/1
%% and perimeter/1 to handle this case too.
%%%-------------------------------------------------------------------
area({circle, R}) ->
  math:pi() * R * R;

area({rectangle, W, H}) ->
  W * H;

%% Heron's formula
area({triangle, A, B, C}) ->
  S = (A + B + C) / 2,
  math:sqrt(S * (S - A) * (S - B) * (S - C)).

%%%-------------------------------------------------------------------
%% Define a function enclose/1 that takes a shape an returns the
%% smallest enclosing rectangle of the shape.
%%%-------------------------------------------------------------------
enclose({circle, R}) ->
  {rectangle, R * 2, R * 2};

enclose({rectangle, W, H}) ->
  {rectangle, W, H};

enclose(T = {triangle, A, B, C}) ->
  Area = area(T),
  Base = max(max(A, B), max(B, C)),
  Height = (Area * 2) / Base,
  {rectangle, Base, Height}.
