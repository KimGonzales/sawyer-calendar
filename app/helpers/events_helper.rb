module EventsHelper
  require 'pry'

  def weekday(date)
    date.strftime("%A")
  end

  def month_name(date)
    date.strftime("%B %Y")
  end

  def date_range(start_date)
    (start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week).to_a
  end

  def first_week_of_month(start_date)
    date_range(start_date).slice(0,7)
  end

  def display_time(event)
    event.time.strftime("%b %d, %Y %I:%M %p")
  end

end
