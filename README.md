# Ruby Metaprogramming Course

I'll use this repository to hold the excercises of the course I'm attending at RubyLearning:

http://rubylearning.com/blog/2013/02/08/a-free-ruby-metaprogramming-course-learn-to-think-in-ruby/

## Exercises

### 1

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

From outside the class, print, in order:

    1
    2
    3
    11
    22
    33

### 2

    class I
      def like arg
        puts "%s %s %s" % [self.class, *self.class.instance_methods(false), arg]
      end
    end
    c, m, arg = gets.split  # input 'I like metaprogramming.'
    # write your code here to display 'I like metaprogramming.''

### 3: Singleton

Write as many singleton methods to produce the speak() method with the output 'Dog says Woof!'

    animal = 'dog'
    animal.speak #=> 'Dog says Woof!'

### 4: Binding

Expected output '[1, 2, 3]'

    class A
      @@a = 1
      @a = 2
      a = 3
      # Write your code here. Use binding method.
    end
    p eval('[@@a, @a, a]', *****) # Replace '*****' to your code
