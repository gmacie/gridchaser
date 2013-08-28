namespace :grid do
  desc "imports worked grids from a csv file"
  task :csvin => :environment do
    require 'csv'
    CSV.foreach('n3hjx.csv') do | row |
      grid = row[0]
      Grid.create(grid_square: grid, band: "6M", user_id: "N3HJX")
    end
  end
end

