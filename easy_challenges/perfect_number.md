# Perfect Number

# PROBLEM

*Requirements*:
- **Input**: A `number`
- **Output**: The Nicomachus classification (string) for the number: deficient, perfect, or abundant
- Input validation: If `number` is not a natural #, raise a `StandardError`

*Edge Cases*:
- Input validation: If `number` is not a natural #, raise a `StandardError`
- Divisor of 1: Should not be included

*Questions*:
- Is 0 considered a natural #? Assumption: No

*Initial Ideas and Mental Models*:
- Break up into positive divisors (array), compare sum to #
- Break up via pair-creation method (only check until the pairs begin to duplicate)


# EXAMPLES/TESTS

Separate sheet

# SUB-PROBLEMS

## Classification

Given a `number`:
- [Guard clause] Raise error unless `number` is natural**
- Determine positive divisors for #**
- Compare sum of positive divisors to `number` => classify

### Is a number natural?

- Check if the `number` is:
  - An Integer (#instance_of?)
  - Positive (#positive?)

### Determine positive divisors

*Note*: Only need to iterate until square root, because beyond that, we get overlapping pairs

Given a positive `number`:
- Initialize a `divisors` to an array with the divisor 1
- Iterate from 2 to square root of `number`, tracking the `candidate_divisor`:
  - Divide `number` by `candidate_divisor`
  - If the remainder is zero => append quotient and `candidate_divisor` to `divisors`
- Return `divisors`

*Implementation Details*:
- % for modulus
- `Math.sqrt`

# REFACTORING

