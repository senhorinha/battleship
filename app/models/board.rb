class Board
  include ActiveModel::Validations
  attr_accessor :columns, :lines

  COORDENATES_WITH_SHIP = [
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
  ]

  validates :columns, :length => { is: 10 }
  validates :lines, :length => { is: 10 }

  def initialize args
    self.columns = args[:columns] || []
    self.lines = args[:lines] || []
  end

  def hit hit_coordenate
    COORDENATES_WITH_SHIP.each do |coordenate|
      return true if hit_coordenate.eql? coordenate
    end
    false
  end
end
