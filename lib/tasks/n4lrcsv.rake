namespace :grid do
  desc "imports worked grids from a csv file"
  task :n4lrin => :environment do
    require 'csv'
    ccount = 0
    wcount = 0
    CSV.foreach('n4lr.csv') do | row |
      grid = row[0]
      #band = row[1]
      worked = row[1]
      if worked == "C"
      	ccount = ccount + 1
      elsif worked == "W"
      	wcount = wcount + 1
      else
        #
      end
      if worked != ""
        puts grid + " " + worked
      end
      #Grid.create(grid_square: grid, band: "6M", user_id: "N4LR")
    end
    puts "Confirmed" + ccount.to_s
    puts "Worked" + wcount.to_s
  end
end

