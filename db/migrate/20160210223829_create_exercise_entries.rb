class CreateExerciseEntries < ActiveRecord::Migration
  def change
    create_table :exercise_entries do |t|
      t.integer :reps
      t.integer :sets
      t.integer :weight
      t.string :notes
      t.references :exercise, index: true

      t.timestamps
    end
  end
end
