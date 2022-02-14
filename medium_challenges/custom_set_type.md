# Custom Set Type

# PROBLEM

*Requirements*:
- Build a *custom set type*
- **Set**: A collection of UNIQUE elements
- Assumption: All elements of a set must be *numbers*
- Internal representation doesn't matter; interface must simply behave like a set

*Methods*:
- `CustomSet#initialize`: Array -> _: Initialize set w/ an array
- `CustomSet#empty?`: _ -> Boolean
- `CustomSet#contains?`: Number -> Boolean
- `CustomSet#subset?`: CustomSet -> Boolean: Is the current set a subset of the given set?
  - An empty set is a subset of ANY set (including empty set)
  - Set A is subset of Set B if: Every element of A is included in B
  - Use `contains?` under the hood
- `CustomSet#disjoint?`: CustomSet -> Boolean: Do the sets include all different elements?
  - *Edge case*: If either is empty set -> disjoint
  - Two sets are disjoint if neither set is a subset of one another
    - e.g. [1, 2, 3] & [2]: [2] is subset of [1, 2, 3] -> Not disjoint
    - e.g. [1, 2] & [3]: Neither are subsets -> Not disjoint
    - e.g. [1, 2] & [1, 2]
  - Two sets are disjoint if all the elements in one set are not included in the other set (& vice versa)
- `CustomSet#eql?`: CustomSet -> Boolean: Are the two sets equal?
  - Order of input array doesn't matter...
  - Note: `#==` should be **alias** for `#eql?`: Use in testing
- `CustomSet#add`: X -> _: Adds element to set
  - Note: Duplicates shouldn't be "added"
- `CustomSet#intersection`: CustomSet -> CustomSet
  - Two empty sets => Empty set
  - Use recursion?
- `CustomSet#difference`: CustomSet -> CustomSet
  - *Depends on order* of input sets
  - **Difference**: Set A's difference with Set B is all elements in A that are NOT in B
  - Use `CustomSet#contains?`
- `CustomSet#union`: CustomSet -> CustomSet
  - **Union**: Set A's difference with Set B is all elements in A AND B
  - Use `CustomSet#union`

*Edge Cases*:


*Questions*:


*Initial Ideas and Mental Models*:
- Use an array internally?
- Just keep duplicates in array?
  - *Annoying* to deal w/ removing array duplicates -> just use built-in methods
  - Don't use `#uniq` (unnecessary processing)
- Represent the set using a **function**?
  - i.e. `contains` is the basis of everything else?
  - The Set "appears" like an object, but under the hood, it's just a function?
- Look in notes about sets as functions later...
- For set functions, just STORE THE OTHER SETS internally => see if they pass
- Goal: Not use an array at all

# EXAMPLES/TESTS

Separate file

# SUB-PROBLEMS


*Implementation Details*:


# REFACTORING

