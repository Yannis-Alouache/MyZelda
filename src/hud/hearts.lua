hearts = {}

function hearts:draw()
    local scale = 3.5
    local width = sprites.hud.heart:getWidth() * scale + 4
    local height = sprites.hud.heart:getHeight() * scale + 4
    local offset = 0
    local heartSprite = sprites.hud.heart

    for i = 1, player.maxHealth do
        if i > player.health then
            heartSprite = sprites.hud.emptyHeart
        end
        if player.health - i == -0.5 then
            heartSprite = sprites.hud.halfHeart
        end

        offset = (i - 1) * width
        if i > 7 then
            offset = offset - (width * 7);
            love.graphics.draw(heartSprite, 30 + offset, 30 + height, 0, scale)
        else
            love.graphics.draw(heartSprite, 30 + offset, 30, 0, scale)
        end
    end
end