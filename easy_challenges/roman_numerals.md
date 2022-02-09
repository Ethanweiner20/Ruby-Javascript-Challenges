# Roman Numerals

# PROBLEM

*Explicit Requirements*:
- **Input**: A whole `decimal` number in the range [1, 3000]
- **Output**: The corresponding Roman Numeral (as a string)
- *Roman Numerals* are written by expressing each digit individually, skipping digits w/ a value of zero

*Edge Cases*:
- Decimal contains zeroes => Ignore

*Questions*:


*Initial Ideas and Mental Models*:
- Analyze each digit
- Construct backwards: focus on lowest digits first => go higher
- For each digit, we know:
  - The digit
  - Its place (0, 1, 2, 3)
- Each Roman Numeral digit is computed differently, with different letters
- Better Idea: Keep trying to apply the largest Roman Numeral given the current place, then find the rest of them (recursive?)

# DATA STRUCTURES

Array to store digits

# ALGORITHM

## Solution 1: Digit Analysis

There are 2 primary types of Roman Numerals: those corresponding w/ a power of 10, and those corresponding w/ half that power:

     A B
0 => I V
1 => X L
2 => C D
3 => M

For a given `digit` and `place`:
- Narrow down to the digits for that place
- Try using the `B` type digit
- Modulate up or down with the `A` type digit, until the place is found

Given a `decimal`:
- Break the decimal into digits (`#digits`)
- Reduce the digits to a `roman_numeral` string; for each `decimal_digit` and its `place`:
  - *Convert to its Roman Numeral digit*
  - Prepend to `roman_numeral`


### Convert Decimal Digit => Roman Numeral Digit

Create a hash of 2-element pairs:

0 => I V X
1 => X L C
2 => C D M
3 => M

Given a `decimal_digit` and `place`:
- If `decimal_digit` is 0 => Return empty string
- If `place` is 3 => Return string w/ with "M" `decimal_digit` times
- Otherwise, determine the pair of roman numerals to use, and create the digit with that pair (pass the `ones_numeral`, `fives_numeral`, and `tens_numeral`)

Given the `ones_numeral`, `fives_numeral`, and `tens_numeral` for a particular non-zero `decimal_digit`:
- If the `decimal_digit` is 1..3 => return `ones_numeral` times that `decimal_digit`
- If the `decimal_digit` is 4 => return `ones_numeral` and `fives_numeral` concatenated
- If the `decimal_digit` is 5..8 => return `fives_numeral` and `ones_numeral` * (`decimal_digit` minus 5 concatenated)
- Else, return the `ones_numeral` followed by the `tens_numeral`

## Solution 2: Arithmetic

Assume we have a collection of Roman Numerals in descending order, for all key values

Given a `decimal`:
- Iterate over the Ruman numerals in descending order, tracking the `numeral`:
  - If the `numeral` value < `decimal`, continue to add until it no longer fits
    - Subtract `numeral` value from `decimal` while we iterate
  - Continue for the next `numeral`

# CODE

*Implementation Details*: