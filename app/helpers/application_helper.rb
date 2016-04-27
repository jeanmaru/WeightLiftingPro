module ApplicationHelper
  #--- Check if user is the Admin ---
  def is_admin
    if @admin == current_user
      return true
    else
      return false
    end
  end

  def age(dob)
    now = Time.now.utc.to_date
    now.year - dob.year - (dob.to_date.change(:year => now.year) > now ? 1 : 0)
  end

  
end


