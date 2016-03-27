module ReportsHelper
  def start_date
    Date.today - 7.days
  end
  
  def start_date_month
    Date.today - 30.days
  end

end
