-- Welcome to your new Castle project!
-- https://playcastle.io/get-started
-- Castle uses Love2D 11.1 for rendering and input: https://love2d.org/
-- See here for some useful Love2D documentation:
-- https://love2d-community.github.io/love-api/

local total_time_elapsed = 0
-- love funcs
nc = love.graphics.setColor 
gc = r, g, b, a = love.graphics.getColor
bgc = love.graphics.setBackgroundColor

obj ={}
obj.mt={}
function obj.new(o)
 setmetatable(o, obj.mt)
 return o
end
obj.mt.__index = function(tab,key)
 return tab[key]
end

function love.load()
  love.window.setTitle("iiviiGame!")
  c = obj.new({b={0,0,0,1}, w={1,1,1,1}})
  g = obj.new({x=0,y=0,w=127,h=127,scale=3,cc=c.w,dc=c.b}
end

function love.draw()
  love.event.clear()
  bgc(g.cc)
  nc(g.dc)

  local y_offset = 8 * math.sin(total_time_elapsed * 3)
  love.graphics.print('Testing out Castle', 400, 300 + y_offset)
  love.graphics.print('CTRL+R To Update.', 400, 316 + y_offset)
end

function love.update(dt)
  total_time_elapsed = total_time_elapsed + dt
end





