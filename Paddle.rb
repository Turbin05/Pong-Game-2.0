require 'gosu'
require_relative 'game_object'

class Paddle < GameObject
    WIDTH = 12
    HEIGHT = 60
    def initialize(x, y)
      super(x, y, WIDTH, HEIGHT)
    end
    def draw
      Gosu.draw_rect x, y, w, h, Gosu::Color::WHITE
    end
end
