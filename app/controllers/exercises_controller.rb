class ExercisesController < ApplicationController
  before_action :set_exercise, only: [:show, :edit, :update, :destroy]
  respond_to :html, :json


  def index
    @exercises = current_user.exercises(current_user)
  end

  def show
    # @exercise = current_user.exercises.find(params[:id])
    # respond_with(@exercise)
    # redirect_to exercises_url
    @exercise = current_user.exercises.find(params[:id])
  end

  def new
    @sample_exercises = SampleExercise.all
    @exercise = Exercise.new(params[:exercise])

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @exercise }
    end
end
  
  def edit
    @exercise = Exercise.find(params[:id])
  end

  def create
    @exercise = current_user.exercises.new(exercise_params)
    @exercise.save
    respond_with(@exercise)

    # @my_exercises = current_user.exercises.where(sample_exercise_id: params[:sample_exercise_id])
    # if @my_exercises.include?(@exercise.sample_exercise_id)
    #   redirect_to @exercise, notice: 'You already have this exercise.'
  end

  def update
    @exercise.update(exercise_params)
    respond_with(@exercise)
  end

  def destroy
    @exercise.destroy
    respond_with(@exercise)
  end

  private
    def set_exercise
      @exercise = Exercise.find(params[:id])
    end

    #---- There may not be an exercise added yet ----
    def exercise_params
     if params[:exercise].present?
       params.require(:exercise).permit(:notes, :sample_exercise_id, :routine_id, :user_id)
     end
    end
end

