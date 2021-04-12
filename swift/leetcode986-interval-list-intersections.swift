class Solution {
        func intervalIntersection(_ firstList: [[Int]], _ secondList: [[Int]]) -> [[Int]] {
            if firstList.isEmpty || secondList.isEmpty {return []}
            var res = [[Int]]()
            var i = 0,j = 0
            while i<firstList.count && j < secondList.count {
                let start = max(firstList[i][0], secondList[j][0])
                let end = min(firstList[i][1], secondList[j][1])
                if start <= end {res.append([start,end])}
                
                firstList[i][1] < secondList[j][1] ? (i += 1) : (j += 1)
            }
            
            return res
        }
    }

