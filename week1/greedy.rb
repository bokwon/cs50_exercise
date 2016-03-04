require 'pry'

def greedy
  puts "Hi! How much change is owed?"

  m = gets.chomp
  @usedCoins = Hash.new(0)

  while(m.to_f <= 0.0 ) 
    puts "Hi! How much change is owed?"
    m = gets.chomp
  end
  
  if m.to_i > 0
    dollar = m.to_i
    change = ((m.to_f - dollar) * 100).round
    calculateChange(change)
  else
    change = (m.to_f * 100).round
    calculateChange(change)
  end
  
  if(dollar)
    puts "$#{dollar}"  
  else
    puts "no dollor change"
  end

  @usedCoins.each do |key, value| 
    puts "#{value}-#{key}cents"
  end
  
end

def calculateChange(change)
  coins = [25, 10, 5, 1]
  used = []
 
  coins.each do |c|
    while change >= c 
      change -= c
      used.push(c)
    end
  end
  
  used.each {|u| @usedCoins[u] += 1}

end

greedy