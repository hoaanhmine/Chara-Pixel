function onEvent(name, value1, value2)
	if name == 'Replace stage layer' then
		stage1 = value1;
        doTweenAlpha('stageAppear', CharaBG3, 1, 1, 'linear');
		stage2 = value2;
		doTweenAlpha('stageGone', CharaBG, 0, 1, 'linear');
	end
end