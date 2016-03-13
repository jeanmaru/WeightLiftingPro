class AddMeasureToExerciseEntries < ActiveRecord::Migration
  def change
    add_column :exercise_entries, :measure, :string
  end
end
