
classdef testRomanNumeral < matlab.unittest.TestCase
    methods(Test)

        function testPositive1(tc)
            tc.verifyEqual(romanNumeral(1), 'I');
        end

        function testPositive3(tc)
            tc.verifyEqual(romanNumeral(3), 'III');
        end

        function testPositive3000(tc)
            tc.verifyEqual(romanNumeral(3000), 'MMM');
        end

    end
end


