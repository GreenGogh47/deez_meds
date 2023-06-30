require "date"
require "pry"

def pills_distribution(total_pills)
  raise "Invalid total number of pills" unless total_pills.is_a?(Integer) && total_pills.positive?
  raise "Total number of pills must be even" unless total_pills.even?

  
  chris = {pills: 0}
  sam = {pills: 0}
  april = {pills: 0}
  
  puts "Total pills: #{total_pills}\n"
  
  date = Date.today
  pills_per_day = 2

  people = {
    monday: [sam, april],
    tuesday: [sam, april],
    wednesday: [chris, april],
    thursday: [chris, april],
    friday: [chris, april],
    saturday: [sam],
    sunday: [sam],
  }

  while total_pills > 0
    total_pills -= pills_per_day
    current_day = date.strftime("%A").downcase.to_sym
    require 'pry'; binding.pry
    pills_per_person = pills_per_day / people[current_day].length
    people[current_day].each { |person| person[:pills] += pills_per_person }
    date += 1
  end

  # 4th of July I have them for lunch instead of april
  chris[:pills] += 1
  april[:pills] -= 1

  puts "Chris: #{chris[:pills]}"
  puts "Sam: #{sam[:pills]}"
  puts "April: #{april[:pills]}"
end

pills_distribution(60)