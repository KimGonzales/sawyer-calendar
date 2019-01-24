module EventsHelper
  require 'pry'

  def weekday(date)
    date.strftime("%A")
  end

  def month_name(date)
    date.strftime("%B %Y")
  end

end
