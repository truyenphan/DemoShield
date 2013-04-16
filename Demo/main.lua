--[[ 

This example demonstrates a generic Button class

This code is MIT licensed, see http://www.opensource.org/licenses/mit-license.php
(C) 2010 - 2011 Gideros Mobile 

]]

-- create a label to show number of clicks
local label = TextField.new(nil, "Clicked 0 time(s)")
label:setPosition(120, 240)
stage:addChild(label)

-- create the up and down sprites for the button
local up = Bitmap.new(Texture.new("button_up.png"))
local down = Bitmap.new(Texture.new("button_down.png"))

-- create the button
local button = Button.new(up, down)

BhDemoShield.mObjectToClick = button

-- register to "click" event
local click = 0
button:addEventListener("click", 
	function() 
		click = click + 1
		label:setText("Clicked " .. click .. " time(s)")
	end)

button:setPosition(40, 150)
stage:addChild(button)

local text = TextField.new(nil,"")
local text2 = TextField.new(nil,"")
text:setX(10)
text:setY(50)
text2:setX(10)
text2:setY(80)
text:setScale(2,2)
text2:setScale(1.5,2)
text2:setText("Press Left key to turn ON/OFF")
function UpdateText()
	if HOVER_EMULATION_ON == true then
	
	text:setText("MOUSE Hover emulation: ON ")
	else
	text:setText("MOUSE Hover emulation: OFF ")
	end
end
text:addEventListener(Event.ENTER_FRAME,UpdateText)
stage:addChild(text)
stage:addChild(text2)

