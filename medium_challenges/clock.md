# Clock

# PROBLEM

*Explicit Requirements*:
- **Input**: A `Clock` and an integer number of `minutes` (positive/negative)
- **Output**: A new `Clock` whose time is incremented by `minutes`
- You can only use arithmetic operations
- No need to worry about date... just time

*Methods to Implement*:

`Clock::at`:
- Invokes `::new`?
- **Input**: The `hour` and an optional `minute`
- Sets the `@hours` and `@minutes` of the clock

`Clock#to_s`:
- Displays the time

`Clock#+` and `Clock#-`
- **Input**: Minutes to add/sub
- **Output**: A new `Clock`

`Clock#==`: Compare clocks by hour & minute values

*Edge Cases*:
- Add/subtract past time boundaries
  - Wraps around before
- Add over an hour
  - Parse minugtes

*Questions*:
- Do we need to validate input? Assume no

*Initial Ideas and Mental Models*:
- Start w/ simple methods first (everything except `+` and `-`)
- Implement `-` to use `+`
- Convert time => normalized minutes => increment +/- w/ minutes => convert back to normalized minutes by taking modulus 60*60 => convert to hours

# EXAMPLES/TESTS

Separate file

# ALGORITHM

Constants:
- `MINUTES_IN_HOUR = 60`
- `HOURS_IN_DAY = 24`
- `MINUTES_IN_DAY = MINUTES_IN_HOUR * HOURS_IN_DAY`

Given a `clock` and an integer `minutes_delta`:
- Convert the clock's minutes and hours => `time_in_minutes`**
- Increment `time_in_minutes` by `minutes_delta`
- Normalize the `time_in_minutes` (modulus operation)**
- Convert `new_time_in_minutes` to `hours` and `minutes`  
- Return a new Clock, whose time comprises of `hours` and `mnutes`

*Sub-Problems*:

## Convert minutes & hours => minutes

- `hours` * `MINUTES_IN_HOUR` + `minutes`

## Convert minutes => hours & minutes

- Integer division: `total_minutes` / `MINUTES_IN_HOUR`
- Integer quotient is `hours`, Remainder is `minutes`

## Normalize the time in minutes

- Divide `minutes` by `MINUTES_IN_DAY`, and return remainder

# CODE

*Implementation Details*:
- Use modulus (%) to guarantee positive # output