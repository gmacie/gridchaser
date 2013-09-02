
namespace :adi do
  desc "imports adi"
  task :n4lradi do
    File.open("n4lr.adi") do |file|
    	rslt = ""
      file.each_line do | line |
      	      	
        line =~ /<BAND:\d+>(\d+.)\s/
        BAND = $1.to_s
        
        line =~ /<CALL:(\d+)/
        call_length = $1.to_s
        puts "call length " + call_length

        line =~ /<CALL:\d>(\w+\/*\w+)\s/
        CALL = $1.to_s

        puts "band " + BAND
        puts "call " + CALL
        
      end
    end
  end
end