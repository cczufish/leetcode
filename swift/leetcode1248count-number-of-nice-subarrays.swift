
class Solution {
    func numberOfSubarrays(_ nums: [Int], _ k: Int) -> Int {
        var result = 0 ,currentSum = 0
        var numsDict = [0:1]
        for num in nums {
            currentSum += num & 1 // 按位与运算
            if numsDict.keys.contains(currentSum-k) {
                result += (numsDict[currentSum-k] ?? 0)
            }
            numsDict[currentSum] = (numsDict[currentSum] ?? 0) + 1
        }
        return result
    }
}


