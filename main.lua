-- please run this by `love --console .`

local hello = require("hello")

function love.load()
    print("hello love2d!")
    print("1 + 1 = " .. hello.add(1,1))
end

function love.update(dt)
end

function love.draw()
    -- love.graphics.print("Hello World", 400, 300)
    love.graphics.print("1 + 1 = " .. hello.add(1,1), 400, 300)
end