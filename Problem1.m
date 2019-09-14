%{
Mustafa Hafeez Mir
MAE 2360-003
Lab 7
Question 1
%}

close all;
clear all;                  %% Standard Housekeeping
clc

a = 0 : 0.1 : 5;            %% an array declared and initialized that has values of t
n = length(a);              %% calculates the length of this array and stores in n

for re = 1 : 1 : n
    fd_x(re) = 0;
    bd_x(re) = 0;           %% Pre-allocating these arrays that are used later
    cd_x(re) = 0;           %% The size here is also declared by the for loop conditions
    analytical(re) = 0;     %% fd is forward difference, bd is backward difference, cd is central difference
end

for p = 1 : 1 : length(a)
    f_x(p) = (10*cos(2*a(p))*(exp(-0.8*a(p))));     %% the function given values of t and computed here and stored in f_x
end

h = a(2) - a(1);            %% dt calculated andd stored in h

for q = 1 : 1 : n-1
    fd_x(q) = (f_x(q+1) - f_x(q))/(h);          %% forward difference method, appropriate loop condition apply
    fd_x(51) = 0;
end

for r = 2 : 1 : n
    bd_x(r) = (f_x(r-1) - f_x(r))/(h);      %% backward difference method, appropriate loop conditions apply
    bd_x(1) = 0;
end

for s = 2 : 1 : n-1
    cd_x(s) = (f_x(s+1) - f_x(s-1))/(2*h);
    cd_x(1) = 0;
    cd_x(51) = 0;                           %% central difference method, appropriate loop conditions apply
end

for u = 1 : 1 : n
    analytical(u) = -1*(20*sin(2*a(u))+8*cos(2*a(u)))/(exp(0.8*a(u)));      %% analytical, can be done to entire series
end

fprintf('\tt\t\t\t \tf(t) \t\t Analytical f''(t)\t Forward f''(t)\t\t Backward f''(t)\t\t\tCentral f''(t) \n');     %% Table heading label

for t = 1 : 1 : n
fprintf('\t%0.1f\t\t\t %2.6f \t\t %2.6f \t\t\t %2.6f \t\t\t\t %2.6f \t\t\t%2.6f\n', [a(t); f_x(t); analytical(t); fd_x(t); bd_x(t); cd_x(t)]);
end
%% Values printed                                 
