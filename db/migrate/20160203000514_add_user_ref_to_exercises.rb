class AddUserRefToExercises < ActiveRecord::Migration
  def change
    add_reference :exercises, :user, index: true
    add_reference :exercises, :routine, index: true
  end
end
