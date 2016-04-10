class AdminController < ApplicationController
  before_filter :authenticate_user!

  def index
    unless current_user.admin
      redirect_to root_path, :alert => "Access denied."
    end
  end
  
end
