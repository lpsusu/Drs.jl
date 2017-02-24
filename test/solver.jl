#!/usr/bin/env julia

using MathProgBase
using Logging
using Drs

A = Float64[3 2 1; 2 5 3]
b = Float64[10, 15]
c = Float64[-2, -3, -4]

s = linprog(c, A, '<', b, -Inf, Inf, DrsMathProgSolver(LogLevel=DEBUG))
