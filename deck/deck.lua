local nurture = require("deck.libs.nurture")

--[[
a simple slide would have
- background of four types -> color, image, video, or shader
- a specific "layout" of boxes (everything will be from nurture)
- a transition (for now, hardcode it to fade)
- a function for custom updates we want to add to the slide or its widgets
- a functio to get all the children in a tree structure (parent, children, siblings, etc.

-- some more widgets made from nurture
- list (basically a vbox) in which each item is a hbox (one item is the bullet marker, next is anoher box (list objets can be anything))
- nested lists
- the slides layouts, each layout would be a one big box taking up the whole slide and inside it would be hbox,vbox,fracbox.
--- for now layouts
    1. title and subtitle box vbox in the middle of the screen, with whatever background we want
    2. vfracbox where its two boxes, one is the smaller box (meant for titles but can be sued as such), and then content box.


--- LATER ADVANCED FEATURES
- entry animatoin of widgets
- exit animation of widgets
- making sure when a right or left click means slide update or widget animation
- slide navigation (next, previous, go to specific slide)
- somehow figure out magic motion transition between slides (items from one slide to another)
]]--

N = nurture:new()

local D = {}

function D:load()
end

function D:draw()
    N:draw()
end

function D:update(dt)
    N:update(dt)
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