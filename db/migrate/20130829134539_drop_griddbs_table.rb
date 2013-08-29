class DropGriddbsTable < ActiveRecord::Migration
  def up
  	drop_table :griddbs
  end

  def down
  	raise ActiveRecord::IrreversibleMigration
  end

end
