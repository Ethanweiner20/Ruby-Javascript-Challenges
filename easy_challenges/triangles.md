# Triangles

# PROBLEM

*Explicit Requirements*:
- **Input**: 3 side lengths
- **Output**: Type of triangle (string)
- Raise `ArgumentError` for invalid side lengths:
  - 0
  - Negative
  - Inequality (sum of 2 sides > 3rd side)

*Implicit Requirements*:
- Side lengths can be any rational # (including negatives)
- Side lengths can be listed in any order
- Construction of `Triangle` may raise errors (invalid lengths)
- `kind` assumes valid side lengths

*Edge Cases*:
- Invalid side lengths (listed above)

*Initial Ideas and Mental Models*:
- Sort array for simplicity?
- Triangle Construction
  - Check cases individually
- Triangle Kind Checking
  - Break into 3 separate problems:
  - Equilateral?
  - Isosceles?
  - else Scalene?
  - Progressively check less-specific cases...

# DATA STRUCTURES

- Array to store sides as parameters?

# ALGORITHM

## Triangle Construction

Given `side_lengths`:
- If any `side_length` is 0 => raise error
- If any `side_length` is negative => raise error
- If the sum of the lengths are not valid => raise error

### Check for valid length sum

*Note*: Valid if 2 shortest sides > longest side

Given `side_lengths`
- Sort the side lengths in ascending order (`#sort`)
- If first two summed > third => return `true`
- Otherwise, return `false`

## Triangle Checking

Given `sides` lengths:
- If all 3 are equal => equilateral
- Else if 2 are equal => isosceles
- Else => scalene

*Sub-Problems*:




# CODE

*Implementation Details*:

- Splat operator to bundle args as array?