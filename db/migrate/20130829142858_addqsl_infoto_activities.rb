class AddqslInfotoActivities < ActiveRecord::Migration
  def change
  	add_column :activities, :qsl_info, :string
  end
end
