class CreateGriddbs < ActiveRecord::Migration
  def change
    create_table :griddbs do |t|
      t.string :entity
      t.string :log_of
      t.string :call_sign
      t.integer :ffma_count

      t.timestamps
    end
  end
end
