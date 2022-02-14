# Series

# PROBLEM

*Requirements*:
- **Input**: A `digits_string` and a `length`
- **Output**: All consecutive number series of `length` in `digits_string`
  - Array of subarrays (series)
- If the `length` > length of `digits_string` => Raise `ArgumentError`

*Methods*:
- `Series#initialize`: String -> _
- `Series#slices`: Number -> Array of Arrays

*Edge Cases*:
- The `length` = length of `digits_string`: Should return 1 slice

*Questions*:
- Should we handle input validation for the digits string or the length? Assume no

*Initial Ideas and Mental Models*:
- Option 1: Iterate over every sequence using `#each_cons`
- Option2: Iterate until the end

# EXAMPLES/TESTS

Separate file

# SUB-PROBLEMS

## Solution 1

Given a `digits_string` and `length`:
- [Guard clause] Raise an argument error if `length` > `digits_string.length`
- Split `digits_string` into characters and transform to integer `digits` (`#to_i`)
- Iterate over the consecutive sequences in `digits` (`#each_cons`) with an object `series`, appending the current `sequence` to `series`
- Return the `series`

## Solution 2

Given a `digits_string` and `length`:
- [Guard clause] Raise an argument error if `length` > `digits_string.length`
- Split `digits_string` into characters and transform to integer `digits` (`#to_i`)
- Initialize an empty array `series`
- Iterate to the end of `digits`, starting at index `length - 1`, tracking the `ending_index`
  - Append a slice to `series`, from the `ending_index - length` to `ending_index`
- Return the `series`

*Implementation Details*:
- `Enumerable#each_cons`

# REFACTORING

