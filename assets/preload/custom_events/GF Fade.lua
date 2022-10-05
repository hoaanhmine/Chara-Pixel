-- Event notes hooks
function onEvent(name, value1, value2)
	if name == 'GF Fade' then
		duration = tonumber(value1);
		if duration < 0 then
			duration = 0;
		end

		targetAlpha = tonumber(value2);
		if duration == 0 then
			setProperty('gf.alpha', targetAlpha);
			--setProperty('iconP2.alpha', targetAlpha); -- incase shes a opponent or somethin
		else
			doTweenAlpha('gfsGone:(', 'gf', targetAlpha, duration, 'linear');
			--doTweenAlpha('iconsGoneAswell', 'iconP2', targetAlpha, duration, 'linear'); -- incase shes a opponent or somethin
		end
	end
end