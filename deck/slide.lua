local Slide = {}
Slide.__index = Slide

function Slide:new(N, options)
    local self = setmetatable({}, Slide)
    self.N = N 
    self.name = name 
    self.visible = false 
    self.opacity = 0

    self.transitionDuration = options.transitionDuration or 0.5
    self.updateCallback = options.updateCallback
    self.drawCallback = options.drawCallback

    
    self.stack = N.stack:new(N, {
        x = 0,
        y = 0,
        forcedWidth = love.graphics.getWidth(),
        forcedHeight = love.graphics.getHeight(),
        children = {}
    })
end



return Slide
