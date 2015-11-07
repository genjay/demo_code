def t01(n)
  cnt = 0 
  (1..n).each do |i|  
    while i >= 10
      cnt+=1 if (i % 10) == 0
      i = i/10
    end
  end
  return cnt
end

def t02(n)
  (1..n).to_a.to_s.count('0')
end

def tt(n)
  t=Time.now.to_f
  ans=t01(n)
  puts "#{ans}___t01 use #{(Time.now-t).to_f}"
  t=Time.now.to_f
  t02(n)
  puts "#{ans}___t02 use #{(Time.now-t).to_f}"
end