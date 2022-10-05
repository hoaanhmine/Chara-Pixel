function onEvent(name, value1, value2)
	if name == "zad" then
		makeLuaSprite('image', 'sad', 0, 0);
		addLuaSprite('image', true);
		playSound('BOOM');
		doTweenColor('hello', 'image', 'FFFFFFFF', 0.2, 'quartIn');
		setObjectCamera('image', 'other');
		runTimer('wait', 0.6);
	end
end

function onTimerCompleted(tag, loops, loopsleft)
	if tag == 'wait' then
		doTweenAlpha('byebye', 'image', 0, 0.5, 'linear');
	end
end

function onTweenCompleted(tag)
	if tag == 'byebye' then
		removeLuaSprite('image', true);
	end
end