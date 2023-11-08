require "date"
require "pry"
require "./lib/person.rb"
require "./lib/adhd_schedule.rb"

def adhd_meds(total_pills)
  puts "#### Total adhd meds: #{total_pills} ####"

  #Initialize
  date = Date.today
  chris = Person.new("Chris")
  sam = Person.new("Sam")
  school = Person.new("School")
  schedule = AdhdSchedule.new(chris, sam, school)

  # Main Logic
  while total_pills > 0
    current_day = date.strftime("%A").downcase.to_sym
    person_1 = schedule.schedule[current_day][0]
    person_2 = schedule.schedule[current_day][1]

    total_pills -= 2
    person_1.give_pill
    person_2.give_pill

    # This if statement is to ignore the weekends
    if date.wday == 5 # If it's Friday
      date += 3 # Skip to Monday
    else 
      date += 1
    end
  end

  # Final Display
  puts "#{chris.name}: #{chris.pills}"
  puts "#{sam.name}: #{sam.pills}"
  puts "#{school.name}: #{school.pills}\n\n"
end