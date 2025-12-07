
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

        function testPositive300(tc)
            tc.verifyEqual(romanNumeral(300), 'CCC');
        end

        function testPositive2202(tc)
            tc.verifyEqual(romanNumeral(2202), 'MMCCII');
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


