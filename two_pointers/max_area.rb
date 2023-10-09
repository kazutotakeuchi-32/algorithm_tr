# @param {Integer[]} height
# @return {Integer}
# @see https://leetcode.com/problems/container-with-most-water/

def max_area(height)

    res = 0
    l,r = 0, height.length - 1
  
    while l < r
      area = (r - l) * [height[l],height[r]].min
      res = [res, area].max
  
      if height[l] < height[r]
        l += 1 
      else  
        r -= 1
      end
    end
  
    return res
  end