require 'player'

describe Player do
  subject(:paulo) { Player.new('Paulo')}
  
  describe '#name' do
    it "returns players name" do
      expect(paulo.name).to eq("Paulo")
    end
  end
end