module MyEnumerable
  def all?(&block)
    res = true
    each { |item| res = false unless block.call(item) }
    res
  end
end