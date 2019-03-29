class CreateCleaners < ActiveRecord::Migration[5.2]
  def change
    create_table :cleaners do |t|
      t.string :first_name
      t.string :last_name
      t.numeric :quality_score

      t.timestamps
    end
  end
end
