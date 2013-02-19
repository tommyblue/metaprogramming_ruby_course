class A
  @@a = 1
  @a = 2
  a = 3
  # Write your code here. Use binding method.
  def get_binding
    return binding()
  end
end
p eval('[@@a, @a, a]', A.new.get_binding)   # Replace '*****' to your code
