class CreateMuscleMeasures < ActiveRecord::Migration
  def change
    create_table :muscle_measures do |t|
      t.decimal :upper_arm_left
      t.decimal :upper_arm_right
      t.decimal :forearm_right
      t.decimal :forearm_left
      t.decimal :thigh_left
      t.decimal :thigh_right
      t.decimal :calf_left
      t.decimal :calf_right
      t.decimal :waist
      t.decimal :shoulder
      t.decimal :chest

      t.timestamps
    end
  end
end
