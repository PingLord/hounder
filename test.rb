#!/usr/bin/ruby

def sum(n)
	exec("md5sum #{n} | awk '{print $1}'")
end

sum('/work/coding/ruby-scan/1.dat')
