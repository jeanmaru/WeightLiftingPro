class MuscleMeasuresController < ApplicationController
  before_action :set_muscle_measure, only: [:show, :edit, :update, :destroy]

  respond_to :html, :json, :pdf, :xml

  def index
    @muscle_measures = current_user.muscle_measures(current_user).order(created_at: :desc).paginate(:page => params[:page], :per_page => 5)
  end

  def graphs
    @muscle_measures = current_user.muscle_measures(current_user)
    respond_with(@muscle_measure)
  end

  def show 
  @muscle_measure = current_user.muscle_measures.find(params[:id])
  end

  def new
    @muscle_measure = MuscleMeasure.new
    respond_with(@muscle_measure)
  end

  def edit
    @muscle_measure = MuscleMeasure.find(params[:id])
  end
  
  def create
    @muscle_measure = current_user.muscle_measures.new(muscle_measure_params)
    
    respond_to do |format|
    if @muscle_measure.save
      format.html {  redirect_to muscle_measures_path(@muscle_measure), notice: 'Muscle Measures Successfully Created!' }
      format.json { render :show, status: :created, location: @muscle_measure }
    else
      format.html { render :new }
      format.json { render json: @muscle_measure.errors, status: :unprocessable_entity }
    end
  end
end
  

  def update
    @muscle_measure.update(muscle_measure_params)
    respond_with(@muscle_measure)
  end

  def destroy
    @muscle_measure.destroy
    flash[:alert] = 'Notice: Muscle Measure Deleted.'
    respond_with(@muscle_measure)
  end

  private
    def set_muscle_measure
      @muscle_measure = MuscleMeasure.find(params[:id])
    end

    def muscle_measure_params
        params.require(:muscle_measure).permit(:user_id, :unit, :measurement, :name)
    end
end
