module ReportsHelper
  def start_date
    Date.today - 7.days
  end
  
  def start_date_month
    Date.today - 30.days
  end

  def bw_85
    current_user.body_weight * 0.85
  end
  
  def bw_200
    current_user.body_weight * 2.00
  end
  
  def bw_250
    current_user.body_weight * 2.50
  end


  def bw_150
    current_user.body_weight * 1.50
  end
  
  

  
end
