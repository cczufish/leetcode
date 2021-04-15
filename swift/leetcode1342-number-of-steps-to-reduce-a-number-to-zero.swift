
class Solution {
    func numberOfSteps(_ num: Int) -> Int {
        var result = 0
        var tempNum = num
        while tempNum != 0 {
            if tempNum % 2 == 0 {
                tempNum = tempNum / 2
            }else if tempNum % 2 == 1 {
                tempNum -= 1
            }
            result += 1
        }
        return result
    }
}


// 递归

class Solution {
    func numberOfSteps(_ num: Int) -> Int {
        if num == 0 {return 0}
        return 1 + (num % 2 == 0 ? numberOfSteps(num/2) : numberOfSteps(num-1))
    }
}


