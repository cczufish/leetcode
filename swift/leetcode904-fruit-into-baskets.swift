class Solution {
    /*
     滑动窗口，窗口内的水果种类数最多2种
     窗口右端点一直向右扩大，左端点在水果种类 > 2种时，向右移动
     */
    func totalFruit(_ tree: [Int]) -> Int {
        var map = [Int:Int]()
        var i = 0, j = 0,n = tree.count,maxf = 0
        while j < n {
            if map.count > 2 // 大于2种水果
            {
                if let duplicate =  map[tree[i]] {
                    map[tree[i]]! = duplicate - 1 //丢弃左端
                }
                if map[tree[i]] == 0 {
                    //                    map[[tree[i]]] = nil
                    map.removeValue(forKey: tree[i])
                }
                
                i+=1
            }
            
            if let duplicate =  map[tree[j]] {
                map[tree[j]] = duplicate + 1
            }else{
                map[tree[j]] = 1
            }
            
            if map.count <= 2 {
                maxf = max(maxf, j-i+1)
            }
            j+=1
        }
        return maxf
    }
}
