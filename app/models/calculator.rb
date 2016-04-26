class Calculator
  def self.kg(a)
    a.to_i * 0.453592.to_d(precision= 4)
  end

  def self.lbs(a)
    a.to_i * 2.2046.to_d(precision=5)
  end
end