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

"御社を志望する理由は、私自身、日本の深刻なデジタル人材不足やアナログ業界の過度な重労働という社会問題をデジタルを通して解決していきたいと思っています。そのその中で「TECH PLAYER / TECH COMPANYを増やす」とのMissionを掲げている御社とTECH PLAYというサービスに共感しました。私自身、新卒でSM業界で働いていて、発注処理やアルバイトやパートさんの管理をしておりました。業務内容の一つで値札やpopを変える業務がありまして、値札自体が紙なため手作業で数万近くある値札を変える必要があるため、売価エラーといって実際のレジで表示される売値と売り場の値札がズレている事が、かなり頻度で起こりお客様にご指摘をいただく機会がありました。私は「コンピューターで管理すればミスが起きないのでは...」と考えてアナログ業務を自動化するなどをデジタル化していきたいと思いました。以上が私の志望動機になります。".size