class SleepySchedule
  attr_reader :schedule

  def initialize(dad, mom)
    @schedule = {
      monday: mom,
      tuesday: dad,
      wednesday: dad,
      thursday: dad,
      friday: mom,
      saturday: mom,
      sunday: mom,
    }
  end
end