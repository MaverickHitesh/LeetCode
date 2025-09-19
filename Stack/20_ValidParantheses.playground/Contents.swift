/*
 Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
 An input string is valid if:
 Open brackets must be closed by the same type of brackets.
 Open brackets must be closed in the correct order.
 Every close bracket has a corresponding open bracket of the same type.
  

 Example 1:
 Input: s = "()"
 Output: true

 Example 2:
 Input: s = "()[]{}"
 Output: true

 Example 3:
 Input: s = "(]"
 Output: false

 Example 4:
 Input: s = "([])"
 Output: true

 Example 5:
 Input: s = "([)]"
 Output: false

 Constraints:

 1 <= s.length <= 104
 s consists of parentheses only '()[]{}'.
*/

import Foundation

func isValid(_ s: String) -> Bool {
    if s.isEmpty {
        return false
    }
    
    var stack: [Character] = []
    
    for c in s {
        switch c {
        case "(" : stack.append(")")
        case "[" : stack.append("]")
        case "{" : stack.append("}")
        default :
            if let lastChar = stack.last, lastChar == c {
                stack.removeLast()
            } else {
                return false
            }
        }
    }
    
    return stack.isEmpty
}

print(isValid("()"))
print(isValid("()[]{}"))
print(isValid("(]"))
print(isValid("([])"))
print(isValid("([)]"))
print(isValid("("))
print(isValid(")"))


