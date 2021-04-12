class Solution {
    func groupThePeople(_ groupSizes: [Int]) -> [[Int]] {
        var res = [[Int]]() //结果集
        var dic = [Int:[Int]]() //代表着用户和对应id的键值关系
        
        for i in 0..<groupSizes.count {
            let number = groupSizes[i]
            dic[number,default: [Int]()].append(i)
            
            let temp = dic[number] //返回这个指定关系对应的value
            
            if temp!.count == number { //如果长度刚好是对应的分组的长度，就可以添加到res
                res.append(temp!)
                dic[number] = [Int]()
            }
        }
        return res
    }
}
