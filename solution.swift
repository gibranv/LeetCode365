class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        //I need return the indices of the two numbers such that
        //they add up to a specific target.
        var indices = [Int]() // This var is for save the index to return
        var sum = 0;
        for i in 0..<nums.count {
            for j in 0..<nums.count {
                if(j == i) {
                    continue
                } else {
                    sum = nums[i] + nums[j]
                    if(sum == target) {
                        indices.append(i)
                        indices.append(j)
                        return indices
                    }
                }
            }
        }
        
        return indices
    }
}
