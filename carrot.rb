class Carrot
  def initialize(window)
    @image = Gosu::Image.new(window, "media/carrot.bmp", false)
    @x = rand * window.width
    @y = - @image.height * 2 / 3
    @window = window
  end

  def warp(x, y)
    @x, @y = x, y
  end

  def fall
    @y += 10
  end


  def draw
    @image.draw(@x, @y, 1)
  end
end