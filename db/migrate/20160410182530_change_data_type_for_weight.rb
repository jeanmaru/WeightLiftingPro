class ChangeDataTypeForWeight < ActiveRecord::Migration
  def change
    change_column(:exercise_entries, :weight, :decimal)
  end
  
end
