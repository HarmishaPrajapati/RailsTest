class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :bookings, :customer, :customer_name
    rename_column :bookings, :cleaner, :cleaner_name    
  end
end
