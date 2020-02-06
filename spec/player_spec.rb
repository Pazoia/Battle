require 'player'

describe Player do
  subject(:paulo) { Player.new('Paulo')}
  
  describe '#name' do
    it "returns players name" do
      expect(paulo.name).to eq("Paulo")
    end
  end

  describe '#deduct_hp()'do
    it 'should deduct the correct amount of hp' do 
      expect { paulo.deduct_hp(10) } .to change { paulo.hp }.by(-10)
    end 
  end 
end