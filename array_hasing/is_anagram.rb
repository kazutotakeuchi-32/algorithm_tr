# @param {String} s
# @param {String} t
# @return {Boolean}
# @see https://leetcode.com/problems/valid-anagram/

def is_anagram(s, t)
    i = 0

    return false if s.size != t.size
    s_count = Hash.new(0)
    t_count = Hash.new(0)
    
    s.chars.each_index do |i|
        s_count[s[i]] += 1
        t_count[t[i]] += 1
    end
    
    s_count == t_count

end