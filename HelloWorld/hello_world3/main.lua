-- Detect mouse button clicks
function love.load()
    printx = 0
    printy = 0
 end
 
 function love.draw()
    love.graphics.print("Text", printx, printy)
 end
 
 function love.mousepressed(x, z, button, istouch)
    if button == 1 then -- 1 is left click 2 is right click, 3 is middle
       printx = x
       printy = z
    end
 end


 -- Add event to quit the game

function love.keypressed(k)
    if k == "q" then
        love.event.push('quit') -- quit the game
        -- love.event.quit()
    end
end