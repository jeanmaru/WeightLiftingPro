class ExerciseEntriesController < ApplicationController
  before_action :set_exercise_entry, only: [:show, :edit, :update, :destroy]
  
  respond_to :html, :pdf, :xml

  def index
    @exercise_entries = current_user.exercise_entries(current_user).paginate(:page => params[:page], :per_page => 10)
    # @exercise_entries = ExerciseEntry.all
    respond_with(@exercise_entries)
  end

  def show
    # redirect_to exercise_entries_url
    respond_with(@exercise_entry)
  end


  def new
    @exercise =  Exercise.find(params[:exercise_id])
    @exercise_entry = @exercise.exercise_entries.build
    respond_with(@exercise_entry)
  end
  

  def edit
    @exercise_entry = ExerciseEntry.find(params[:id])
  end

  def create
    @exercise_entry = current_user.exercise_entries.new(exercise_entry_params)
    @exercise_entry.save
    respond_with(@exercise_entry)
  end
  

  def update
    @exercise_entry.update(exercise_entry_params)
    respond_with(@exercise_entry)
  end

  def destroy
    @exercise_entry.destroy
    respond_with(@exercise_entry)
  end

  private
    def set_exercise_entry
      @exercise_entry = ExerciseEntry.find(params[:id])
    end

    def exercise_entry_params
      params.require(:exercise_entry).permit(:reps, :sets, :weight, :measure, :notes, :exercise_id, :user_id)
    end
end
