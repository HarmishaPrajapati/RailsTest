class AddColumnToCustomers < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :date, :date
    add_column :customers, :time, :time
  end
end
