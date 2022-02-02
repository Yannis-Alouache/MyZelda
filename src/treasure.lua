treasures = {}

function spawnChest(x, y)
    -- State :
    -- 0 = closed
    -- 1 = opened
    -- 2 = item going up
    -- 3 = end
    local treasure = {}

    treasure.x = x
    treasure.y = y
    treasure.state = 0
    treasure.name = "testChest"

    treasure.grid = anim8.newGrid(32, 16, sprites.environment.treasureSheet:getWidth(), sprites.environment.treasureSheet:getHeight())
    treasure.anim1 = anim8.newAnimation(treasure.grid(1, 1), 1)
    treasure.anim2 = anim8.newAnimation(treasure.grid(2, 1), 1)

    treasure.anim = treasure.anim1

    table.insert(treasures, treasure)
end

function treasures:draw()
    for _,t in ipairs(treasures) do
        t.draw(sprites.environment.treasureSheet, t.x, t.y)
    end
end