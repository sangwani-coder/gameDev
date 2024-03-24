-- update rectangle size and position on mouse press
-- load default values for rectangle
function love.load()
    printx, printy, w, h= 50, 50, 60, 20
end

-- Draw a blue rectangle
function love.draw()
    love.graphics.setColor(40, 40, 40)
    love.graphics.rectangle("fill", printx, printy, w, h)
end

-- Add event to quit the game

function love.keypressed(k)
    if k == "q" then
        love.event.push('quit') -- quit the game
        -- love.event.quit()
    end
end

-- Detect mouse presses
function love.mousepressed(x, y, button)
    if button == 1 then -- reposition rectangle
        printx = x
        printy = y
    end
    if button == 3 then -- enlarge the rectangle
        w = w + 10
        h = h + 10
    end
    if button == 2 then -- decrease rectangle size
        w = w - 10
        h = h - 10
    end
end