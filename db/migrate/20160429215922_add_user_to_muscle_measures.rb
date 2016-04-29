class AddUserToMuscleMeasures < ActiveRecord::Migration
  def change
    add_reference :muscle_measures, :user, index: true
  end
end
