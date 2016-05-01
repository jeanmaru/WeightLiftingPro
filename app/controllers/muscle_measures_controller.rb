class MuscleMeasuresController < ApplicationController
  before_action :set_muscle_measure, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @muscle_measures = MuscleMeasure.all
    respond_with(@muscle_measures)
  end

  def show
    respond_with(@muscle_measure)
  end

  def new
    @muscle_measure = MuscleMeasure.new
    respond_with(@muscle_measure)
  end

  def edit
  end

  def create
    @muscle_measure = MuscleMeasure.new(muscle_measure_params)
    @muscle_measure.save
    respond_with(@muscle_measure)
  end

  def update
    @muscle_measure.update(muscle_measure_params)
    respond_with(@muscle_measure)
  end

  def destroy
    @muscle_measure.destroy
    respond_with(@muscle_measure)
  end

  private
    def set_muscle_measure
      @muscle_measure = MuscleMeasure.find(params[:id])
    end

    def muscle_measure_params
      if params[:muscle_measure].present?
        params.require(:muscle_measure).permit(:upper_arm_left, :upper_arm_right, :thigh_left, :thigh_right, :calf_left, :calf_right, :waist, :chest, :user_id, :unit)
      end
    end
end
