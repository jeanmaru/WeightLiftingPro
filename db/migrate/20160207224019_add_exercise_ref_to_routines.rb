class AddExerciseRefToRoutines < ActiveRecord::Migration
  def change
    add_reference :routines, :exercise, index: true
  end
end
