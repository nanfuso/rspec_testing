require 'rspec'

class Fizzbuzz
  def output(number)
    return 'fizzbuzz' if number % 15 == 0
    return 'buzz' if number % 5 == 0
    return 'fizz' if number % 3 == 0
    number
  end

  def go
    (1..100).each do |number|
      puts output(number)
    end
  end
end

fizzbuzz = Fizzbuzz.new
fizzbuzz.go

RSpec.describe Fizzbuzz do
    let (:fizzbuzz) { Fizzbuzz.new }
    
  describe '#output' do
    it 'should return 1 if given 1' do
        expect(fizzbuzz.output(1)).to eq(1)
    end
    it 'should return 2 if given 2' do
        expect(fizzbuzz.output(2)).to eq(2)
    end
    it 'should return fizz if given 3' do
        expect(fizzbuzz.output(3)).to eq('fizz')
    end
    it 'should return buzz if given 5' do
        expect(fizzbuzz.output(5)).to eq('buzz')
    end
    it 'should return fizz if given 6' do
        expect(fizzbuzz.output(6)).to eq('fizz')
    end
    it 'should return fizz if given 9' do
        expect(fizzbuzz.output(9)).to eq('fizz')
    end
    it 'should return buzz if given 10' do
        expect(fizzbuzz.output(10)).to eq('buzz')
    end
    it 'should return fizzbuzz if given 15' do
        expect(fizzbuzz.output(15)).to eq('fizzbuzz')
    end
    it 'should return 73 if given 73' do
        expect(fizzbuzz.output(73)).to eq(73)
    end
    it 'should return fizzbuzz if given 45' do
        expect(fizzbuzz.output(45)).to eq('fizzbuzz')
    end
  end

end