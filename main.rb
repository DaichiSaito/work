require 'benchmark'
require './src/detector.rb'
require './src/strategy/ruby_basic_strategy.rb'
require './src/strategy/gorigori_strategy.rb'

original = (1..1000).to_a.shuffle
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
