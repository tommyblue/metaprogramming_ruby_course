#  Define the following class without class MaskedString, def tr_vowel and def self.tr_vowel
# class MaskedString < String
#   def tr_vowel
#     tr 'aeiou', '*'
#   end
#   def self.tr_vowel str
#     str.tr 'aeiou', '*'
#   end
# end

MaskedString = Class.new(String)

MaskedString.instance_eval do
  define_method(:tr_vowel) { tr('aeiou', '*') }
end

MaskedString.class_eval do
  define_singleton_method(:tr_vowel) { |str| str.tr('aeiou', '*') }
end

str = MaskedString.new("qwertyuiopasfghjkl")
puts str.tr_vowel

puts MaskedString.tr_vowel("qwertyuiopasfghjkl")
