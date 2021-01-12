class GorigoriStrategy
  def detect(original, comparison)
    original.sort
    comparison.sort
    index = (0...original.size).detect do |idx|
      original[idx] != comparison[idx]
    end
    original[index]
  end
end
