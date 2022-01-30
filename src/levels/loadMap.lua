function loadMap(mapName, destX, destY)

    loadedMap = mapName
    gameMap = sti("maps/" .. mapName .. ".lua")

    if gameMap.layers["Walls"] then
        for i, obj in pairs(gameMap.layers["Walls"].objects) do
            spawnWall(obj.x, obj.y, obj.width, obj.height, obj.name)
        end
    end

end