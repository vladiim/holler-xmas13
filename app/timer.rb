require 'date'

class Timer

  attr_accessor :start_date
  def initialize(start_date) # start_date format: 2013-12-01-09-00
    @start_date = as_date_time(start_date)
  end

  private

  def as_date_time(date_time)
    split_date_time = date_time.split('-')

    year  = split_date_time[0].to_i
    month = split_date_time[1].to_i
    day   = split_date_time[2].to_i
    hour  = split_date_time[3].to_i
    min   = split_date_time[4].to_i

    DateTime.new(year, month, day, hour, min)
  end
end