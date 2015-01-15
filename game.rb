require 'gosu'
require_relative 'rabbit'
require_relative 'carrot'

class GameWindow < Gosu::Window
  def initialize
    super 1000, 655, false
    self.caption = "Des lapins et des carottes et Vero"
    @background_image = Gosu::Image.new(self, "media/champs.jpeg", true)
    @rabbit = Rabbit.new(self)
    @carrots = []
  end

  def update
    if button_down? Gosu::KbLeft or button_down? Gosu::GpLeft then
      @rabbit.move_left
    end
    if button_down? Gosu::KbRight or button_down? Gosu::GpRight then
      @rabbit.move_right
    end
    if rand >= 0.95
      @carrots << Carrot.new(self)
    end

    @carrots.each do |carrot|
      carrot.fall
    end

  end

  def draw
    @background_image.draw(0, 0, 0)
    @rabbit.draw
    @carrots.each do |carrot|
      carrot.draw
    end
  end
end

window = GameWindow.new
window.show
