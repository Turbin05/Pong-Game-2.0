require 'gosu'

class Window < Gosu::Window 
    
  attr_accessor :view
    
    def initialize()
      super(1000, 800)
      self.caption = "Pong 1.0 Binnatov Edition"
      @view = StartPage.new(self)
    end
  
    def update
        @view.update
    end

    def draw
        @view.draw
    end
  end
