# Diamond

# PROBLEM

*Explicit Requirements*:
- **Input**: A `letter` (string)
  - Assumption: Is uppercase
- **Output**: A diamond
  - Starts w/ `A`
  - Supplied letter at widest point
  - All rows, except 1st, & last have exactly 2 identical latters
  - Symmetric (horizontally & vertically)
  - Top half: letters are in ascending order
  - Bottom  half: letters are in descending order
  - Diamond *stretches* to meet the letter

*Implicit Requirements*:
- The answer should be a multi-line string

*Edge Cases*:
- Letter is `A` (just create the `A`)

*Questions*:
- Must we validate input? (assumption: no)

*Initial Ideas and Mental Models*:
- Base starting width on index of alphabet
- Start from given letter, end w/ 'A'
- Handle A's differently
- Spacing is alphabet index + 1
- Handle individual row creation: pass letter + total width?

# EXAMPLES/TESTS

Separate file

# DATA STRUCTURES

- Input: String
- Output: Multi-Line String
- Auxiliary: Array to store alphabet / indices
- Intermediate: Temporary arrays for half?

# ALGORITHM

## Solution 1

Given a `max_letter`:
- Determine the `total_width` of the diamond**
- Retrieve the `bottom_half` of the diamond** (array)
- Retrieve the `top_half` of the diamond by reversing the bottom half (array) and removing the last row (middle row)
- Join the `top_half` and `bottom_half` as string

*Sub-Problems*:

### Retrieve the bottom half of the diamond

Given a `max_letter` and `total_width`:
- Initialize a `rows` accumulator to an empty array
- Iterate from the `max_letter` downto 'A', tracking each `letter`:
  - Append to `rows`:
    - If `letter` is `A` => return 'A', centered in `total_width`
    - Otherwise: `letter` plus appropriate spacing** plus `letter`, centered in `total_width`
- Return `rows`

### Determine the spacing for a given letter

Given a `letter`:
- Return the (index of letter) * 2 - 1

### Determine width of diamond given the letter

Given a `letter`:
- Find the `spacing` of that letter plus 2

# CODE

*Implementation Details*:

- `String#center`
- `String#*` (for creating space)