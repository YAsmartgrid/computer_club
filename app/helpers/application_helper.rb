#!/bin/env ruby
# encoding: utf-8

module ApplicationHelper
end

def grade(integer)
	case integer
		when 1
			"中学1年"
		when 2
			"中学2年"
		when 3
			"中学3年"
    when 4
      "高校1年"
    when 5
      "高校2年"
    when 6
      "高校3年"
    else
      "無所属"
	end
end