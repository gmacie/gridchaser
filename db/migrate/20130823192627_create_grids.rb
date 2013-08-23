class CreateGrids < ActiveRecord::Migration
  def change
    create_table :grids do |t|
      t.string :status
      t.string :band
      t.string :mode
      t.string :call
      t.string :grid_sqare
      t.string :country

      t.timestamps
    end
  end
end
