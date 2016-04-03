class RoutinesController < ApplicationController
  before_action :set_routine, only: [:show, :edit, :update, :destroy]
  respond_to :html, :json

  def index
    @routines = current_user.routines(current_user).order("name")
  end

  def show
    @routine = current_user.routines.find(params[:id])
  end
  
  def new
    @routine = Routine.new
  end

  def edit
    @routine = Routine.find(params[:id])
  end

  def create
    @routine = current_user.routines.new(routine_params)
    @routine.save
    respond_with(@routine)
  end
  
  def update
    @routine.update(routine_params)
    respond_with(@routine)
  end

  def destroy
    @routine.destroy
    respond_with(@routine)
  end
  
  def remove_exercise_from_routine
    @exercise = Exercise.find(params[:id])
    @routine = exercise.routines.find(params[:id])
    
    if routine
      @exercise.routines.delete(routine)
    end
  end


  # def remove
  #   @comment = current_user.comments.find(params[:id])
  #   @comment_id = params[:id]
  #   @comment.destroy
  # end
  # 
  # def unfriend
  #   @friend = User.find(params[:friend_id])
  #   @curr_user_id = current_user.id
  #   @curr_user = User.find(current_user.id)
  #   @friendship = @curr_user.friendships.find_by(params[:user_id])
  #   @friendship.destroy
  #   @friendship = @friend.friendships.find_by(params[:user_id])
  #   @friendship.destroy
  #   redirect_to root_url
  # end

  private
    def set_routine
      @routine = Routine.find(params[:id])
    end

    def routine_params
      params.require(:routine).permit(:name, :description, :user_id)
    end
end
