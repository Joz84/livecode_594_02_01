require_relative "../citizen"

describe Citizen do
  describe "#can_vote?" do
    it "Si le citoyen a plus de 18 ans la methode retourne true" do
      citizen = Citizen.new("bob", "l'éponge", 22)
      expect(citizen.can_vote?).to eq(true)
    end

    it "Si le citoyen a moins de 18 ans la methode retourne false" do
      citizen = Citizen.new("bob", "l'éponge", 17)
      expect(citizen.can_vote?).to eq(false)
    end
  end

  describe "#full_name" do
    it "Si le citoyen s'appelle bob sponge la methode doit retourner Bob SPONGE" do
      citizen = Citizen.new("bob", "sponge", 22)
      expect(citizen.full_name).to eq("Bob SPONGE")
    end
  end

end
