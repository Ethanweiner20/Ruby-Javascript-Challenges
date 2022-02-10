# Clock

class Clock
  MINUTES_IN_HOUR = 60
  HOURS_IN_DAY = 24
  MINUTES_IN_DAY = MINUTES_IN_HOUR * HOURS_IN_DAY

  def self.at(hours, minutes=0)
    new(hours, minutes)
  end

  def initialize(hours, minutes)
    @hours = hours
    @minutes = minutes
  end

  def to_s
    format("%02d:%02d", hours, minutes)
  end

  def ==(other_clock)
    hours == other_clock.hours && minutes == other_clock.minutes
  end

  def +(minute_delta)
    new_time_in_minutes = (time_in_minutes + minute_delta) % MINUTES_IN_DAY
    hours, minutes = new_time_in_minutes.divmod(MINUTES_IN_HOUR)
    Clock.at(hours, minutes)
  end

  def -(minute_delta)
    self.+(-minute_delta)
  end

  protected

  attr_accessor :hours, :minutes

  private

  def time_in_minutes
    hours * MINUTES_IN_HOUR + minutes
  end
end