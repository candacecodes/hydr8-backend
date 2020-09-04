class CreateWaterCups < ActiveRecord::Migration[6.0]
  def change
    create_table :water_cups do |t|
      t.integer :amount
      t.integer :user_id

      t.timestamps
    end
  end
end
