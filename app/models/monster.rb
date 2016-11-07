class Monster

  def initialize(color, eyes, wings, name)
    @color = color
    @eyes = eyes
    @wings = wings
    @name = name
  end

  def color
    @color.to_s
  end

  def num_eyes
    @eyes.to_s
  end

  def name
    @name.to_s
  end

  def wings
    if @wings == 'Wings'
      @has_wings = 'wings'
    elsif @wings == 'No Wings'
      @has_wings = 'no wings'
    end
  end

end
