class ExerciseEntriesController < ApplicationController
  before_action :set_exercise_entry, only: [:show, :edit, :update, :destroy]
  
  respond_to :html, :pdf, :xml

  def index
    @exercise_entries = current_user.exercise_entries(current_user).paginate(:page => params[:page], :per_page => 10)
    respond_with(@exercise_entries)
  end
  
  def graphs
    @exercise_entries = current_user.exercise_entries(current_user)
    @sample_name = @exercise_entries.select(:exercise_id)
    respond_with(@exercise_entries)
    # @vone = Result.where(params[:variety_one], params[:years]).includes(:trial).where(params[:region_id], params[:irrigated])
  end

  def show
    respond_with(@exercise_entry)
  end


  def new
    @exercise =  Exercise.find(params[:exercise_id])
    # @sample_exercise =  SampleExercise.find(params[:sample_exercise_id])
    @exercise_entry = @exercise.exercise_entries.build
    respond_with(@exercise_entry)
  end
  

  def edit
    @exercise_entry = ExerciseEntry.find(params[:id])
  end


  def create
    # @exercise_entry.sample_exercise_id = @sample_exercise.id
    @exercise_entry = current_user.exercise_entries.new(exercise_entry_params)

    respond_to do |format|
      if @exercise_entry.save
        #flash[:notice] = 'Exercise Entry Successfully Created!'
        format.html { redirect_to(@exercise_entry) }
        format.xml { render xml: @exercise_entry, status: :created, location: @exercise_entry }
      else
        format.html { render action: "new" }
        format.xml { render xml: @exercise_entry.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    @exercise_entry.update(exercise_entry_params)
    respond_with(@exercise_entry)
  end

  def destroy
    @exercise_entry.destroy
    flash[:alert] = 'Notice: Exercise Log Deleted.'
    respond_with(@exercise_entry)    
  end

  private
    def set_exercise_entry
      @exercise_entry = ExerciseEntry.find(params[:id])
    end

    def exercise_entry_params
      params.require(:exercise_entry).permit(:reps, :sets, :weight, :measure, :notes, :exercise_id, :user_id, :sample_exercise_id)
    end
end
