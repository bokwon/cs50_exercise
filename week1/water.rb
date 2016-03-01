def water
  puts "How long do you take a shower in minutes? "
  mins = gets.chomp.to_i

  # A gallon is 128 ounces, shower spits out 1.5 gallons of water per minute
  water_used_per_min = 1.5 * 128 
  one_bottle = 16

  total_bottle_of_water_used = (mins * water_used_per_min / one_bottle).to_i
 
  puts "#{total_bottle_of_water_used} bottles are used while you are taking shower for #{mins} minutes."

end

water