//brute force
/*
class Solution {
    func kEmptySlots(_ flowers: [Int], _ k: Int) -> Int {
        if k > flowers.count-2 {return -1}
        var slots = Array(repeating: false, count: flowers.count)
        for day in 0 ..< flowers.count {
            //print("flowers[day] = \(flowers[day])")
            slots[flowers[day]-1] = true
            //print("slots[] = \(slots)")
            if day == 0 {continue}
            for i in 0 ..< slots.count-k-1 {
                //print("i = \(i)")
                if slots[i] == true{
                    var check = true
                    for j in 1...k {
                        //print("j = \(j)")
                        if slots[i+j] == true {
                            //print("hihihihi")
                            check = false
                            break
                        }
                    }
                    if check == true && slots[i+k+1] == true {
                        //print("returning \(day)")
                        return day+1
                    }
                }
            }
        }
        return -1
    }
}
*/

class Solution {
    func kEmptySlots(_ flowers: [Int], _ k: Int) -> Int {
        if k > flowers.count-2 {return -1}
        var slots = Array(repeating: false, count: flowers.count)
        for day in 0 ..< flowers.count {
            //print("flowers[day] = \(flowers[day])")
            let nowBlooming = flowers[day]-1
            slots[nowBlooming] = true
            //print("slots[] = \(slots)")
            if day == 0 {continue}
            
            var leftTargetIndex = nowBlooming-k-1
            var rightTargetIndex = nowBlooming+k+1
            var leftCheck = true
            var rightCheck = true
            
            
            //look backward
            //print("leftTargetIndex: \(leftTargetIndex), rightTargetIndex \(rightTargetIndex)")
            if leftTargetIndex >= 0 && (slots[leftTargetIndex] == true) {
                //print("checking backward")
                if k == 0 {return day+1}
                for i in 1...k {
                    //print("i : \(i)")
                    if slots[nowBlooming-i] == true {
                        //print("???, \(leftTargetIndex+i)")
                        leftCheck = false
                        break
                    }
                }
                if leftCheck == true{
                    return day+1
                }
            }
            //look forward
            if rightTargetIndex <= slots.count-1 && (slots[rightTargetIndex] == true){
                if k == 0 {return day+1}
                for i in 1...k {
                    if slots[nowBlooming+i] == true{
                        rightCheck = false
                        break
                    }
                }
                if rightCheck == true {
                    return day+1
                }
            }
            
        }
        return -1
    }
    
}

var a = Solution()

a.kEmptySlots([1,3,2], 1)
a.kEmptySlots([1,2,3], 1)
a.kEmptySlots([9,2,3,1,4,10,7,6,5,8], 10)
a.kEmptySlots([1,2,3], 0)
a.kEmptySlots([1,3,2], 0)



