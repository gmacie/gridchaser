class AddgridSquareToGrids < ActiveRecord::Migration
  def change
  	add_column :grids, :grid_square, :string
  	remove_column :grids, :grid_sqare
  end
end
