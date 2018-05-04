-----------------------------------------------------------------------------------------
--
-- level1_screen.lua
-- Created by: Joelle Ishimwe
-- Date: May 4, 2018
-- Description: This is the level 1 page, dislaying the level one part of the game
-----------------------------------------------------------------------------------------

-- use composer libraries
local composer = require( "composer" )
local widget = require( "widget" )

-----------------------------------------------------------------------------------------

-- Naming Scene
sceneName = "level1_screen"

-- Creating Scene Object
scene = composer.newScene( sceneName ) -- This function doesn't accept a string, only a variable containing a string