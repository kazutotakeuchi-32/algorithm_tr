# アルゴリズムイメージ
# 

def sliding_window(array,size = 3)
    max = 0
    i = 0
    while i <= array.length - size
        j = i 
        sum = 0
        while j < i + size 
            sum += array[j]
            j += 1
        end

        if max < sum 
            max = sum
        end

        i += 1

    end
    p max
    max 
end

sliding_window([1,2,3,4,100,6,7,8,9])



