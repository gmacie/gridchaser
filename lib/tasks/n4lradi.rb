

    File.open("/home/gmacie/sites/gridchaser/n3hjx.adi","rb") do |file|
    	

      six_count = 0
      total_count = 0
      grid_fields = {}

      file.each_line('<EOR>') do | line |

        #puts "line inspect" + line.inspect
        line = line.upcase!

        #puts line.inspect

        line =~ /<BAND:\d>(\d+.)\s/
        band = $1
        
        line =~ /<CALL:\d+>(\w+\/*\w+)/
        call_sign = $1

        line =~ /<GRIDSQUARE:\d+>(\w+)\s/
        grid_square = $1
        
        if grid_square != nil
          grid_square = grid_square[0,4]
          grid_field = grid_square[0,2]
        end


        total_count = total_count + 1

        #puts "line inspect" + line.inspect

        #puts "continue ? "
        #xx = gets.chomp
        
        #puts total_count.to_s + " " + call_sign.to_s + " band x " + band.to_s + " x"

        if band != "6M"
          next
        end

        puts "line inspect" + line.inspect

        six_count = six_count + 1

        puts "band " + band.to_s
        puts "call " + call_sign.to_s
        puts "grid " + grid_square.to_s

        #break
      end
      
      puts "6 meter qsos " + six_count.to_s
      puts "total   qsos " + total_count.to_s
      
    end