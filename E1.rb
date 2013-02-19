catcher = class A
  def initialize
    @a = 11
    @@a = 22
    a = 33
  end
  @a = 1
  @@a = 2
  a = 3
end

puts A.class_eval { @a }
puts A.class_variable_get :@@a
puts catcher
puts A.new.instance_eval { @a }
puts A.class_variable_get :@@a
puts A.new.send :initialize
