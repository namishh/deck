local nurture = require("deck.libs.nurture")


local D = require("deck.deck")
function love.load()
    D:load()
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
    D:draw()
end

function love.update()
    D:update()
end

function love.mousepressed(x, y, button)
    D:mousepressed(x, y, button)
end

function love.mousereleased(x, y, button)
    D:mousereleased(x, y, button)
end

function love.keypressed(key, scancode, isrepeat)
    D:keypressed(key, scancode, isrepeat)
end

function love.mousemoved(x, y, dx, dy)
    D:mousemoved(x, y, dx, dy)
end

function love.textinput(text)
    D:textinput(text)
end