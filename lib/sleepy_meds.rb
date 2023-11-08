require "date"
require "pry"
require "./lib/person.rb"
require "./lib/sleepy_schedule.rb"

def sleepy_meds(total_pills)
  puts "#### Total sleepy meds: #{total_pills} ####"

  #Initialize
  date = Date.today
  chris = Person.new("Chris")
  sam = Person.new("Sam")
  schedule = SleepySchedule.new(chris, sam)

  # Main Logic
  while total_pills > 0
    total_pills -= 1
    current_day = date.strftime("%A").downcase.to_sym
    current_person = schedule.schedule[current_day]
    current_person.give_pill
    date += 1
  end

  # Final Display
  puts "#{chris.name}: #{chris.pills}"
  puts "#{sam.name}: #{sam.pills}"

end