#!/usr/bin/env ruby

require 'rubygems'
require 'simple-rss'
require 'open-uri'


def print_details(item)
  puts "Title: #{item.title}"
  puts "Link: #{item.link}"
  puts "Content: #{item.content}"
  puts "Content encoded : #{item.content_encoded}"
  puts "Comments : #{item.comments}"
  puts "Published Date: #{item.pubDate}"
  puts "Category : #{item.category}"
  puts "GUID : #{item.guid}"
  puts "Creator : #{item.dc_creator}"
  puts "Content URL : #{item.media_content_url}"
  puts "Content Type : #{item.media_content_type}"
  puts "=" * 80
end


rss = SimpleRSS.parse(
  #open('http://indianminerva.wordpress.com/feed/').read
  open('http://indianminerva.wordpress.com/comments/feed/').read
)

print_details(rss.items[0])

# rss.items.each do|i|
#   print_details(i)
# end


#https://support.google.com/blogger/answer/97933?hl=en
#http://indianminerva.wordpress.com/feed/