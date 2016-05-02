class RemoveAllColumnsFromMuscleMeasures < ActiveRecord::Migration
  def change
    remove_column :muscle_measures, :upper_arm_left, :decimal
    remove_column :muscle_measures, :upper_arm_right, :decimal
    remove_column :muscle_measures, :thigh_left, :decimal
    remove_column :muscle_measures, :thigh_right, :decimal
    remove_column :muscle_measures, :calf_left, :decimal
    remove_column :muscle_measures, :calf_right, :decimal
    remove_column :muscle_measures, :waist, :decimal
    remove_column :muscle_measures, :chest, :decimal
    add_column :muscle_measures, :name, :string
    add_column :muscle_measures, :measurement, :decimal
  end
end
