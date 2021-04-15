class Solution {
    func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
        var result = 0
        for j in jewels {
            for s in stones {
                if j == s {
                    result += 1
                }
            }
        }
        return result
    }
}


class Solution {
    func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
        let types = Array(jewels)
        var result = 0
        for s in stones {
            if types.contains(s) {
                result += 1
            }
        }
        return result
    }
}




