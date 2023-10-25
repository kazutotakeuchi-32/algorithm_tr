# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
# @see https://leetcode.com/problems/max-number-of-k-sum-pairs/solutions/2008203/ruby-100-100-simple-solution/?envType=study-plan-v2&envId=leetcode-75

# n 
def max_operations(nums, k)
    hash = Hash.new(0)
    ans = 0
    nums.each do |num|
      next if num >= k
      
      if hash[k-num] > 0 
         hash[k-num] -= 1
         ans += 1
      else
         hash[num] += 1
      end
    end  
    ans
 end
 
 