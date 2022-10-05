-- Event notes hooks NOTE: THIS IS ONLY FOR LULLABY
function onEvent(name, value1, value2)
	if name == 'Random Note' then
		character = tonumber(value1);
		transitionTime = tonumber(value2);

		if character == 1 then
			noteTweenX("NoteMove5", 4, 300, 0.01, cubeInOut)
			noteTweenX("NoteMove6", 5, 190, 0.01, cubeInOut)
			noteTweenX("NoteMove7", 6, 500, 0.01, cubeInOut)
			noteTweenX("NoteMove8", 7, 100, 0.01, cubeInOut)
		end

		if character == 1.5 then
			noteTweenY("NoteMove5", 4, 30, 0.01, cubeInOut)
			noteTweenY("NoteMove6", 5, -190, 0.01, cubeInOut)
			noteTweenY("NoteMove7", 6, -300, 0.01, cubeInOut)
			noteTweenY("NoteMove8", 7, 100, 0.01, cubeInOut)
		end

		if character == 2 then
			noteTweenAlpha("NoteAlpha5", 4, -1, transitionTime, linear)
			noteTweenAlpha("NoteAlpha6", 5, -1, transitionTime, linear)
			noteTweenAlpha("NoteAlpha7", 6, -1, transitionTime, linear)
			noteTweenAlpha("NoteAlpha8", 7, -1, transitionTime, linear)
		end

		if character == 2.5 then
			noteTweenAlpha("NoteAlpha5", 4, 0.4, transitionTime, linear)
			noteTweenAlpha("NoteAlpha6", 5, 0.4, transitionTime, linear)
			noteTweenAlpha("NoteAlpha7", 6, 0.4, transitionTime, linear)
			noteTweenAlpha("NoteAlpha8", 7, 0.4, transitionTime, linear)
		end
	end
end