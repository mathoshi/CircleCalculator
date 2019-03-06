-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created by: Matsuru Hoshi
-- Created on Feb 29 2019
--
-- This file will calculate the area and circumference of a circle with a given diameter
-----------------------------------------------------------------------------------------

--

local BackgroundImage = display.newImageRect( "assets/circle-background.png", 1500, 938 )
BackgroundImage.x = 200
BackgroundImage.y = 200
BackgroundImage.id = "Background"

--This is a variable created to option out the text, the title in this case
local TitleText =
{
	text = "Welcome to Circle Calculator!",
	x = 160,
	y = 70,
	width = 250,
	font = "Futura",
	fontSize = 40,
	align = "center"
}

--This displays the text
local Title = display.newText( TitleText )
Title: setFillColor( 1, 1, 1 )

local HeadingText =
{
	text = "Type the diameter of the circle you wish to calculate. The circumference and area will be given!",
	x = 160,
	y = 200,
	width = 250,
	font = "Futura",
	fontSize = 15,
	align = "center",
}

local Heading = display.newText( HeadingText )
Heading: setFillColor( 1, 1, 1 )

local DiameterTextField = native.newTextField( 160, 270, 200, 25)
DiameterTextField.id = "Diameter Input"

local CircumferenceAnswer = display.newText( "", 160, 300, "Futura", 30)
CircumferenceAnswer.id = "CircumferenceAnswer"
CircumferenceAnswer: setFillColor( 1, 1, 1 )

local AreaText = display.newText( "", 160, 300, "Futura", 30)
AreaText.id = "Area Result"
AreaText: setFillColor( 1, 1, 1 )

local Button1 = display.newRect( 160, 430, 150, 70 )
--Button1.strokeWidth = 4
--Button1:setStrokeColor( 0, 0, 0 )
Button1:setFillColor( 1, 1, 1 )
Button1.alpha = 1

--local Button2 = display.newCircle( 160, 430, 60)
--Button2.strokeWidth = 5
--Button2:setFillColor( 1, 1, 1 )
--Button2:setStrokeColor( 0, 0, 0)

local DoneButton = display.newText( "Done", 160, 430, "Futura", 40)
DoneButton.id = "Done"
DoneButton: setFillColor( 0, 0, 0 )

--This will calculate the radius from the diameter that is inputed. It will later be used in the calculations for the area and circumference.
local function radius()

	local Diameter
	local Radius

	Diameter = DiameterTextField.text

	Radius = Diameter / 2

	return true

end

local function Circumference( event )

			local Radius
			local Circumference

			Radius = radius(DiameterTextField.text)

			Circumference = 2 * math.pi * Radius

			CircumferenceAnswer = "The Circumference is" .. Circumference

			return true
end

local function Area( event )

			local Radius
			local Area

			Radius = radius(DiameterTextField.text)

			Area = math.pi * (Radius ^ 2)

			AreaText = "The Area is" .. Radius

			return true
end

Button1:addEventListener( "touch", Circumference, Area)
