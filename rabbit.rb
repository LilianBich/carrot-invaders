class Rabbit
  def initialize(window)
    @image = Gosu::Image.new(window, "media/lapin.bmp", false)
    @x = window.width.to_f / 2.0 - @image.width.to_f / 2.0
    @y = window.height - @image.height
    @score = 0
    @window = window
  end

  def warp(x, y)
    @x, @y = x, y
  end

  def move_right
    @x += 10 if @x <= @window.width - @image.width
  end

  def move_left
    @x -= 10 if @x >= 0
  end

  def draw
    @image.draw(@x, @y, 2)
  end
end