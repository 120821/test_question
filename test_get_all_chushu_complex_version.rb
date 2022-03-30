# 获得某个数的所有除数
def get_all_divisors(n)

  result = []

  # 对 1 .. n 的所有数进行遍历
  for i in (1..n)

    # 把每个数都：  n / i , 看余数
    # 如果余数是0 ，表示 i 可以整除 n ,
    if n % i == 0
      #  就把i 放到结果中。
      result.push i
    end
  end

  # 循环结束, 返回结果
  return result

end

def get_all_divisors_by_range max
  result = {}
  for i in (1 .. max)
    # TODO 这里不使用独立的方法

    small_result = []
    for j in (1..i)
      if i % j == 0
        small_result.push j
      end
    end

    result[i] = small_result

  end
  return result
end


#puts get_all_divisors 10
puts get_all_divisors_by_range 10
