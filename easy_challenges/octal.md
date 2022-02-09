# Octal

# PROBLEM

*Explicit Requirements*:
- **Input**: `octal` string
- **Output**: Decimal output (as an integer)

*Edge Cases*:
- Invalid input => 0

*Questions*:


*Initial Ideas and Mental Models*:
- Simply use power expansion form of base-8 number to convert => decimal...

# ALGORITHM

Given an `octal` string:
- Return 0 if input is invalid (must only contain characters [0-7])
- Otherwise, iterate over digits w/ a `decimal` accumulator, tracking the `digit` and `place`:
  - Sum the power-expansion of that `digit` for the given `place` w/ the `decimal`
- Return the `decimal`

*Sub-Problems*:




# CODE

*Implementation Details*: