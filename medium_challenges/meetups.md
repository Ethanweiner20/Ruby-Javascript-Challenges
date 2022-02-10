# Meetups

# PROBLEM

*Explicit Requirements*:
- **Input**: A `weekday`, `month`, `year`, and `schedule`
  - A `schedule` can be one of: first, second, third, fourth, fifth, last, teenth
  - `schedule` is case-insensitive
- **Output**: Exact date (`Date` object) of meeting in `month` and `year`
- Meetup date: Monthly on the same day of the week
- *Goal*: Given a m

*Implicit Requirements*:
- `date` library must be used
- If the exact date can not be found, return `nil`
- There will *always* be a `teenth` day of the month

*Methods*:

`initialize`: Takes a `month`, `year`
`day`: Takes a `weekday` and `schedule` => returns `Date` object

*Edge Cases*:
- `fifth`: Might not happen every month
  - To avoid rolling over into next month, stop iterating at end of month...

*Questions*:
- How to deal w/ inputs that don't find a valid date (e.g. `fifth`)
  - Return `nil`

*Initial Ideas and Mental Models*:

Three different schedule types:
- Regular: first-fourth
- fifth: Regular w/ nil possibility
- teenth
- Iterate through days of the month until the properly scheduled day is found
  - Accumulate how many times that weekday is scene
- To avoid rolling over into next month, stop iterating at end of month...

REGULAR Example:

Second Friday of March 2014

Num times since Friday: 0

Iterate over the days in March:
- First Friday = March 7th => increment num times seen
- Second Friday = March 14th => increment num times
- Return March 14th b/c seen
- If never found => return nil

TEENTH:

Iterate over 7 days in the Month, starting at 13

# EXAMPLES/TESTS

Separate page

# DATA STRUCTURES

- Continual creation of new `Date` objects as we iterate, return the proper one

# ALGORITHM

# Solution 1: Iterate over dates as necessary

## All Dates

Given a `year`, `month`, `weekday`, and `schedule`:
- If the `schedule` is "teenth", perform teenth operation instead; otherwise:
- Initialize a `candidate_date` to the first day of the `month` on `year`
- Initialize a `times_weekday_seen` to 0
- Iterate until `candidate_date` is the last day of the month**
  - If `candidate_date` is on `weekday`**:
    - Increment `times_weekday_seen`
    - Return `candidate_date` if the `times_weekday_seen` is in accordance with `schedule` (# use hash to convert `schedule`)
  - Otherwise, reassign `candidate_date` to a date incremented by 1 day (#next_day)
- [No date was found] Return `nil`

## Teenth

Given a `year`, `month`, and `weekday`:
- Initialize a `candidate_date` to the 13th day of the `month` on `year`
- Iterate 7 times:
  - If `candidate_date` is on `weekday`**, return `candidate_date`
  - Otherwise, reassign `candidate_date` to a date incremented by 1 day (#next_day)

## Last

Given a `year`, `month`, and `weekday`:
- Determine the `last_day` of `month`**
- Initialize a `candidate_date` to 7 less than the `last_day`
  - *Note*: This guarantees that every last weekday is iterated over
- Iterate 7 times
  - If `candidate_date` is on `weekday`**, return `candidate_date`
  - Otherwise, reassign `candidate_date` to a date incremented by 1 day (#next_day)

# Solution 2: Find starting date

Given the `schedule`:
- Find the appropriate starting date for that schedule
- Search for 7 days out from that starting date

*Sub-Problems*:

### Determine if a date is the last day of the month

- Increment date by 1 day (#next_day)
- Return true if month changed, false otherwise

### Determine if a date is on a weekday

Given a `date` and a `weekday`:
- Retrieve the `weekday_number` associated with `date` (#wday)
- Compare the weekday associated with `weekday_number` to `weekday` (#use a hash)

# CODE

*Implementation Details*:
- `Date` library
- Use a hash `{ first => 1...}` to determine the # associated w/ the day
- `Date#next_day`: Returns new Date