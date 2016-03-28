class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  
  respond_to :html, :js, :pdf, :xml

  def index
    @users = User.all
    unless current_user.admin
      redirect_to root_path, :alert => "Access denied."
    end
  end

  def show
    @user = User.find(params[:id])
    unless current_user.admin
      redirect_to root_path, :alert => "Access denied."
    end
  end

  def edit
    unless current_user.admin
      redirect_to root_path, :alert => "Access denied."
    end
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was Successfully Updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    if current_user.admin?
      @user.destroy
      respond_to do |format|
        format.html { redirect_to users_path, notice: 'User was Successfully Destroyed.' }
        format.json { head :no_content }
      end
    else
      redirect_to root_path, :alert => "Access denied."
    end
  end

  private
  # Never trust parameters from the scary internet, only allow the whitelist through.
  def user_params
    params.require(:user).permit(:lname, :fname, :email, :dob, :gender, :body_weight, :measure, :level)
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

end