# Robot Name

# PROBLEM

*Explicit Requirements*:
- Create a `Robot` whose name can be re-generated:
  - Name is randomly generated upon boot-up
  - Name can be reset (wipe settings)
  - New name is randomly generated after that
  - *Collisions must be avoided*
  - *Names should be truly random* (no predictable sequence)

*Implicit Requirements*:
- First 2 characters are uppercase letters
- Last 3 characters are digits
- Name should be set to an instance variable ("sticks")
- Method names: `name`, `reset`

*Questions*:


*Initial Ideas and Mental Models*:
- [Hackish solution] Simply regenerate random name if already taken (store as *class variable*)
- [Better solution]
  - Store a `@usable_characters` instance variable: Nested array
    - Each array contains characters remaining
  - Remove used characters from usable characters?
- Simply generate a random character from each

# EXAMPLES/TESTS

Separate file

# DATA STRUCTURES

- `@@names` class variable
- Use arrays to store possible characters to randomly select from...

# ALGORITHM

Given the already chosen `@@names`
- Randomly generate a name, until it is not included in the taken `@@names`

## Randomly generate a name

- Randomly generate 2 uppercase characters
- Randomly generate 3 digits
- Put together as a string

# CODE

*Implementation Details*: