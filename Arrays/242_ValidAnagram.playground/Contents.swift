/*
 Given two strings s and t, return true if t is an anagram of s, and false otherwise.
 Example 1:
 Input: s = "anagram", t = "nagaram"
 Output: true

 Example 2:
 Input: s = "rat", t = "car"
 Output: false

 Constraints:

 1 <= s.length, t.length <= 5 * 104
 s and t consist of lowercase English letters.
*/

import Foundation

func isAnagram(_ s: String, _ t: String) -> Bool {
    var sArr = Array(s)
    var tArr = Array(t)
    
    var sCount = [Character: Int]()
    var tCount = [Character: Int]()
    
    for char in sArr {
        sCount[char, default: 0] += 1
    }
    
    for char in tArr {
        tCount[char, default: 0] += 1
    }
    
    return sCount == tCount
}


print(isAnagram("anagram", "nagaram"))
