-- Draw a rectangle and set color

-- load default values for rectangle
function love.load()
    x, y, w, h= 50, 50, 60, 20
end

-- Draw a blue rectangle
function love.draw()
    love.graphics.setColor(40, 40, 40)
    love.graphics.rectangle("fill", x, y, w, h)
end