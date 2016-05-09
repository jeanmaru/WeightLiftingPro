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

  # def create
  #   @routine = current_user.routines.new(routine_params)
  #   @routine.save
  #   respond_with(@routine)
  # end

  def create
    @routine = current_user.routines.new(routine_params)

    respond_to do |format|
      if @routine.save
        format.html {  redirect_to routines_path(@routine), notice: 'Routine Successfully Created!' }
        format.json { render :show, status: :created, location: @routine }
      else
        format.html { render :new }
        format.json { render json: @routine.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def update
    @routine.update(routine_params)
    respond_with(@routine)
  end

  def destroy
    @routine.destroy
    flash[:alert] = 'Notice: Routine Deleted.'
    respond_with(@routine)
  end
  
  def remove_exercise_from_routine
    @exercise = Exercise.find(params[:exercise_id])
    @routine = Routine.find(params[:routine_id])
    @routine.exercises.delete(@exercise.id)
    flash[:alert] = 'Notice: Exercise Removed From Routine.'
    respond_with(@exercise)
  end

  private
    def set_routine
      @routine = Routine.find(params[:id])
    end

    def routine_params
      params.require(:routine).permit(:name, :description, :user_id)
    end
end
