function  love.load()

    love.window.setMode(320,480,{resizable = false})
    Background = love.graphics.newImage("imagens/background.png")
    x,y,w,h = 20,20,60,20
end

function love.update(dt)

    if love.keyboard.isDown('up')then
        y = y - 1
    end

    if love.keyboard.isDown('down')then
        y = y + 1
    end

    if love.keyboard.isDown('left')then
        x = x - 1
    end

    if love.keyboard.isDown('right')then
        x = x + 1
    end
    
end

function love.draw()
    
    love.graphics.draw(Background, 0,0)
    love.graphics.draw("fill", x,y,w,h)

end