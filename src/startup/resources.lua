sprites = {}
sprites.playerSheet = love.graphics.newImage('sprites/playerSheet.png')
sprites.sword = love.graphics.newImage('sprites/sword.png')

sprites.effects = {}
sprites.effects.slice = love.graphics.newImage('sprites/effects/slice.png')
sprites.effects.explosion = love.graphics.newImage('sprites/effects/explosion.png')
sprites.effects.rock = love.graphics.newImage('sprites/effects/rock.png')
sprites.effects.fuseSmoke = love.graphics.newImage('sprites/effects/fuseSmoke.png')

sprites.environment = {}
sprites.environment.breakableRock = love.graphics.newImage('sprites/environment/breakableRock.png')
sprites.environment.treasureSheet = love.graphics.newImage('sprites/environment/treasureSheet.png')
sprites.environment.treasure = love.graphics.newImage('sprites/environment/treasure.png')

sprites.interaction = {}
sprites.interaction.questionMark = love.graphics.newImage('sprites/interaction/questionMark.png')

sprites.items = {}
sprites.items.bomb = love.graphics.newImage('sprites/items/bomb.png')
sprites.items.bombSheet = love.graphics.newImage('sprites/items/bombSheet.png')

sprites.hud = {}
sprites.hud.heart = love.graphics.newImage('sprites/ui/heart.png')
sprites.hud.halfHeart = love.graphics.newImage('sprites/ui/heart-half.png')
sprites.hud.emptyHeart = love.graphics.newImage('sprites/ui/heart-empty.png')

fonts = {}
fonts.debug = love.graphics.newFont("fonts/vt323/VT323-Regular.ttf", 20*scale)

sounds = {}
sounds.villageMusic = love.audio.newSource("sound/village_music.ogg", "stream")
sounds.swordSound = love.audio.newSource("sound/sword_slash.ogg", "static")
