class RemoveNameFromExercises < ActiveRecord::Migration
  def change
    remove_column :exercises, :name, :string
  end
end
