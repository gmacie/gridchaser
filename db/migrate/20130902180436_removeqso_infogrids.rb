class RemoveqsoInfogrids < ActiveRecord::Migration
  def change
  	remove_column :grids, :qsl_info
  end
end
