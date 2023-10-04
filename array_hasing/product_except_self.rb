# @see https://leetcode.com/problems/product-of-array-except-self/solutions/3563268/readable-ruby-solution/
# @param {Integer[]} nums
# @return {Integer[]}

def product_except_self(nums)
    res = [1] * nums.length
    prefix = 1
    i = 0

    while i < nums.length
        res[i] = prefix
        prefix *= nums[i]
        i+=1
    end

    j = nums.length - 1

    postfix = 1

    while 0 <= j
        res[j]  = res[j] * postfix
        postfix = postfix * nums[j] 
        j-=1
    end

    res

end
