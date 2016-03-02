class CreateSampleExercises < ActiveRecord::Migration
  def change
    create_table :sample_exercises do |t|
      t.string :name

      t.timestamps
    end
  end
end
