# Launch with:
#
# ruby E6_app.rb -XstartOnFirstThread

require_relative 'E6'
BabyShoes.app do
  p oval 100, 100, 100, 100
  p oval 300, 300, 200, 30
  # p rect 200, 200, 100, 50
end
