class A
  def initialize
    @a = 11
    @@a = 22
    a = 33
  end
  @a = 1
  @@a = 2
  a = 3
end

A.class_eval { @a }
# => 1

A.new.instance_eval { @a }
# => 11

A.send(:class_variable_get, :@@a)
# => 22
