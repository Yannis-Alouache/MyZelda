function drawBeforeCamera()

end

function drawCamera()

    setWhite()

    if gameMap.layers["Base"] then
        gameMap:drawLayer(gameMap.layers["Base"])
    end
  
    if gameMap.layers["Objects"] then
        gameMap:drawLayer(gameMap.layers["Objects"])
    end

    if gameMap.layers["Test"] then
        --gameMap:drawLayer(gameMap.layers["Test"])
    end

    walls:draw()
    bombs:draw()
    treasures:draw()
    player:draw()
    effects:draw()
    particles:draw()

end

function drawAfterCamera()
    hearts:draw()

    love.graphics.setColor(0,0,0)
    love.graphics.rectangle("fill", 30, 75, 220, 100)
    love.graphics.setColor(255,255,255)
    love.graphics.print("Player X = " .. math.floor(player:getX()), 50, 100, 0, 2)
    love.graphics.print("Player Y = " .. math.floor(player:getY()), 50, 130, 0, 2)
end