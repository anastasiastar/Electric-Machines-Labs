clc;
close all;
clear all;

R_inner=0.032;
R_outer=.041;
h=.018;
g=.0015;
n=72;
mu0=4*pi*10^-7;
%calculations
ac=(R_outer-R_inner)*h;
lc=2*pi*((R_inner +R_outer)/2)-g;
rg=g/(mu0*ac);
rc=lc/(inf*mu0)*ac;

li=n^2./(rg+rc);
lm=li*.95;

c=mu0*ac;
a=lc/c;
b=((n^2/lm)-rg);
umin=a*b^-1
ur=100:.1:10000;
Rc=lc./(ur.*mu0*ac);
l=n^2./(Rc+rg);
figure
loglog(ur,l);
title("Inductance v Relative Core permability")
%normal
figure
plot(ur,l)
title("Normal ploy of Inductance v Relative Core Permability")

