require 'rspec'

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def square(number)
    return number * number
  end

  def power(number, exponent)
    return number ** exponent
  end

end



RSpec.describe Calculator do #class where the methods you are testing belong to
  describe '#add' do #method that you are testing
    it 'should return the sum of two numbers' do #string will always begin with the word should
    calculator = Calculator.new #start of the test
    expect(calculator.add(1,3)).to eq(4) #test
    end
  end

  describe '#subtract' do
    it 'should find the difference of two numbers' do
      calc = Calculator.new
      expect(calc.subtract(7,3)).to eq(4)
    end
  end

  describe '#multiply' do
    it 'should find the product of 2 numbers' do
      calc = Calculator.new
      expect(calc.multiply(4,3)).to eq(12)
    end
  end

  describe '#divide' do
    it 'should find the quotient of 2 numbers' do
      calc = Calculator.new
      expect(calc.divide(12,3)).to eq(4)
    end
  end

  describe '#square' do
    it 'should find the product of 1 number times itself' do
      calc = Calculator.new
      expect(calc.square(4)).to eq(16)
    end
  end

  describe '#power' do
    it 'should find the product of a number raised to the power of the second number' do
      calc = Calculator.new
      expect(calc.power(2,3)).to eq(8)
    end
  end

end
