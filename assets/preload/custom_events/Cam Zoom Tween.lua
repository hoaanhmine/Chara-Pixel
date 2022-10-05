-- Event notes hooks
function onEvent(name, value1, value2)
	if name == 'Cam Zoom Tween' then
		targetZoom = tonumber(value1);
		duration = tonumber(value2);
		if duration < 0 then
			duration = 0;
		end
		
		setProperty('defaultCamZoom', targetZoom);
		if duration == 0 then
			setProperty('camGame.screenZoom', targetZoom);
		else
			doTweenZoom('screenZoom', 'camGame', targetZoom, duration, 'quadInOut');
		end
		--debugPrint('Event triggered: ', name, targetZoom, duration);
	end
end