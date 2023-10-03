# @see https://leetcode.com/problems/group-anagrams/submissions/
# @param {String[]} strs
# @return {String[][]}

def group_anagrams(strs)
   
    hashmap = {}
 
    for str in strs
 
       key = str.chars.sort.join
 
       hashmap[key] = hashmap[key] || []
       hashmap[key].push(str)
 
    end
 
    hashmap.values
 end