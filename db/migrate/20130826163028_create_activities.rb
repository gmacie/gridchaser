class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :call
      t.string :grid
      t.date :start_date
      t.date :end_date
      t.string :home_url
      t.string :image_url
      t.string :more_info

      t.timestamps
    end
  end
end
