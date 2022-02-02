treasures = {}

function spawnChest(x, y)
    -- State :
    -- 0 = closed
    -- 1 = collided
    -- 2 = opened
    -- 3 = item going up
    -- 4 = end
    local treasure = world:newRectangleCollider(x, y, sprites.environment.treasure:getWidth(), sprites.environment.treasure:getHeight(), {collision_class = "Chest"})
    treasure:setType('static')

    treasure.x = x
    treasure.y = y
    treasure.state = 0
    treasure.name = "monTrésor"

    treasure.grid = anim8.newGrid(32, 16, sprites.environment.treasureSheet:getWidth(), sprites.environment.treasureSheet:getHeight())
    treasure.anim1 = anim8.newAnimation(treasure.grid(1, 1), 1)
    treasure.anim2 = anim8.newAnimation(treasure.grid(2, 1), 1)

    treasure.anim = treasure.anim1

    table.insert(treasures, treasure)

    function treasure:update(dt)
       if treasure.state == 0 then
            if player:enter('Chest') then
                treasure.state = 1
            end
        end
        if treasure.state == 1 then
            if player:exit('Chest') then
                treasure.state = 0
            end
        end
    end

    function treasure:draw()
        if treasure.state == 1 then
            love.graphics.draw(sprites.interaction.questionMark, treasure.x + 8, treasure.y - 17)
        end
        if treasure.state == 2 then
            treasure.anim = treasure.anim2
        end
    end
end

function treasures:update(dt)
    for _,t in ipairs(treasures) do
        t:update(dt)
    end
end

function treasures:draw()
    for _,t in ipairs(treasures) do
        t.anim:draw(sprites.environment.treasureSheet, t.x, t.y)
        t.draw()
    end
end