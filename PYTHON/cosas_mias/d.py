from __future__ import division
from collections import Counter
import random
import string

VOWELS = "aeiou"
CONSONANTS = "".join(set(string.lowercase) - set(VOWELS))

def dealHand(n):
    numVowels = n // 3
    lettersets = [VOWELS] * numVowels + [CONSONANTS] * (n - numVowels)
    return Counter(c
        for letterset in lettersets
        for c in random.choice(letterset)
    )