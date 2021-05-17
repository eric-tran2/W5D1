class Integer
  # Integer#hash already implemented for you
end

class Array
  def hash
    result = 0
    return self.empty?.hash if self.empty?
    (0...self.length-1).each do |i|
      result += (self[i].hash ^ self[i+1].hash)
    end
    result
  end
end

class String
  def hash
    result = 0
    chars = self.split("").permutations
    (0...chars.length-1).each do |i|
      result += (chars[i].hash ^ chars[i+1].hash)
    end
    result
  end
end

class Hash
  # This returns 0 because rspec will break if it returns nil
  # Make sure to implement an actual Hash#hash method
  def hash
    0
  end
end
