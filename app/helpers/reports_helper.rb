module ReportsHelper
  def start_date_week
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
  
  def bw_100
    current_user.body_weight * 1.00
  end

  def bw_125
    current_user.body_weight * 1.25
  end

  def bw_120
    current_user.body_weight * 1.20
  end
  
  def bw_150
    current_user.body_weight * 1.50
  end

  def bw_175
    current_user.body_weight * 1.75
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

  def bw_70
    current_user.body_weight * 0.70
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

  def bw_10
    current_user.body_weight * 0.10
  end
  
  def bw_05
    current_user.body_weight * 0.05
  end

  def bw_45
    current_user.body_weight * 0.45
  end

  def bw_40
    current_user.body_weight * 0.40
  end
  
  def bw_20
    current_user.body_weight * 0.20
  end

  def bw_60
    current_user.body_weight * 0.60
  end

  def bw_65
    current_user.body_weight * 0.65
  end

  def bw_80
    current_user.body_weight * 0.80
  end
  
end
