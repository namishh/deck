local nurture = require("deck.libs.nurture")

N = nurture:new()

local D = {}

function D:load()
end

function D:draw()
    N:draw()
end

function D:update()
    N:update()
end

function D:mousepressed(x, y, button)
    N:mousepressed(x, y, button)
end

function D:mousereleased(x, y, button)
    N:mousereleased(x, y, button)
end

function D:keypressed(key, scancode, isrepeat)
    N:keypressed(key, scancode, isrepeat)
end

function D:mousemoved(x, y, dx, dy)
    N:mousemoved(x, y, dx, dy)
end

function D:textinput(text)
    N:textinput(text)
end

return D