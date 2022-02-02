function love.load()

    d1 = 0
    d2 = 0
    colliderToggle = false

    require("src/startup/gameStart")
    gameStart()
    createNewSave()

    loadMap("test")

    dj.volume("effect", 1)
    spawnChest(100, 100)
end

function love.update(dt)
    updateAll(dt)
end

function love.draw()
    drawBeforeCamera()

    cam:attach()
        drawCamera()
        if colliderToggle then
            world:draw()
            particleWorld:draw()
        end
    cam:detach()

    drawAfterCamera()

    --local debug = require "src/debug"
    --debug:d()
end
score = 0
function love.keypressed(key)
    if key == 'c' then
        colliderToggle = not (colliderToggle and true);
    end

    if key == 'o' then
        player.health = player.health - 0.5
    end

    if key == 'p' then
        player.health = player.health + 0.5
    end

    if key == '^' then
        player.maxHealth = player.maxHealth + 1
    end

    if key == 'l' then
        data.maxHealth = data.maxHealth + 1
    end

    if key == 'escape' then
        love.event.quit()
    end

    if key == 'a' then
        local recSize = 15
        local px = player:getX()
        local py = player:getY()

        if player.dir == "up" then
            py = py - 10
        elseif player.dir == "down" then
            py = py + 10
        elseif player.dir == "left" then
            px = px - 10
        elseif player.dir == "right" then
            px = px + 10
        end

        local colliders = world:queryRectangleArea(px - recSize / 2, py - recSize / 2, recSize, recSize, {'Chest'})

        if #colliders > 0 then
            for _, chest in ipairs(colliders) do
                chest.state = 2
            end
        end
    end

    if key == 'z' then
        player:swingSword()
        sounds.swordSound:play()
    end

    if key == 'x' then
        player:useBomb()
    end
end
