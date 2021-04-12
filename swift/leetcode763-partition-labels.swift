class Solution {
    func partitionLabels(_ S: String) -> [Int] {
        guard  S.count != 0 else{return []}
        var mapchar = [Character:Int]()
        let chars = Array(S)
        // 记录每个字符的最后位置
        for i in 0..<chars.count {
            mapchar[chars[i]] = i
        }
        
        var curEnd = 0,curStart = 0
        var ans = [Int]()
        
        while curStart < chars.count {
            curEnd = mapchar[chars[curStart]]!
            var j = curStart
            while j < curEnd {
                let end = mapchar[chars[j]]!
                if end > curEnd {curEnd = end}
                j += 1
            }
            
            ans.append(curEnd + 1 - curStart)
            curStart = curEnd + 1
        }
        return ans
        
    }
}
