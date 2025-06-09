# How Binary Stores floats n such

SEE WEEK 1

Current Standard (https://en.wikipedia.org/wiki/IEEE_754)

Breakdown: 
sign | exponent | mantissa (number in binary shifted to the left by exponent)

sign (1 bit)
exponent (8 bits (including the sign bit)) 
    like 10^(exponent) in scientific notation
mantissa (23 bits (ignore leading)) 

looks like (for 72.1)

0 | 10000101 | 0100100000011001100110011
