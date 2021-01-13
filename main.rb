require 'benchmark'
require './src/detector.rb'
require './src/strategy/ruby_basic_strategy.rb'
require './src/strategy/gorigori_strategy.rb'
require './src/strategy/binary_search_strategy.rb'

DEFAULT_SIZE = 1000
arg_size = ARGV[0]

raise StandardError.new("不正な値だよ(´ﾟдﾟ｀)") if !arg_size.nil? && arg_size.to_i < 2

size = arg_size&.to_i || DEFAULT_SIZE
original = (1..(size)).to_a.shuffle
comparison = original.dup - [original.sample]

puts 'start RubyBasicStrategy ...'
result = Benchmark.realtime do
  detector = Detector.new(original, comparison, RubyBasicStrategy.new)
  puts "取り出されたのは: #{detector.detect}"
end
puts "処理時間は: #{result}"
puts 'end RubyBasicStrategy'

puts 'start GorigoriStrategy ...'
result = Benchmark.realtime do
  detector = Detector.new(original, comparison, GorigoriStrategy.new)
  puts "取り出されたのは: #{detector.detect}"
end
puts "処理時間は: #{result}"
puts 'end GorigoriStrategy'

puts 'start BinarySearchStrategy ...'
result = Benchmark.realtime do
  detector = Detector.new(original, comparison, BinarySearchStrategy.new)
  puts "取り出されたのは: #{detector.detect}"
end
puts "処理時間は: #{result}"
puts 'end BinarySearchStrategy'
