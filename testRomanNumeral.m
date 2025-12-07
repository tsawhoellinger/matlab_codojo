
classdef testRomanNumeral < matlab.unittest.TestCase
    methods(Test)

        function testPositive1(tc)
            tc.verifyEqual(romanNumeral(1), 'I');
        end

    end
end


