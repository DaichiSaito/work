class RubyBasicStrategy
  def detect(original, comparison)
    (original - comparison).first
  end
end
