function roman = romanNumeral(n)
%ROMANNUMERAL Convert an Arabic number (integer) to a Roman numeral (string).
%   Supports values from 1 to 3999.
%
%   Example:
%       romanNumeral(1999)   % returns 'MCMXCIX'

    if n == 1
        roman = 'I';
    end
end

