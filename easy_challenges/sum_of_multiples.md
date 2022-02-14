# Sum of Multiples

# PROBLEM

*Requirements*:
- **Input**: A natural number `upper_bound` and a set of one or more other `numbers`
- **Output**: Sum of all `multiples` of `numbers` that are less than `upper_bound`
- If no set of numbers is given -> assume set is `[3, 5]`
- The multiples should NOT include duplicates
- REMEMBER TO ANALYZE THE TEST CASES THOROUGHLY

*Methods*:
- `SumOfMultiple#initialize`
  - Assign to `@numbers` via splat operator (*)
- `SumOfMultiples#to`
- `SumOfMultiples::to`
  - Implement using `#to`

*Edge Cases*:
- Default set: `[3, 5]`
- A number in `numbers` has a multiple of `number` -- should not be included

*Questions*:
- Can the `upper_bound` be 0 or negative? No
- Can the `numbers` include negative numbers? No
- Any input validation needed?
- What if a # in the set is greater than upper bound? Shouldn't be included

*Initial Ideas and Mental Models*:
- Transform `numbers` to sub-arrays of multiples, flatten

# EXAMPLES/TESTS

Separate file

# SUB-PROBLEMS

Given a set of `numbers` and an `upper_bound`:
- Transform the `numbers`:
  - Transform each `number` to an array of its multiples up to `upper_bound`
- Flatten the array of multiple sub-arrays
- Remove duplicates from the multiples
- Return the sum of the multiples

### Determine multiples of number given an upper-bound

Given a `number` and an `upper_bound`:
- Initialize a `multiple` accumulator to `number`
- Initialize a `multiples` empty array
- Iterate while `multiple` < `upper_bound`
  - Append `multiple` to `multiples`
  - Increment `multiple` by `number` (to get next multiple)
- Return `multiples`

*Implementation Details*:


# REFACTORING

