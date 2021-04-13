class Solution {
    func subarraySum(_ nums: [Int], _ k: Int) -> Int {
        var len = nums.count,result = 0
        for i in 0..<len {
            var curSum = 0
            for j in i..<len {
                curSum += nums[j]
                if curSum == k {
                    result += 1
                }
            }
        }
        return result
    }
}



class Solution {
    // 字典法记录重复值
    func subarraySum(_ nums: [Int], _ k: Int) -> Int {
        if nums.isEmpty {return 0}
        var result = 0
        var tempSum = 0
        var numsDict = [0:1]
        for n in nums {
            tempSum += n
            result += (numsDict[tempSum - k] ?? 0)
            if numsDict.keys.contains(tempSum) {
                numsDict[tempSum]! += 1
            }else{
                numsDict[tempSum] = 1
            }
        }
        return result
    }
}
