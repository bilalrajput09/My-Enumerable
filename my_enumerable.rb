module MyEnumerable
  def any?
    each do |element|
      return true if yield element
    end
    false
  end

  def all?
    each do |element|
      return false unless yield(element)
    end
    true
  end

  def filter
    results = []
    each do |element|
      results << element if yield(element)
    end
    results
  end
end
