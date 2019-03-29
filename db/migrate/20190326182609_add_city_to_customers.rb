class AddCityToCustomers < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :city_name, :string, array:true, default: []
  end
end
