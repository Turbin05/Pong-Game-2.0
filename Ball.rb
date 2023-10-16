require 'gosu'
require_relative 'game_object'

class Ball < GameObject
  WIDTH = 5
  HEIGHT = 5
  
  attr_reader :v
  def initialize(x, y, v)
    super(x, y, WIDTH, HEIGHT)
    @v = v
  end
  
  def update
    self.x += v[:x]
    self.y += v[:y]
  end
  
  def reflect_horizontal
    v[:x] = -v[:x]
  end
  
  def reflect_vertical
    v[:y] = -v[:y]
  end
  
  def draw
    Gosu.draw_rect x, y, WIDTH, HEIGHT, Gosu::Color::RED
  end
end
