# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
# @see https://leetcode.com/problems/two-sum/description/

def two_sum(nums, target)
    i = 0
    while i < nums.length - 1
        j = i + 1
        while j < nums.length
            if  target == nums[i] + nums[j]
                return [i,j]
            end
            j+=1
        end
        i+=1
    end
    []
end