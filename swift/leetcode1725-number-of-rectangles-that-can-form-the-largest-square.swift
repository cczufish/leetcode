class Solution {
    func countGoodRectangles(_ rectangles: [[Int]]) -> Int {
        guard rectangles.count != 0 else {
            return 0
        }
        
        var res = 1
        var maxLen = 0
        for rect in rectangles {
            let maxL = min(rect[0], rect[1]) // 长和宽取一个较小的
            if maxL > maxLen {
                maxLen = maxL
                res = 1
            }else if maxL == maxLen {
                res += 1
            }
        }
        return res
    }
}
