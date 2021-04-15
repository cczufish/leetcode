class Solution {
    func insert(_ intervals: [[Int]], _ newInterval: [Int]) -> [[Int]] {
        var insertInterval = newInterval
        var res = [[Int]]()
        var n = intervals.count,current = 0
        
        while current < n && intervals[current][1] < insertInterval[0] { // 无重叠的区间
            res.append(intervals[current])
            current += 1
        }
        print(res)
        while current < n && intervals[current][0] <= insertInterval[1] { // 重叠的区间
            insertInterval[0] = min(insertInterval[0],intervals[current][0])
            insertInterval[1] = max(insertInterval[1], intervals[current][1])
            current += 1
        }
        
        res.append(insertInterval)
                print(res)

        while current < n { // 剩下的区间
            res.append(intervals[current])
            current += 1
        }
                print(res)

        return res
    }
}



class Solution {
    func insert(_ intervals: [[Int]], _ newInterval: [Int]) -> [[Int]] {
        var tempArray = intervals
        tempArray.append(newInterval)
        let listIntervals = tempArray.sorted{$0[0] < $1[0]} // 按照区间开始排序
        if listIntervals.count < 2 {return listIntervals}
        var res = [[Int]]()
        var tArray = listIntervals[0]
        
        for i in 1..<listIntervals.count {
            if tArray[1] >= listIntervals[i][0] { // 有闭合 合并
                tArray = [tArray[0],max(tArray[1], listIntervals[i][1])]
            }else{ // 没有闭合 加入结果
                res.append(tArray)
                tArray = listIntervals[i]
            }
            
            if listIntervals.count == i + 1 {
                res.append(tArray)
            }
        }
        return res
        
    }
}



