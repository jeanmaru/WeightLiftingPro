class AddMeasureToUsers < ActiveRecord::Migration
  def change
    add_column :users, :measure, :string
  end
end
