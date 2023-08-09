require "date"
require "pry"

def er_med(total_pills)
  puts "Total pills: #{total_pills}\n\n"

  date = Date.today

  chris = {pills: 0}
  sam = {pills: 0}
  
  parent = {
    monday: sam,
    tuesday: sam,
    wednesday: chris,
    thursday: chris,
    friday: chris,
    saturday: sam,
    sunday: sam
  }

  while total_pills > 0
    total_pills -= 1
    current_day = date.strftime("%A").downcase.to_sym
    parent[current_day][:pills] += 1
    date += 1
  end

  puts "Chris: #{chris[:pills]}"
  puts "Sam: #{sam[:pills]}"
end

er_med(30)