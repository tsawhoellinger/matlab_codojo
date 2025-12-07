function roman = romanNumeral(n)
%ROMANNUMERAL Convert an Arabic number (integer) to a Roman numeral (string).
%   Supports values from 1 to 3999.
%
%   Example:
%       romanNumeral(1999)   % returns 'MCMXCIX'

%    arguments
%        n (1,1) double {mustBeInteger, mustBePositive}
%    end

    if ~isscalar(n) || n ~= floor(n)
        error('Input must be an integer')
    end

    if n < 1 || n > 3999
        error('romanNumeral:OutOfRange', ...
              'Input must be in the range 1..3999 (standard Roman numeral limit).');
    end

    values  = [1000 900 500 400 100 90 50 40 10 9 5 4 1];
    symbols = {'M','CM','D','CD','C','XC','L','XL','X','IX','V','IV','I'};

    roman = '';
    for i = 1:numel(values)
        while n >= values(i)
            roman = [roman symbols{i}];
            n = n - values(i);
        end
    end
end

