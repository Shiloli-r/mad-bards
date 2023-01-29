StartState = Class{__includes = BaseState}

function StartState:init()
    self.background = Background()
    self.world = love.physics.newWorld(0, 300)


end

function StartState:update(dt)
    self.world:update(dt)

    if love.mouse.wasPressed(1) then
        gStateMachine:change('play')
    end

    if love.keyboard.wasPressed('escape') then
        love.event.quit()
    end
end

function StartState:render()
    self.background:render()

    -- title text
    love.graphics.setColor(64/255, 64/255, 64/255, 200/255)
    love.graphics.rectangle('fill', VIRTUAL_WIDTH / 2 - 164, VIRTUAL_HEIGHT / 2 - 40,
        328, 108, 3)
    
    love.graphics.setColor(200/255, 200/255, 200/255, 1)
    love.graphics.setFont(gFonts['huge'])
    love.graphics.printf('Angry 50', 0, VIRTUAL_HEIGHT / 2 - 40, VIRTUAL_WIDTH, 'center')
    
    love.graphics.setColor(200/255, 200/255, 200/255, 1)
    love.graphics.setFont(gFonts['medium'])
    love.graphics.printf('Click to start!', 0, VIRTUAL_HEIGHT / 2 + 40, VIRTUAL_WIDTH, 'center')   
end