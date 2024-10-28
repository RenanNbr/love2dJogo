aviao_14bis = {
    src = "imagens/14bis.png",
    largura = 64,
    altura = 64,
    x = 0,
    y = 0
}

function move_14bis()

    if love.keyboard.isDown('w') then
        aviao_14bis.y = aviao_14bis - 1
    end

    if love.keyboard.isDown('s') then
        aviao_14bis.y = aviao_14bis + 1
    end

    if love.keyboard.isDown('a') then
        aviao_14bis.y = aviao_14bis - 1
    end

    if love.keyboard.isDown('d') then
        aviao_14bis.y = aviao_14bis + 1
    end
    
end

function love.load()

    love.window.setMode(320,480,{resizable = false})
    love.window.setTitle('14_bis vs meteoros')
    background = love.graphics.newImage(aviao_14bis.src)
    aviao_14bis.imagem = love.graphics.newImage(aviao_14bis.src)
    
end

function love.update()
    
   if love.keyboard.isDown('w','a','s','d') then
    move_14bis()
    
   end

end

function love.draw()

    love.graphics.draw(background,0,0)
    love.graphics.draw(aviao_14bis.imagem, aviao_14bis.x, aviao_14bis.y)
    
end