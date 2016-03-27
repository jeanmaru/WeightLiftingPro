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
  
  def bw_50
    current_user.body_weight * 0.50
  end

  def bw_55
    current_user.body_weight * 0.55
  end

  def bw_75
    current_user.body_weight * 0.75
  end

  def bw_25
    current_user.body_weight * 0.25
  end

  def bw_30
    current_user.body_weight * 0.30
  end

  def bw_35
    current_user.body_weight * 0.35
  end
  
  def bw_15
    current_user.body_weight * 0.15
  end

  def bw_45
    current_user.body_weight * 0.45
  end
  
end
