class CreateLedgers < ActiveRecord::Migration[5.1]
  def change
    create_table :ledgers do |t|
      t.integer :user_id
      t.integer :year
      t.integer :month

      t.timestamps
    end
  end
end
