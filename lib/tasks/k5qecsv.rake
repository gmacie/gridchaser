namespace :grid do
  desc "imports worked grids from a csv file"
  task :k5qein => :environment do
    require 'csv'
    ffma_array = []
    CSV.foreach('ffma.csv') do | ffma |
      ffma_array << ffma[0]
    end
    #puts ffma_array
    puts ffma_array.count.to_s
    ccount = 0
    wcount = 0
    record_count = 1
    grid_array = []
    ffma_count = 0
    ffma_worked = []
    ccount = 0
    CSV.foreach('k5qe.csv') do | row |
      call = row[0]
      grid = row[19]
      band = row[2]
      mode = row[3]
      qsl_received = row[31]
      puts record_count.to_s + " " + call + " " + grid + " " + band + " " + mode
      record_count = record_count + 1
      if grid_array.index(grid)
        #puts "dup" + grid
      else
        grid_array << grid
        if ffma_array.index(grid)
          ffma_worked << grid
          ffma_count = ffma_count + 1
          #if qsl_received == "C"
          #  ccount = ccount + 1
          #end
        end
      end
      #puts grid_array
      #if record_count == 100
      #  break
      #end
      #Grid.create(grid_square: grid, band: "6M", user_id: "K5QE")
    end# can i tell which one still needed
    diff_array = ffma_array - ffma_worked
    puts "Grid Worked " + grid_array.count.to_s
    puts "FFMA Grids  " + ffma_count.to_s
    puts "Confirmed   " + ccount.to_s
    puts "--------------"
    puts diff_array.to_s
  end
end

