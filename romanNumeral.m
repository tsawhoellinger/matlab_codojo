function roman = romanNumeral(n)
%ROMANNUMERAL Convert an Arabic number (integer) to a Roman numeral (string).
%   Supports values from 1 to 3999.
%
%   Example:
%       romanNumeral(1999)   % returns 'MCMXCIX'

    roman = '';

    while n >= 1
        if n >= 1000
            roman = [ roman 'M' ];
            n = n - 1000;
        elseif n >= 1
            roman = [ roman 'I' ];
            n = n - 1;
        end
    end
end

