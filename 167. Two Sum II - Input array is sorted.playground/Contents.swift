//: Playground - noun: a place where people can play

import UIKit

//binary search
/*
class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        
        var out = [Int]()
        
        
        for index in 0 ..< numbers.count {
            var check = false
            let complement = target - numbers[index]
            //print(index)
            var head = 0
            var tail = numbers.count-1
            var mid:Int
            while head <= tail {
                mid = (head + tail)/2
                //print("\(head) \(mid) \(tail)")
                //print("\(numbers[head]) \(numbers[mid]) \(numbers[tail]), \(complement)")
                
                
                if numbers[mid] > complement {
                    tail = mid-1
                }else if numbers[mid] < complement{
                    head = mid+1
                }else if numbers[mid] == complement{
                    if mid == index{
                        out.append(index+1)
                        out.append(mid+2)
                        check = true
                        break
                    }
                    out.append(index+1)
                    out.append(mid+1)
                    check = true
                    break
                }
            }
            if check == true{
                break
            }
        }
        return out
    }
}
*/

// squeeze
class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var out = [Int]()
        if numbers.count == 2 {
            out = [1,2]
            return out
        }
        
        var left = 0
        var right = numbers.count - 1
        while left < right {
            let value = numbers[left] + numbers[right]
            if value == target  {
                out = [left+1, right+1]
                break
            }else if value > target{
                right = right - 1
            }else if value < target{
                left = left + 1
            }
        }
        
        return out
    }
}

var a = Solution()
a.twoSum([2, 7, 11, 15], 9)
a.twoSum([2, 3, 4], 6)
a.twoSum([5, 25, 75], 100)
a.twoSum([1,2,3,4,4,9,56,90],8)
a.twoSum([1,2,4,4,4,4,4,4],8)
a.twoSum([1,2,3,4,4,4,4,4],8)
a.twoSum([1,4,4,4,4,4,4,4],8)
a.twoSum([4,4,4,4,4,4],8)



