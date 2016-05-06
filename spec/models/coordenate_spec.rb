require 'rails_helper'

RSpec.describe Coordenate do
  describe "#eql?" do
    let(:coordenate) { Coordenate.new(1,1) }
    context "when all values are equals" do
      let(:new_coordenate) { Coordenate.new(1,1) }

      it "returns true " do
        expect(coordenate.eql?(new_coordenate)).to be_truthy
      end
    end
    context "when some value is different" do
      let(:new_coordenate) { Coordenate.new(2,1) }

      it "returns false " do
        expect(coordenate.eql?(new_coordenate)).to be_falsey
      end
    end
  end
end
