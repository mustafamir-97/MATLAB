%{
Name: Mustafa Hafeez Mir
Class: MAE 2360-003
Assignment: Lab 3 Problem 1
%}

function main
clc                             %% Standard Housekeeping
clear
close all

fprintf('*************Problem 1 done using while loop************* \n\n'); %% First Part of problem

n1 = input('Input the number which you want factorial of: ' );      %% Prompts user to enter number they want increment of
fprintf('\n');

factorial(n1);          %% Calls factorial function with the value of the number that has been initialized by user

fprintf('\n*************Problem 1 done using Recursion************* \n\n'); %% Second Part of Problem

n2 = input('Input the number which you want factorial of: ' );          %% Prompts user to enter number they want increment of

fprintf('\nThe value of %0.0d! is %0.0d. \n', n2, Recursion(n2));           %% The value of the factorial displayed

end             %% End of this function

function OUT = factorial(n1)            %% function declared for calculating the factorial using while loop
temp = n1;          %% value of the number factorial needed of stored in a seperate variable for later display
product = 1;        %% a local variable product declared and initialized
    while (n1 > 0)      %% While loop started. Stop condition is if n1 reaches zero
    product = product * n1;             %% The computation for factorial
    n1 = n1 - 1;            %% n1 decremented
    end

fprintf('The value of %0.0f! is %0.0f \n', temp, product);          %% Output statement displayed

end             %% End of function

function OUT = Recursion(n2)            %% function declared for calculating the factorial using recursion

    if n2 == 1              %% If increments reaches 1
        OUT = 1;            %% The output from the function is 1
    else
        OUT = n2 * Recursion(n2 - 1);           %% The output from the function is product of n2 and the function again with -1 the current n2.
    end


end         %% End of function