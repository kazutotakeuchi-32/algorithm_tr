# @param {String} s
# @return {String}
# @see https://leetcode.com/problems/reverse-words-in-a-string/submissions/1082149817/?envType=study-plan-v2&envId=leetcode-75

# n
def reverse_words(s)
    i = 0
    str = ""
    result = ""
    while i < s.length
        if s[i] == " " && str != ""
           result = result == "" ?   str : result = str + " " + result 
           str = ""
        elsif s[i] != " "
            str += s[i]
        end
        i += 1
    end


    if  str.length > 0 && result.length > 0
        return  str + " " + result
    elsif str.length > 0
        return str 
    end

    return result

end