# Simle Linked List

# PROBLEM

*Explicit Requirements*:
- **Input**: 
- **Output**:

*Classes*:

- `Element`:
  - Stores `@datum` itself
  - Stores the `@next` element (element or `nil`)
  - `Element#tail?`: Is this the last element in the list? (no next)
  - `Element#==`: Compare based on identity (inherit `Object#==`)

- `SimpleLinkedList`
  - `#size`: Determines size of list
  - `#empty?`: Is the list empty
  - `#push`: Adds a new `Element` (w/ an empty link)
    - Must push to **BEGINNING** of list
  - `#peek`: Return data of first element (or `nil`)
  - `#head`: Returns the first element itself (should directly return `Element`)
  - `#pop`: Removes and returns the last element
    - Note: The last element is really the first element in the list...

*Initial Ideas and Mental Models*:

- A `SimpleLinkedList` comprises of:
  - The first element (which links to all other elements)
  - Methods to perform operations
  - The linked list SHOULD NOT store all element
- *NOTE*: LinkedLists have reverse order:
  - Items are pushed to the beginning
  - Items are popped from the beginning

# EXAMPLES/TESTS



# DATA STRUCTURES



# ALGORITHM

`SimpleLinkedList::from_a`:

Given an `array` (might be `nil`):
- Initialize an empty `list`
- If `array` is `nil`, return `list`
- Otherwise:
  - make a copy of array
  - iterate until `array_copy` is empty
    - Remove (`#pop`) the final element from `array_copy`, and push it to `list`
  - Return `list`

`SimpleLinkedList#to_a`:

*Note*: Array should be in same order as list

`SimpleLinkedList#reverse`:

*Notes*:
- No need to reverse in place
- Avoid direct mutation by cloning?

3 options:
- Iteration
- Recursion w/o accumulator
- Recursion w/ accumulator

Iterative:
- Create a `list_copy` for reversal
- Initialize an empty `reversed` list
- Until `list_copy` is empty:
  - Pop elements from `list_copy`
  - Push element to `reversed`
- Return `reversed`

Recursive w/ accum (similar process):
- Create a `list_copy` for reversal
- Iterate from the head of list to the end

*Sub-Problems*:




# CODE

*Implementation Details*: