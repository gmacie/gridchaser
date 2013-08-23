class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest
      t.string :grid
      t.string :state
      t.integer :zone
      t.string :call_sign

      t.timestamps
    end
  end
end
