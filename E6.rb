require_relative 'bs_helper'

class BabyShoes
  include BSH

  # Write your code here.
  # - Open a window by using BSH.make_window and BSH.open_window
  BSH.make_window
  BSH.open_window
  # - Use method_missing method.
  # - Define classes and methods dynamically by using the names which the method_missing catches.
  #   For example:
  #     When the method_missing catches "oval",
  #     your baby_shoes defines "class BabyShoes::Oval" and "BabyShoes::Oval#oval"
  #　　   and then executes the method dynamically to draw a black oval on the window.
  #     BabyShoes::Oval#oval has 4 arguments, i.e. coordinate (left and top), width, height
  def method_missing(meth, *args, &block)
    if meth.to_s == 'oval'
      # BabyShoes::Oval = Class.new
      BabyShoes::Oval.class_eval do
        def self.oval
          BSH.make_oval *args
        end
      end
    # elsif meth.to_s == 'rect'
    else
      super
    end
  end
end
