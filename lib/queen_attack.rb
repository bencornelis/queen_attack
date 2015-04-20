class Array
  define_method(:queen_attack?) do |coords|
    queen_x = self.at(0)
    queen_y = self.at(1)
    opponent_x = coords.at(0)
    opponent_y = coords.at(1)
    if queen_y.eql?(opponent_y).|(queen_x.eql?(opponent_x))
      true
    elsif ((((opponent_y - queen_y) / (opponent_x - queen_x)).abs).eql?(1))
      true
    else
      false
    end
  end
end
