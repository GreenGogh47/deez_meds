require "date"
require "pry"

def pills_distribution(total_pills)
  raise "Total number of pills must be a positive number" unless total_pills.is_a?(Integer) && total_pills.positive?
  raise "Total number of pills must be even" unless total_pills.even?

  puts "Total pills: #{total_pills}\n\n"
  
  date = Date.today + 6 # Start on Wednesday after Labor Day break
  pills_per_day = 2 # One in the morning and one at lunch

  chris = {pills: 0}
  sam = {pills: 0}
  school = {pills: 0}

  people = {
    monday: [sam, school],
    tuesday: [sam, school],
    wednesday: [chris, school],
    thursday: [chris, school],
    friday: [chris, school],
    saturday: [sam],
    sunday: [sam],
    # weekends are "skip days" to reduce chance of building a tolerance.
  }

  while total_pills > 0
    total_pills -= pills_per_day
    current_day = date.strftime("%A").downcase.to_sym
    pills_per_person = pills_per_day / people[current_day].length
    people[current_day].each { |person| person[:pills] += pills_per_person }
    # This if statement is to ignore the weekends
    if date.wday == 5 # If it's Friday
      date += 3 # Skip to Monday
    else
      date += 1
    end
  end

  # 4th of July I have them for lunch instead of school
  # chris[:pills] += 1
  # school[:pills] -= 1

  puts "Chris: #{chris[:pills]}"
  puts "Sam: #{sam[:pills]}"
  puts "School: #{school[:pills]}"
end

pills_distribution(28)