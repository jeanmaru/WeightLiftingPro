class AddUserRefToExerciseEntries < ActiveRecord::Migration
  def change
    add_reference :exercise_entries, :user, index: true
  end
end
