def printZhishu(n)
  #for i in 2..n
  #  if i == 2
  #    puts i
  #  else
  #    for j in 2..n+1
  #      if i % j == 0
  #        break
  #      else puts i
  #        break
  #      end
  #    end

  #  end
  #end

  # 只能被1 和自身 整除的数， 就是质数
  # 从1 到 n , 做一个遍历。 i
  i = 1

  result = nil

  loop do
    puts "=== i : #{i}"

    # 对每个i 都进行取余操作。如果余数是0 && (i != 1 || i != n )，那么该数n 就很可能不是质数
    if n % i == 0 && i != 1 && i != n
      puts "=== is not prime number, n: #{n}, i: #{i}"
      result = false
      break
    end

    if i >= n
      result = true
      break
    end
    i = i + 1
  end
  return result
end

puts printZhishu(1)
