-- Event notes hooks
function onEvent(name, value1, value2)
	if name == 'HudGone' then
		if value1 == 'start' then
			setProperty('healthBarBG.visible', false)
			setProperty('healthBar.visible', false)
			setProperty('iconP1.visible', false)
			setProperty('iconP2.visible', false)
			setProperty('rating.visible', false)
			setProperty('comboSpr.visible', false)
			setProperty('numScore.visible', false)
			setProperty('timeBarBG.visible', false)
			setProperty('timeTxt.visible', false)
			setProperty('timeBar.visible', false)
			setProperty('scoreTxt.visible', false)
		end
		if value1 == 'stop' then
			setProperty('healthBarBG.visible', true)
			setProperty('healthBar.visible', true)
			setProperty('iconP1.visible', true)
			setProperty('iconP2.visible', true)
			setProperty('rating.visible', true)
			setProperty('comboSpr.visible', true)
			setProperty('numScore.visible', true)
			setProperty('timeBarBG.visible', true)
			setProperty('timeTxt.visible', true)
			setProperty('timeBar.visible', true)
			setProperty('scoreTxt.visible', true)
		end
	end
end