-- play audio

function love.load()
    source = love.audio.newSource('audio.mp3', "stream")
    volume = 0.5
    img = love.graphics.newImage('bk.jpg')
end

function love.draw()
    love.graphics.print('Welcome to Audio Player', 400, 300)
    love.graphics.draw(img, 400, 300)
end

function love.keypressed(k)
    if k == 'p' then
        function love.draw()
            love.graphics.print('Playing', 400, 300)
        end
        love.audio.play(source)
    end
    if k == 'k' then
        function love.draw()
            love.graphics.print('Paused', 400, 300)
        end
        love.audio.pause()
    end
    if k == 'q' then
        love.timer.sleep(3)
        love.event.quit()
    end
    if k == 's' then
        function love.draw()
            love.graphics.print('Stopped', 400, 300)
        end
        love.audio.stop()
    end
end