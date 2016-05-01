class RemoveForearmRightFromMuscleMeasuresTable < ActiveRecord::Migration
  def change
    remove_column :muscle_measures, :forearm_right, :decimal
    remove_column :muscle_measures, :forearm_left, :decimal
    remove_column :muscle_measures, :shoulder, :decimal


  end
end
