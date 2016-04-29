class AddSampleExerciseRefToExerciseEntries < ActiveRecord::Migration
  def change
    add_reference :exercise_entries, :sample_exercise, index: true
  end
end
