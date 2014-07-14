#!/bin/env ruby
# encoding: utf-8

module ApplicationHelper
end

def twitterized_type(type)
  case type
    when :alert
      "alert-block"
    when :error
      "alert-error"
    when :notice
      "alert-success"
    when :success
      "alert-success"
    else
      type.to_s
  end
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

def gravatar_for(user)
	gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
	gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
	image_tag(gravatar_url, alt: user.name, class: "gravatar")
end