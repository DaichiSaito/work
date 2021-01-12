class Detector
  attr_reader :original, :comparison, :strategy

  def initialize(original, comparison, strategy)
    @original = original
    @comparison = comparison
    @strategy = strategy
  end

  def detect
    strategy.detect(original, comparison)
  end
end
