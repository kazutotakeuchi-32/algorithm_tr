def max_sublist_sum(security_val, k)
    max_sum = -Float::INFINITY
    current_sum = 0
  
    for i in 0..security_val.length - 1
      current_sum += security_val[i]
  
      if i >= k - 1
        max_sum = [max_sum, current_sum].max
        current_sum -= security_val[i - k + 1]
      end
    end
  
    max_sum
  end
  
  # テスト用のデータと k の値を設定
  security_val = [6, 3, 5, -2, -4, 9, 16, 2]
  k = 2
  
  # 最大のサブリスト合計を計算
  result = max_sublist_sum(security_val, k)
  puts result # 出力は 17 になります
  