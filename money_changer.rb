require 'rspec'
class ChangeMachine

    def change(cents)
     array = [] 

      quarters = cents / 25
      quarters.times do
        array << 25
      end
      remainder_from_quarters = cents % 25

      dimes = remainder_from_quarters / 10
      dimes.times do
        array << 10
      end

      dimes_remainder = remainder_from_quarters % 10

      nickels = dimes_remainder / 5
      nickels.times do
        array << 5
      end

      nickels_remainder = dimes_remainder % 5

      nickels_remainder.times do
        array << 1
      end
 p array
    end
end

machine = ChangeMachine.new
machine.change(119)

#   if cents == 25
#     array << 25   

#   elsif cents > 20 
#     array << 10
#     array << 10    
#     remainders = cents % 5 
#     remainders.times do |remainder|
#       array << 1

#     end
#   elsif cents == 20 
#     array << 10
#     array << 10 
#   elsif cents > 15 && cents < 20 
#     array << 10
#     array << 5
#     remainders = cents % 5
        
#     remainders.times do |remainder|
#       array << 1
#     end
#   elsif cents == 15
#     array << 10
#     array << 5  
#   elsif cents > 10 && cents < 15
#     array << 10
#     remainders = cents % 5
    
#     remainders.times do |remainder|
#       array << 1
#     end
#   elsif cents == 10
#     array << 10
#   elsif cents > 5 && cents < 10
#     array << 5
#     remainders = cents % 5
    
#     remainders.times do |remainder|
#       array << 1
#     end
#   elsif cents == 5
#     array << 5
#   elsif
#     cents.times do
#       array << 1
#     end  
#   end
#  return array


RSpec.describe ChangeMachine do 
  describe '#change' do 
    it 'should return [1] when given 1' do 
      machine = ChangeMachine.new
      expect(machine.change(1)).to eq([1])
    end

    it 'should return [1, 1] when given 2' do 
      machine = ChangeMachine.new
      expect(machine.change(2)).to eq([1,1])
    end
    it 'should return [1, 1, 1] when given 3' do 
      machine = ChangeMachine.new
      expect(machine.change(3)).to eq([1,1, 1])
    end
    it 'should return [5] when given 5' do 
      machine = ChangeMachine.new
      expect(machine.change(5)).to eq([5])
    end
     it 'should return [5,1] when given 6' do 
      machine = ChangeMachine.new
      expect(machine.change(6)).to eq([5,1])
    end
       it 'should return [5,1,1] when given 7' do 
      machine = ChangeMachine.new
      expect(machine.change(7)).to eq([5,1,1])
    end
       it 'should return [10] when given 10' do 
      machine = ChangeMachine.new
      expect(machine.change(10)).to eq([10])
    end
      it 'should return [10, 1] when given 11' do 
      machine = ChangeMachine.new
      expect(machine.change(11)).to eq([10, 1])
    end
     it 'should return [10, 5] when given 15' do 
      machine = ChangeMachine.new
      expect(machine.change(15)).to eq([10, 5])
    end
    it 'should return [10, 5, 1] when given 16' do 
      machine = ChangeMachine.new
      expect(machine.change(16)).to eq([10, 5, 1])
    end 
    it 'should return [10, 5, 1, 1] when given 17' do 
      machine = ChangeMachine.new
      expect(machine.change(17)).to eq([10, 5, 1, 1])
    end 
    it 'should return [10, 5, 1, 1, 1] when given 18' do 
      machine = ChangeMachine.new
      expect(machine.change(18)).to eq([10, 5, 1, 1, 1])
    end 
    it 'should return [10, 10] when given 20' do 
      machine = ChangeMachine.new
      expect(machine.change(20)).to eq([10, 10])
    end
     it 'should return [10,10,1] when given 21' do 
      machine = ChangeMachine.new
      expect(machine.change(21)).to eq([10, 10, 1])
    end
    it 'should return [10, 10, 1, 1] when given 22' do 
      machine = ChangeMachine.new
      expect(machine.change(22)).to eq([10, 10, 1, 1])
    end
      it 'should return [25] when given 25' do 
      machine = ChangeMachine.new
      expect(machine.change(25)).to eq([25])
    end
  end 

end