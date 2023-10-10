# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
# @see https://leetcode.com/problems/two-sum/description/

# 計算量: n**2
# target == nums[i] + nums[j]
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


#計算量： n
# (target == nums[l] + nums[r]) == (target - nums[l] == nums[r])

def two_sum(nums, target)
    i = 0
    hash = {}
    while i < nums.length
       return [hash[nums[i]], i] if hash[nums[i]]

        hash[target - nums[i]] = i
        i += 1
    end

    []
end