function onEvent(name, value1, value2)
	if name == 'HUDandNotesgoneSmoothly' then
		if value1 == 'start' then
			doTweenAlpha('GUzItween', 'camHUD', 0, 1.5, 'linear');
		end
	end
end
function onEvent(name, value1, value2)
	if name == 'HUDandNotesgoneSmoothly' then
		if value1 == 'stop' then
			doTweenAlpha('GUItwzeen', 'camHUD', 1, 1.5, 'linear');
		end
	end
end