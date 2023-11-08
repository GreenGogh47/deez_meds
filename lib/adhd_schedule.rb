class AdhdSchedule
  attr_reader :schedule

  def initialize(dad, mom, school)
    @schedule = {
      monday: [mom, school],
      tuesday: [dad, school],
      wednesday: [dad, school],
      thursday: [dad, school],
      friday: [mom, school]
      # Takes a break on the weekends
    }
  end
end