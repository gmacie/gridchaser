class AddqslInfoToGrids < ActiveRecord::Migration
  def change
  	add_column :grids, :qsl_info, :string
  end
end
