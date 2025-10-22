function love.load()
    love.window.setTitle("Hello World")
end

function love.draw()
    love.graphics.setColor(1, 1, 1, 1)
    love.graphics.printf("Hello World", 0, love.graphics.getHeight() / 2 - 20, love.graphics.getWidth(), "center")
end
