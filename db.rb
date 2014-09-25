#!/usr/bin/ruby


#### creating hex db signature and import from file ####
sighex = Hash.new

File.open("1.dat","r") do | file_handle|
	file_handle.each_line do |sighex|
		sighex[sighex]="hexdetected"
	end
end

## create db of md5 files ##
sigsum = Hash.new

File.open("2.dat","r") do |file_handle|
	file_handle.each_line do |sigsum|
		sigsum[sigsum]="phpshell"
	end
end

##second db of md5 files ##
sigsum2 = Hash.new

File.open("3.dat","r") do |file_handle|
	file_handle.each_line do |sigsum2|
		sigsum2[sigsum2]="phpshell2"
	end
end

### work in progress for md5 ##

def sum(n)
        exec("md5sum #{n} | awk '{print $1}'")
end

## work in progress for md5 ##

## the scanning engine ###

#def scan(path,output)
	puts "Starting regex checking"
	puts "-------------------------"
	puts "Please enter the path to scan:"
	path=gets.chomp
	puts "Please choose an output file:"
	output=gets.chomp

	Dir.glob("path/*.*") do |check|
	puts "working on: #{check}"
	File.read(check)
		if check.include?(sighex.each{|sig,value| sig }) 
			File.open(output, 'w') {|out| file_write(value)}
		end
#	sigsum.each {|sig,name| if sig == sum(check) File.open(output, 'w'){|out| file_write(name)} end }
	end
#end	
	
