# @see https://leetcode.com/problems/best-time-to-buy-and-sell-stock/
# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
    l = 0
    r = 1
    max = 0

    while r < prices.length
        if prices[l] < prices[r]
            n = prices[r] - prices[l]  
            max = [n,max].max
        else
            l = r
        end

        r+=1
    end

    max
end