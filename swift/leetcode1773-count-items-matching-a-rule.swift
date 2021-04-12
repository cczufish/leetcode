class Solution {
    func countMatches(_ items: [[String]], _ ruleKey: String, _ ruleValue: String) -> Int {
        var ans = 0 ,n = items.count
        for i in 0..<n {
            if ruleKey == "type" && ruleValue == items[i][0] ||
            ruleKey == "color" && ruleValue == items[i][1] ||
                ruleKey == "name" && ruleValue == items[i][2] {
                ans += 1
            }
        }
        return ans
    }
}
