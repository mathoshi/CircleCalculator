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

local BackgroundImage = display.newImageRect( "assets/circle-background.png", 1080, 675 )
BackgroundImage.x = -100
BackgroundImage.y = 200
BackgroundImage.id = "Background"

local TitleText =
{
	text = "Circle Calculator 1000",
	x = 160,
	y = 50,
	width = 250,
	font = native.systemFont, 
	fontSize = 30,
	align = "center"
}

local Title = display.newText( TitleText )
Title: setFillColor( 1, 1, 1 )
