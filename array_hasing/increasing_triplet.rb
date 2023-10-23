# @param {Integer[]} nums
# @return {Boolean}
# @see https://leetcode.com/problems/increasing-triplet-subsequence/submissions/?envType=study-plan-v2&envId=leetcode-75
def increasing_triplet(nums)
    first = second = Float::INFINITY

    nums.each do |num|
        if num <= first
            first = num
        elsif num <= second
            second = num
        else
            return true
        end
    end

    return false
end