class AdduserIdagainToGrids < ActiveRecord::Migration
  def change
    add_column :grids, :user_id, :string
  end
end
