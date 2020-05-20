def fibs (n, sequence = [])
  n.times do |i|
    if (0..1).include?(i)
      sequence << i
    else
      sequence << sequence[i - 1] + sequence[i - 2]
    end
  end
  sequence
end

def fibs_rec (n, sequence = [])
  n <= 2 ? sequence = (0..n-1).to_a : fibs_rec(n-1, sequence) << fibs_rec(n-1, sequence).last(2).inject(:+)
end


p fibs(0)
p fibs(1)
p fibs(3)
p fibs(5)
p fibs(8)
p fibs(10)

p fibs_rec(0)
p fibs_rec(1)
p fibs_rec(3)
p fibs_rec(5)
p fibs_rec(8)
p fibs_rec(10)

