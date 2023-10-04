# @see https://leetcode.com/problems/top-k-frequent-elements/solutions/3415248/simple-1-loc-ruby-solution-beats-95/
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}

def top_k_frequent(nums, k)
    hashmap = {}  
  
    for n in nums 
      if hashmap[n]
        hashmap[n] = hashmap[n] + 1
      else
        hashmap[n] = 1
      end
    end
    
    hashmap.sort_by{|k,v| v}.to_h.keys.slice(hashmap.length - k , k)
  
  end