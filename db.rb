#!/usr/bin/ruby

require 'digest/md5' ﻿

#### creating hex db signature and import from file ####
sighex = Hash.new

File.open("1.dat","r") do | file_handle|
	file_handle.each_line do |sighex|
		sighex[sighex.to_s]="hexdetected"
	end
end

## create db of md5 files ##
sigsum = Hash.new

File.open("2.dat","r") do |file_handle|
	file_handle.each_line do |sigsum|
		sigsum=[sigsum.to_s]="phpshell"
	end
end

##second db of md5 files ##
sigsum2 = Hash.new

File.open("3.dat","r") do |file_handle|
	file_handle.each_line do |sigsum2|
		sigsum2=[sigsum2.to_s]="phpshell2"
	end
end

### work in progress for md5 ##
def sum(n)
	md5 = Digest::MD5.file('n')

## work in progress for md5 ##

## the scanning engine ###

def scan(path,output)
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
	

