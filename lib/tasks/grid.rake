namespace :grid do
  desc "imports worked grids from a csv file"
  task :csvin => :environment do
    require 'csv'
    CSV.foreach('n4lr.csv') do | row |
      grid = row[0]
      Gird.grid.create(grid: grid)
    end
  end
end

