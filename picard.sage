#!/usr/bin/env sage
# -*- coding: utf-8 -*-

# Iterantes de Picard
# SageMath version 8.1
# Autor: Mario Román
def picard(f,t0,x0,n):
    if n == 0: return (lambda s: x0)
    phi_ant = picard(f,t0,x0,n-1)
    return (lambda s: x0 + integral(f(s,phi_ant(s)),s,t0,t))

var('t')
print("Para $f(t,x) = x$, se tiene $\displaystyle\phi_5(t)={}$.\\\\"
      .format(latex(picard(lambda t,x: x, 0,1, 5)(t))))
print("Para $f(t,x) = -x$, se tiene $\displaystyle\phi_5(t)={}$.\\\\"
      .format(latex(picard(lambda t,x: -x, 0,1, 5)(t))))
print("Para $f(t,x) = 2tx$, se tiene $\displaystyle\phi_5(t)={}$.\\\\"      
      .format(latex(picard(lambda t,x: 2*t*x, 0,1, 5)(t))))

