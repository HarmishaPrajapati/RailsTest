class AddCityToCustomer < ActiveRecord::Migration[5.2]
  def change
    add_reference :customers, :city, foreign_key: true
  end
end
