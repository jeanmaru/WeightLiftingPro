class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :dob, :date
    add_column :users, :fname, :string
    add_column :users, :lname, :string
    add_column :users, :gender, :string
    add_column :users, :body_weight, :decimal
  end
end
