-- Detect keypress event with
-- love.event.push

-- load default values for rectangle
function love.load()
    x, y, w, h= 50, 50, 60, 20
end

-- Draw a blue rectangle
function love.draw()
    love.graphics.setColor(40, 40, 40)
    love.graphics.rectangle("fill", x, y, w, h)
end

-- Add event to quit the game

function love.keypressed(k)
    if k == "q" then
        love.event.push('quit') -- quit the game
        -- love.event.quit()
    end
end

