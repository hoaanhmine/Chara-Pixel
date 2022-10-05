function onCreate()
	if downscroll then
			makeLuaSprite('warn', 'dodgewarn', 390, 210);
		else
			makeLuaSprite('warn', 'dodgewarn', 390, 40);
		end
		setObjectCamera('warn', 'hud');
		setLuaSpriteScrollFactor('warn', 0, 0);
	end	

function onEvent(name, value1, value2)
	if name == "QT Dodge" then
		runTimer('dodge', 0.779)
		playSound('Blade', 0.5)
		addLuaSprite('warn', false);
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'dodge' then
		if keyPressed('space') then
			characterPlayAnim('boyfriend', 'dodge', true);
		else
			characterPlayAnim('boyfriend', 'hurt', true);
			setProperty('health', -500);
		end
	removeLuaSprite('warn', false)
	end
end