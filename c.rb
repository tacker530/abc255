# X A D N

X,A,D,N = gets.chomp.split.map(&:to_i)
#puts X,A,D,N

if D != 0 then
  q_div,q_mod = ( X - A ).divmod(D)   # w[0]:商　w[1]:余り
else
  q_div,q_mod = 0,0
end

if X <= A and D > 0 then  # 基点よりも左
  puts "#{A - X}"
  exit
end

if X >= A and D < 0 then  # 基点よりも右
  puts "#{X - A}"
  exit
end

# 通常の場合
left = q_mod.abs
right = D - q_mod

if D >= 0 then  #増える数列
  if left >= right then
    result = right
  else
    result = left 
  end
  puts "#{result}"
  exit
end

if D < 0 then  # 減る数列
  if left >= right then
    result = left
  else
    result = right 
  end
  puts "#{result}"
  exit
end