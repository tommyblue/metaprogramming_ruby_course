animal = 'dog'

# 1
def animal.speak
    puts "#{to_s().capitalize} says Woof!"
end

# 2
animal.define_singleton_method(:speak) do
  puts "#{to_s().capitalize} says Woof!"
end

# 3
animal.instance_eval do
  class << self
    def speak
      puts "#{to_s().capitalize} says Woof!"
    end
  end
end

# 4
animal.instance_eval do
  def self.speak
    puts "#{to_s().capitalize} says Woof!"
  end
end

# 5
animal.instance_eval do
  class << animal
    def speak
      puts "#{to_s().capitalize} says Woof!"
    end
  end
end

# 6
animal.instance_eval do
  def animal.speak
    puts "#{to_s().capitalize} says Woof!"
  end
end

# 7
class << animal
  def speak
    puts "#{to_s().capitalize} says Woof!"
  end
end

# 8
module Tongue
  def speak
    puts "#{to_s().capitalize} says Woof!"
  end
end
animal.extend Tongue

# 9
module Tongue
  def speak
    puts "#{to_s().capitalize} says Woof!"
  end
end

animal.class.instance_eval do
  include Tongue
end

# 10
animal.class.send(:define_method, :speak, lambda { puts "#{to_s().capitalize} says Woof!" })

# Speak!
animal.speak  #=> 'Dog says Woof!'
