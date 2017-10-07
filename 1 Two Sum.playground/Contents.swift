//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
/*
class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var out: [Int] = []
        for i in 0 ..< nums.count-1 {
            for j in i+1 ..< nums.count {
                if nums[i] + nums[j] == target{
                    print("\(i) \(nums[i]), \(j) \(nums[j])")
                    
                    out.append(i)
                    out.append(j)
                    
                }
            }
        }
        //print(out)
        return out
    }
}

var t: Solution = Solution()
t.twoSum([2, 7, 11, 15], 9)

*/

// One hash map method

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var out: [Int] = []
        var dict = [Int: Int]()
        var index = 0
        for num in nums {
            var complement = target - num
            
            if let ans1 = dict[complement]{
                //print("2: \(ans1), \(complement)")
                if ans1 != index{
                    out.append(ans1)
                    out.append(index)
                    break
                }
            }else{
                
            }
            
            dict[num] = index
            //print("1: \(index), \(num)")
            index = index + 1
        }
        //print(dict)
        return out
    }
}

var t: Solution = Solution()
t.twoSum([2, 7, 11, 15], 9)
t.twoSum([3,2,4], 6)
t.twoSum([3,3], 6)




