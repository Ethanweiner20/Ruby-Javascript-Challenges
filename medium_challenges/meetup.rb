# Meetup

require 'date'

class Meetup
  WEEKDAYS = %w(sunday monday tuesday wednesday thursday friday saturday)
  SCHEDULE_NUMBERS = { "first" => 1, "second" => 2, "third" => 3,
                       "fourth" => 4, "fifth" => 5 }

  def initialize(year, month)
    @year = year
    @month = month
    @last_day = Date.civil(year, month, -1)
    @weekday = nil
    @schedule = nil
  end

  def day(wday, sched)
    self.weekday = wday
    self.schedule = sched

    case schedule
    when 'teenth' then find_in_next_seven(Date.civil(year, month, 13))
    when 'last' then find_in_next_seven(last_day - 6)
    else find_in_whole_month
    end
  end

  private

  # For normalization purpose
  def weekday=(wday)
    @weekday = wday.downcase
  end

  def schedule=(sched)
    @schedule = sched.downcase
  end

  def find_in_whole_month
    candidate_date = Date.civil(year, month)
    times_weekday_seen = 0

    loop do
      if same_weekday?(candidate_date)
        times_weekday_seen += 1
        return candidate_date if SCHEDULE_NUMBERS[schedule] == times_weekday_seen
      end

      break if candidate_date == last_day
      candidate_date = candidate_date.next_day
    end

    nil
  end

  def find_in_next_seven(start_date)
    candidate_date = start_date

    7.times do
      return candidate_date if same_weekday?(candidate_date)
      candidate_date = candidate_date.next_day
    end
  end

  def same_weekday?(date)
    WEEKDAYS[date.wday] == weekday
  end

  attr_reader :year, :month, :schedule, :weekday, :last_day
end