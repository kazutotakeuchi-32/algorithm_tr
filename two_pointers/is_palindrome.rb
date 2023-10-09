# @param {String} s
# @return {Boolean}
# @see https://leetcode.com/problems/valid-palindrome/submissions/
def is_palindrome(s)
    idx_start = 0
    idx_end = s.length - 1
    while idx_start < idx_end
      if !/[a-zA-Z0-9]/.match?(s[idx_start])
        idx_start += 1
      elsif !/[a-zA-Z0-9]/.match?(s[idx_end])
        idx_end -= 1
      else
        return false if s[idx_start].downcase != s[idx_end].downcase
  
        idx_start += 1
        idx_end -= 1
      end
    end
    true
  end
  
  