# Beer Song

# PROBLEM

*Explicit Requirements*:
- **Input**: `verse_number`(s)
- **Output**: A string for that `verse_number`
- Methods: `verse` (retrieve a particular verse), `verses` (retrieve a range of verses), `lyrics` (full song)

*Implicit Requirements*:
- Each string: Contains the `verse_number` twice, and one less than the `vcerse_number` once

*Edge Cases*:
- Verse 1 has a different scheme
- Verse 0 has a different scheme

*Questions*:
- Do we need to validate verse #s? (Assumption: No)

*Initial Ideas and Mental Models*:
- Implement `verse` first; `verses` uses `verse`, and `lyrics` using `verses`
- Extract into helper methods for simplicity
  - `first_line` (same for all)
  - `bottles_of_beer`: 'X bottle(s?) of beer'
    - X can be: a number of "No more"

# ALGORITHM

## Determine a particular verse

Given a `verse_number`:
- If the `verse_number` is 0:
  - Return the modified string: `first_line` plus custom second line
- Else (it's 1-99)
  - Return a string w/ `first_line` plus standard second line

*Sub-Problems*:




# CODE

*Implementation Details*: