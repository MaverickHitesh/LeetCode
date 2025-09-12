/*
#217 - Contains Duplicate -> https://leetcode.com/problems/contains-duplicate/description/
 
Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.

 Example 1:
 Input: nums = [1,2,3,1]
 Output: true
 Explanation:
 The element 1 occurs at the indices 0 and 3.

 Example 2:
 Input: nums = [1,2,3,4]
 Output: false
 Explanation:
 All elements are distinct.

 Example 3:
 Input: nums = [1,1,1,3,3,4,3,2,4,2]
 Output: true

 Constraints:

 1 <= nums.length <= 105
 -109 <= nums[i] <= 109
*/

import Foundation

/// Runtime: 31ms - Beats: 7.03%
/// /// Time & Space Complexity
/// Time complexity: O(n)
/// Space complexity: O(n)
func containsDuplicate(_ nums: [Int]) -> Bool {
    var dict = [Int: Int]()
    for n in nums {
        if let _ = dict[n] {
            return true
        } else {
            dict[n] = 1
        }
    }
    
    return false
}

print(containsDuplicate([1,2,3,1])) // true
print(containsDuplicate([1,2,3,4])) // false
print(containsDuplicate([1,1,1,3,3,4,3,2,4,2])) // true

/// Runtime: 24ms - Beats: 20.06%
/// Time & Space Complexity
/// Time complexity: O(n)
/// Space complexity: O(n)
func containsDuplicate2(_ nums: [Int]) -> Bool {
    var set = Set<Int>()
    for n in nums {
        if set.contains(n) {
            return true
        } else {
            set.insert(n)
        }
    }
    
    return false
}

print(containsDuplicate2([1,2,3,1])) // true
print(containsDuplicate2([1,2,3,4])) // false
print(containsDuplicate2([1,1,1,3,3,4,3,2,4,2])) // true
