
function love.load()
   target = {}
   target.x = 300
   target.y = 300
   target. radius = 50
   target.color = {1,0,0}

   score = 0
   timer = 0

   gameFont = love.graphics.newFont(40)
end

function love.update()
  
end

function love.draw()
    love.graphics.setColor(1,1,1)
    love.graphics.setFont(gameFont)
    love.graphics.print(score,0,0)
    love.graphics.setColor(target.color)
    love.graphics.circle("fill",target.x,target.y,target.radius)
    
end

function love.mousepressed(x,y,button)
    if button == 1 
    then
        if(x >= target.x - target.radius 
        and x <= target.x + target.radius 
        and y >= target.y - target.radius 
        and y <= target.y + target.radius) 

        then
            score = score + 1
            target.x = math.random(target.radius,love.graphics.getWidth() - target.radius)
            target.y = math.random(target.radius,love.graphics.getHeight() - target.radius)
        end
    end
end