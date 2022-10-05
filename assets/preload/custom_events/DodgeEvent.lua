function onCreate()
    --variables
	Dodged = false;
    canDodge = false;
    DodgeTime = 0;
	
    precacheImage('DODGE');
	
	makeLuaSprite('DODGE', 'DODGE', 0, 0);
	setObjectCamera('DODGE','other')
	addLuaSprite('DODGE', true);
	setProperty('DODGE.visible', false)
end

function onEvent(name, value1, value2)
    if name == "DodgeEvent" then
    --Get Dodge time
    if trepDiff == 0 then
		DodgeTime = (value1+0.7);
	elseif trepDiff == 1 then
		DodgeTime = (value1+0.5);
	else
		DodgeTime = (value1);
	end
	
    --Make Dodge Sprite
	setProperty('DODGE.visible', true)
    playSound("dodge", 0.7)
	--Set values so you can dodge
	canDodge = true;
	runTimer('Died', DodgeTime);
	
	end
end

function onUpdate()
   if canDodge == true and keyJustPressed('accept') then
   
   characterPlayAnim('dad', 'stab', true);
   setProperty('dad.specialAnim', true);
   Dodged = true;
   canDodge = false
   
   end
end

function onTimerCompleted(tag, loops, loopsLeft)
   if tag == 'Died' and Dodged == false then
   setProperty('health', 0);
   
   elseif tag == 'Died' and Dodged == true then
   characterPlayAnim('boyfriend', 'dodge', true);
   setProperty('boyfriend.specialAnim', true);
   characterPlayAnim('dad', 'stab', true);
   setProperty('dad.specialAnim', true);
   cameraShake(game, 0.05, 0.5)
   setProperty('DODGE.visible', false)
   Dodged = false
   
   end
end