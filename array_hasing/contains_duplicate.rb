# @param {Integer[]} nums
# @return {Boolean}
# @see https://leetcode.com/problems/contains-duplicate/
def contains_duplicate(nums)
    hash = {}

    nums.each do |num|
        if hash[num]
            return true
        else    
            hash[num] = true
        end
    end

    false
end
