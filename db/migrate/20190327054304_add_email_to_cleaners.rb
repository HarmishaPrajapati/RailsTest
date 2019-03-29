class AddEmailToCleaners < ActiveRecord::Migration[5.2]
  def change
    add_column :cleaners, :email, :string
  end
end
