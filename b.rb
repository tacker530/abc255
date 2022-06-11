#B
N,K = gets.chomp.split.map(&:to_i)
A = gets.chomp.split.map(&:to_i) # あかりあり
B = (1..N).to_a - A
X = Array.new(N){
  gets.chomp.split.map(&:to_i)
}

def distance(p1,p2)
  ((p1[0] - p2[0])**2 + (p1[1] - p2[1])**2 )**(1/2.0)
end

min_len = distance([10**5,10**5],[-(10**5),-(10**5)])

# pp A
# pp B

max = 0
B.each do |b|
  min = min_len
  A.each do |a|
    work =  distance(X[a-1],X[b-1])
    ## pp "[#{a},#{b}] = #{distance(X[a-1],X[b-1])}"
    if min >= work then
      min = work
    end
  end

  if min >= max then
    max = min
  end
end

puts max