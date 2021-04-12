class Solution {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        var resultArr = [Int]()
        for n in nums {
            resultArr.append(n*n)
        }
        return resultArr.sorted()
    }
}





/*
 1、new一个大小与入参大小一致的int数组；
 2、声明两个指针下标，从左往右的指针和从右往左的指针；
 3、for循环，从数组尾下标到起始下标0
   i.若从右往左正数绝对值较大则将较大绝对值的数平方放入数组末位，同时从右到左指针左移一位；
   ii.若从左往右非正数绝对值较大则将较大绝对值的数放入数组末位，同时从左到右指针右移一位；
 4、循环结束，返回新数组的平方数的有序数组；
 
 */

class Solution {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        var n = nums.count
        var resultArr = Array.init(repeating: 0, count: n)
        var i = 0,j = n - 1
        var p = n - 1
        while p >= 0 {
            if abs(nums[i]) > abs(nums[j]) {
                resultArr[p] = nums[i] * nums[i]
                i+=1
            }else{
                resultArr[p] = nums[j] * nums[j]
                j-=1
            }
            p-=1
        }
        
        return resultArr
    }
}


