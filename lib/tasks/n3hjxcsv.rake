namespace :grid do
  desc "imports worked grids from a csv file"
  task :csvin => :environment do
    require 'csv'
    ffma_array = []
    CSV.foreach('ffma.csv') do | ffma |
      ffma_array << ffma[0]
    end
    
    grid_array = []
    record_count = 0
    ffma_count = 0
    ffma_worked = []

    CSV.foreach('aa5am.csv') do | row |
      grid = row[0]
      if grid_array.index(grid)
        #puts "dup" + grid
      else
        grid_array << grid
        if ffma_array.index(grid)
          ffma_worked << grid
          ffma_count = ffma_count + 1
          status = "FFMA"
          #if qsl_received == "C"
          #  ccount = ccount + 1
          #end
        end
      end
      Grid.create(grid_square: grid, band: "6M", user_id: "AA5AM", status: status)
    end
    puts "Grid Confirmed " + grid_array.count.to_s
    puts "FFMA Grids  " + ffma_count.to_s
    diff_array = ffma_array - ffma_worked
    puts "--------------"
    puts diff_array.to_s
    puts "-----------------"
    puts ffma_worked.to_s
    puts "-----------------"
  end

end

