class Coordenate
  attr_reader :line, :column

  def initialize line, column
    @line = line
    @column = column
  end

  def eql? coordenate
    @line == coordenate.line && @column == coordenate.column
  end
end
