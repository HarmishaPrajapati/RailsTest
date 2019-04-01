class AddCityToCleaner < ActiveRecord::Migration[5.2]
  def change
    add_column :cleaners, :city, :string
  end
end
