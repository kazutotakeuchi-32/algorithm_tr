# @see https://leetcode.com/problems/longest-substring-without-repeating-characters/submissions
# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
    charset = {}
    l = 0
    res = 0
    r = 0

    while r < s.length 
        while charset.include?(s[r]) 
            charset.delete(s[l])
            l+=1
        end

        charset[s[r]] = true

        res = [res, r - l + 1].max
        r += 1
    end

    return res

end 