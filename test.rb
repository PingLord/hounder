#!/usr/bin/ruby
#encoding: utf-8
require 'digest/md5' ﻿
def sum(n)
	md5 = Digest::MD5.file(n).hexdigest
end

n=gets.chomp
sum(n)
