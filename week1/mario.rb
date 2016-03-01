def mario
  print "Heights: "
  h = gets.to_i

  while (h > 23 || h <= 0) do
    print "Heights: "
    h = gets.to_i
  end

  i = 2
  while i <= h+1
    empty_block = " " * (h+1-i)
    stairs = "#" * i
    puts "#{empty_block+stairs}"
    i += 1
  end  

end

mario