require 'gosu'

class WinnerWindow 
    def initialize(winner, game_over)
      super(1000, 800)
      self.caption = "Pong Game (Binnatov Edition)"
      @font = Gosu::Font.new(48)
      @winner = winner
      @game_over = game_over
    end

    def draw
      Gosu.draw_rect(0, 0, width, height, Gosu::Color::BLACK)
      @font.draw_text(@winner, 320, 350, 0, 1.0, 1.0, Gosu::Color::WHITE)

      if @game_over
        @game_over_window ||= WinnerWindow.new(score[0] >= SCORE_LIMIT ? "You win" : "You lose", @game_over)
        @game_over_window.show
      end
    end
  end
