# @see https://leetcode.com/problems/longest-consecutive-sequence/submissions
# @param {Integer[]} nums
# @return {Integer}

def longest_consecutive(nums)
    stack = []
    count = 0
    max = 0
    nums.uniq.sort.each do |n|
       prev_n = stack.pop 
 
       if prev_n && n - prev_n == 1
          count+= 1
       else
          max = max < count ? count : max
          count = 1
       end
 
       stack.push(n)
 
    end
 
    return  [max,count].max
    
 end