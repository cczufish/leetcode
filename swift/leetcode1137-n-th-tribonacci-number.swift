
class Solution {
    var array = Array(repeating: 0, count: 38)

    func tribonacci(_ n: Int) -> Int {
        if n == 0 {return 0}
        else if n == 1 || n == 2 {return 1}
        if array[n] > 0 {
            return array[n]
        }else {
            array[n] = tribonacci(n-1) + tribonacci(n-2) + tribonacci(n-3)
            return array[n]
        }
    }
}

