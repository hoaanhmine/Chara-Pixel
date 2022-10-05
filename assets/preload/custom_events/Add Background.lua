-- Event notes hooks
function onEvent(name, value1, value2)
	if name == 'Add Background' then
		makeLuaSprite(value1, value1, -650, -725)
		setScrollFactor(value1, value2);
		addLuaSprite(value1, false)
	end
end