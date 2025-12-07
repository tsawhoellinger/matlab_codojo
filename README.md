# matlab_codojo
Coding Dojo for MATLAB

# use function

% matlab -batch "romanNumeral(1964)"

ans = MCMLXIV


# run unit tests for function(s)

% matlab -batch "runtests;"

% matlab -batch "runtests('testRomanNumeral.m');"

# run all tests in all directories (usi in CI)
% matlab -batch "addpath(genpath('$PWD')); results = runtests; assertSuccess(results);"
