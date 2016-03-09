module ReportsHelper
  def start_date
    Date.today
  end

  def end_date
    Date.today + 14.days
  end
end
