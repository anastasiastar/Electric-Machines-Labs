%Question 6
clear all;close all;clc;
syms t T
x=t.*exp(-t)*heaviside(t);
ezplot(x,[-3 3])
grid on
d=int(x^2,t,-T,T)
Ex=limit(d,T,inf)
