class AddCityToCleaner < ActiveRecord::Migration[5.2]
  def change
    add_reference :cleaners, :city, foreign_key: true
  end
end
