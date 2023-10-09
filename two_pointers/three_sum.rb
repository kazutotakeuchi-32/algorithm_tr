# @param {Integer[]} nums
# @return {Integer[][]}
# @see https://leetcode.com/problems/3sum/

def three_sum(nums)
    sums = []
    nums.sort!
    nums.each_with_index do |num, idx|
        next if idx.positive? && num == nums[idx-1]

        left = idx + 1
        right = nums.length - 1

        while left < right
            case num + nums[left] + nums[right] <=> 0
            when 1
                right -= 1
            when 0
                sums << [num, nums[left], nums[right]]
                left += 1
                while nums[left] == nums[left - 1] && left < right
                    left += 1
                end
            when -1 
                left += 1
            end 
        end
    end
    sums
end