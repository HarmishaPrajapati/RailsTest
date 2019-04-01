class CreateJoinTableCustomerCleaner < ActiveRecord::Migration[5.2]
  def change
    create_join_table :customers, :cleaners do |t|
       t.index [:customer_id, :cleaner_id]
       t.index [:cleaner_id, :customer_id]
    end
  end
end
