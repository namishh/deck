local nurture = require("deck.libs.nurture")

N = nurture:new()


function love.load()
    N:registerFont('assets/BoldPixels.ttf', 'TitleFont', 24, true)
    -- adds in a box
    nurture.Box:new(N, {
        x = 50,
        y = 50,
        forcedWidth = 200,
        forcedHeight = 100,
        backgroundColor = { 0.2, 0.5, 0.8, 0.9 },
        padding = 10,
        children = {
            nurture.TextLabel:new(N, "Hello World", "TitleFont", {
                color = { 1, 1, 1, 1 },
            })
        }
        })
end

function love.draw()
    -- nurture manages all of its widgets
    N:draw()
end

function love.update()
    -- no need to draw and update each one of them seperately
    N:update()
end

function love.mousepressed(x, y, button)
    N:mousepressed(x, y, button)
end

function love.mousereleased(x, y, button)
    N:mousereleased(x, y, button)
end
