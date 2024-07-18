import UIKit

class Solution {
    
/* time limit exceeded
    func maxArea(_ height: [Int]) -> Int {
        let length = height.count
        if length == 0 {
            return 0
        }
        var maxi = 0
        var curr = 0
        var i = 0
        var j = 0
        while i < length {
            j = i + 1
            while j < length {
                curr = min(height[i], height[j]) * (j - i)
                maxi = max(curr, maxi)
                j += 1
            }
            i += 1
        }
        return maxi
    }
*/
    
    
    func maxArea(_ height: [Int]) -> Int {
        let length = height.count
        guard length > 1 else { return 0 }
        var left = 0
        var right = length - 1
        var maxi = 0
        while left < right {
            
            maxi = max(maxi, (right - left) * min(height[left], height[right]))
            
            if height[right] < height[left] {
                right -= 1
            } else {
                left += 1
            }
            
        }
        return maxi
    }
    
    func main() {
        print(maxArea([1,8,6,2,5,4,8,3,7]))
    }
}

let sol = Solution()
sol.main()





