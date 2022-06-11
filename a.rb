# A

R,C = gets.chomp.split.map(&:to_i)
a = Array.new(2,Array.new(2))

a[0]= gets.chomp.split.map(&:to_i)
a[1] = gets.chomp.split.map(&:to_i)

puts "#{a[R-1][C-1]}"
