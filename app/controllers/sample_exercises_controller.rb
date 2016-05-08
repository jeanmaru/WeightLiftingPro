class SampleExercisesController < ApplicationController
  respond_to :html
  
  def index
    @sample_exercises = SampleExercise.order(:name)
    # @exercises = current_user.exercises(current_user)

  end


  # def new
  #   @sample_exercises = SampleExercise.all
  #   @exercise = Exercise.new(params[:exercise])
  # 
  #   respond_to do |format|
  #     format.html # new.html.erb
  #     format.xml  { render :xml => @exercise }
  #   end
  # end  
  # 
  private
  def set_sample_exercise
    @sample_exercise = SampleExercise.find(params[:id])
  end

  def sample_exercise_params
    params.require(:sample_exercise).permit(:id, :name)
  end
  
end
