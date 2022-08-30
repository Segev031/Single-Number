class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var counts: [Int: Int] = [:]

        for item in nums {
            counts[item] = (counts[item] ?? 0) + 1
        }
        for (key, value) in counts {
            if (value == 1) {
                return key
            }
        }
        return -1
    }
}