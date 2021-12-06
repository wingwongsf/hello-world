#!/usr/bin/env ruby
# 
# Hello World employing Ruby and ruby learnings...


class Hello_World 

  @@msg_buf = ""

  def init(msg = "just some message")
    @@msg_buf = msg
    return "#{@@msg_buf}"
  end

  def is_hello?()
    valid=true
    if !@@msg_buf.to_s.upcase.start_with?("HELLO") then
      valid = false
    end
    return valid
  end

  def is_world?()
    valid=true
    if !@@msg_buf.to_s.upcase.end_with?("WORLD") then
      valid = false
    end
    return valid
  end

  def store(msg)
    @@msg_buf = msg
    return @@msg_buf
  end

  def retrieve()
    return @@msg_buf
  end
end

def batch_test( greet, msg )
  puts "Update with: %s" % [greet.store(msg)]
  puts "Test if Hello: %s" % [greet.is_hello?]
  puts "Test if World: %s" % [greet.is_world?]
  puts "Recall Msg:    %s" % [greet.retrieve]
end

not_hello_world="What a fine day it is?"
hello_world="Hello World"

greeting = Hello_World.new

puts "Init: %s" % [greeting.init()]

batch_test(greeting, not_hello_world)
puts " "

batch_test(greeting, hello_world)
puts " "

hello_worlds = DATA.readlines.map(&:chomp)

hello_worlds.each do |msg| 
  batch_test(greeting, msg)
  puts " "
end


__END__
hello world
helloworld
hello-world
hello_world
