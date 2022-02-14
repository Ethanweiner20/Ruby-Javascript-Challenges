# PROBLEM

*Requirements*:
- **Input**: `word` and a list of anagram `candidates`
- **Output**: Sublist of anagrams from `candidates` that are actually anagrams
- **Anagram**: 2 words are anagrams if same counts for each letter
  - Just containing same letters is not enough
  - Identical words are NOT considered anagrams
- Result should be case-insensitive
- Order of sublist doesn't matter
- Can NOT determine if anagrams by sum of ordinal values

*Edge Cases*:
- Same letters, but not same counts => Not anagrams
- Empty strings => Not anagrams

*Questions*:
- Are 2 empty strings considered anagrams? Assumption: No, because they are identical
- If the `candidates` contain multiple of the same anagram, should those multiple be included? (i.e. are duplicates allowed in sublist?)
  - Assumption: No (must uniqify)

*Initial Ideas and Mental Models*:
- Tallying?
- Normalize input/output

# DATA STRUCTURES

- Input: Array
- Output: Array (<= size of input)

# ALGORITHM

## Solution 1: Letter Counts

Given a `word` and a list of anagram `candidates`:
- Select `candidates` that are an anagram with `word`**
- Return unique `candidates` (#uniq)

*Sub-Problems*:

## Determine if two words are anagrams

Given a `word` and a `candidate`
- Reassign `word` and `candidate` to their downcased versions
- [Guard clause] Return false if they are the same word
- If the letter counts of `word` and `candidate` are the same, return true (#tally?)**
- Otherwise, return false

### Do two words have the same letter count?

Given `word1` and `word2` (lowercase strings):
- Break each into characters
- Create a hash w/ the number of occurrences of each character (#tally)
- Compare the resulting hashes

## Solution 2: Sorted Character List

- If two words have the same characters, an array of their characters sorted will be equivalent...

# CODE

*Implementation Details*:
- #tally