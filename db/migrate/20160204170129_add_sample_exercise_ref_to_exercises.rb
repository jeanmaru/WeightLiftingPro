class AddSampleExerciseRefToExercises < ActiveRecord::Migration
  def change
    add_reference :exercises, :sample_exercise, index: true
  end
end
