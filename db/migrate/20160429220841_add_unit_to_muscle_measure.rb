class AddUnitToMuscleMeasure < ActiveRecord::Migration
  def change
    add_column :muscle_measures, :unit, :string
  end
end
