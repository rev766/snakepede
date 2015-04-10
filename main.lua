function love.load()

  character = { } 
	character.x = 300
	character.y = 400
  
	love.graphics.setBackgroundColor(225,153,0)

	love.graphics.setColor(0,0,225)
  
  characterSprite = love.graphics.newImage("assets/snake-head.png")
  
end

function love.draw()

  love.graphics.draw(characterSprite,character.x,character.y)

end

function love.update(dt)
	-- testing values for speed of character movements
	if love.keyboard.isDown('d') then
		character.x = character.x + 300 * dt

	elseif love.keyboard.isDown('a') then
		character.x = character.x - 300 * dt

	end

	if love.keyboard.isDown('w') then
		character.y = character.y - 300 * dt

	elseif love.keyboard.isDown('s') then
		character.y = character.y + 300 * dt

	end

end
