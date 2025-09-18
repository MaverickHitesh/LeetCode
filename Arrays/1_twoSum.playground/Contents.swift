/*
 Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

 You may assume that each input would have exactly one solution, and you may not use the same element twice.

 You can return the answer in any order.
 
 Example 1:

 Input: nums = [2,7,11,15], target = 9
 Output: [0,1]
 Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
 
 Example 2:

 Input: nums = [3,2,4], target = 6
 Output: [1,2]
 
 Example 3:

 Input: nums = [3,3], target = 6
 Output: [0,1]
  
 Constraints:

 2 <= nums.length <= 104
 -109 <= nums[i] <= 109
 -109 <= target <= 109
 Only one valid answer exists.
  
 Follow-up: Can you come up with an algorithm that is less than O(n2) time complexity?
*/

import Foundation

// Brute force approach with complexity of O(n2)
func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    for i in 0..<nums.count {
        for j in i+1..<nums.count {
            if nums[i] + nums[j] == target {
                return [i, j]
            }
        }
    }
    
    return []
}

//print(twoSum([3,3], 6))

//Input: nums = [2,7,11,15], target = 9
//Output: [0,1]
//Input: nums = [3,2,4], target = 6
//Output: [1,2]
//Input: nums = [3,3], target = 6
//Output: [0,1]
func twoSumUsingMap(_ nums: [Int], _ target: Int) -> [Int] {
    var prevMap = [Int: Int]()
    
    for i in 0..<nums.count {
        let n = nums[i]
        if let index = prevMap[target - n] {
            return [index, i]
        }
        
        prevMap[n] = i
    }
    
    return []
}

print(twoSumUsingMap([2,7,11,15], 9))
print(twoSumUsingMap([3,2,4], 6))
print(twoSumUsingMap([3,3], 6))

