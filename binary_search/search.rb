# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
# @see https://leetcode.com/problems/binary-search/submissions/
def search(nums, target)

    l = 0
    r = nums.length - 1

    while l <= r
        mid = (l + r) / 2

        if nums[mid] == target  
            return mid
        elsif  nums[mid] < target
            l = mid + 1
        else
            r = mid - 1
        end
    end

    -1

end