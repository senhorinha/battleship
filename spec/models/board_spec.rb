require 'rails_helper'

RSpec.describe Board do
  let(:board) { Board.new(args) }
  describe "#columns" do
    let(:args) { {} }
    context "when board columns" do
      context "is different than 10" do
        it "returns errors" do
          board.valid?
          expect(board.errors[:columns]).not_to be_empty
        end

        let(:args) { { columns: [1,2,3,4,5,6,7,8,9,10,11] } }
        it "returns errors" do
          board.valid?
          expect(board.errors[:columns]).not_to be_empty
        end

        let(:args) { { columns: [1,2,3,4,5,6,7,8,9] } }
        it "returns errors" do
          board.valid?
          expect(board.errors[:columns]).not_to be_empty
        end
      end

      context "is equals to 10" do
        let(:args) { { columns: [1,2,3,4,5,6,7,8,9,10] } }
        it "returns emppty errors" do
          board.valid?
          expect(board.errors[:columns]).to be_empty
        end
      end
    end
  end

  describe "#lines" do
    let(:args) { { lines: [] } }
    context "when board lines" do
      context "is different than 10" do
        it "returns errors" do
          board.valid?
          expect(board.errors[:lines]).not_to be_empty
        end

        let(:args) { { lines: [1,2,3,4,5,6,7,8,9,10,11] }}
        it "returns errors" do
          board.valid?
          expect(board.errors[:lines]).not_to be_empty
        end

        let(:args) { { lines: [1,2,3,4,5,6,7,8,9] }}
        it "returns errors" do
          board.valid?
          expect(board.errors[:lines]).not_to be_empty
        end
      end

      context "is equals to 10" do
        let(:args) { { lines: [1,2,3,4,5,6,7,8,9,10] }}
        it "returns emppty errors" do
          board.valid?
          expect(board.errors[:lines]).to be_empty
        end
      end
    end
  end

  describe ".SHIPS" do
    let(:ships) {[
      Coordenate.new(2,3),
      Coordenate.new(2,4),
      Coordenate.new(2,5),
      Coordenate.new(2,6),
      Coordenate.new(5,2),
      Coordenate.new(6,2),
      Coordenate.new(7,2),
      Coordenate.new(7,4),
      Coordenate.new(7,5),
      Coordenate.new(3,8),
      Coordenate.new(4,8),
      Coordenate.new(5,8),
      Coordenate.new(6,8),
      Coordenate.new(7,8),
      Coordenate.new(8,8)
      ]}

    it "returns all ship positions" do
      expect(Board::COORDENATES_WITH_SHIP.map(&:line)).to eq(ships.map(&:line))
      expect(Board::COORDENATES_WITH_SHIP.map(&:column)).to eq(ships.map(&:column))
    end
  end

  describe "#hit" do
    let(:args) { {columns: [1,2,3,4,5,6,7,8,9,10], lines: [1,2,3,4,5,6,7,8,9,10] }}
    context "when hit" do
      let(:hit_coordenate) { Coordenate.new(2,3) }
      it "returns true" do
        expect(board.hit(hit_coordenate)).to be_truthy
      end
    end
    context "when not hit" do
      let(:miss_coordenate) { Coordenate.new(1,1) }
      it "returns false" do
        expect(board.hit(miss_coordenate)).to be_falsey
      end
    end
  end
end
