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
  
  def new
    unless current_user.admin
      redirect_to root_path, :alert => "Access Denied."
    else
      @user = User.new
    end
  end

  # 
  # def create
  #   @user = User.new(user_params)
  # 
  #   respond_to do |format|
  #     if @user.save
  #       format.html { redirect_to users_path, notice: 'User was successfully created.' }
  #       format.json { render :show, status: :created, location: @user }
  #     else
  #       format.html { render users_path }
  #       format.json { render json: @user.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # def create
  #   build_resource(user_params)
  # 
  #   if resource.save
  #     respond_to do |format|
  #       format.html {
  #         yield resource if block_given?
  #         if resource.active_for_authentication?
  #           set_flash_message :notice, :signed_up if is_flashing_format?
  #           sign_up(resource_name, resource)
  #           redirect_to users_path
  #         else
  #           set_flash_message :notice, :"signed_up_but_#{resource.inactive_message}" if is_flashing_format?
  #           expire_data_after_sign_in!
  #           redirect_to users_path
  #         end
  #       }
  # 
  #     end
  #   else
  #     respond_to do |format|
  #       format.html {
  #         clean_up_passwords resource
  #         respond_with resource
  #       }
  # 
  #     end
  #   end
  # end

  # def create
  #   build_resource(sign_up_params)
  #   if resource.save
  #     redirect_to admin_editors_path
  #   else
  #     clean_up_passwords resource
  #     respond_with resource
  #   end
  # end


  def show
    @user = User.find(params[:id])
    unless current_user.admin
      redirect_to root_path, :alert => "Access denied."
    end
  end

  def edit
    unless current_user.admin
      redirect_to root_path, :alert => "Access Denied."
    end
  end
  
  def update
    if @user.update(user_params)
      redirect_to registration_path(@user)
    else
      render :edit
    end
  end
  
  
  def destroy
    if current_user.admin?
      @user.destroy
      respond_to do |format|
        format.html { redirect_to users_path, alert: 'User Successfully Destroyed.' }
        format.json { head :no_content }
      end
    else
      redirect_to root_path, :alert => "Access denied."
    end
  end

  private
  # Never trust parameters from the scary internet, only allow the whitelist through.
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :lname, :fname, :dob, :gender,
                                 :body_weight, :measure, :level)
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

end