require 'player'

describe Player do
  subject(:paulo) { Player.new('Paulo')}
  subject(:joe) { Player.new('Joe')}
  
  describe '#name' do
    it "returns players name" do
      expect(paulo.name).to eq('Paulo')
    end
  end

  describe '#hit_points' do
    it "returns the hit points" do
      expect(paulo.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
    it "damages the player" do
      expect(joe).to receive(:lose_hp)
      paulo.attack(joe)
    end
  end

  describe '#lose_hp' do
    it "reduces the player hit points" do
      expect { joe.lose_hp }.to change { joe.hit_points }.by(-10)
    end
  end
end