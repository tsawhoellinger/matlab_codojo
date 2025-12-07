
classdef testRomanNumeral < matlab.unittest.TestCase
    methods(Test)

        function testPositive1(tc)
            tc.verifyEqual(romanNumeral(1), 'I');
        end

        function testPositive1964(tc)
            tc.verifyEqual(romanNumeral(1964), 'MCMLXIV');
        end

        function testErrorNotAnInteger(tc)
            tc.verifyError(@() romanNumeral(1.2), '');
        end

        function testErrorOutOfRange0(tc)
            tc.verifyError(@() romanNumeral(0), 'romanNumeral:OutOfRange');
        end

        function testErrorOutOfRange4000(tc)
            tc.verifyError(@() romanNumeral(4000), 'romanNumeral:OutOfRange');
        end


    end
end


