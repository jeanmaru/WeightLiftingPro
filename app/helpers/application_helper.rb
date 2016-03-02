module ApplicationHelper
  #--- Check if user is the Admin ---
  def is_admin
    if @admin == current_user
      return true
    else
      return false
    end
  end
  
  
end


