-----------------------------------------------------------------------------------------
--
-- main_menu.lua
-- Created by: Joelle
-- Date: April 23, 2018
-- Description: This is the main menu, displaying the credits, instructions & play buttons.

-----------------------------------------------------------------------------------------
-- SOUNDS
-----------------------------------------------------------------------------------------

-- background music
--local backgroundSound = audio.loadSound("Sounds/background.mp3")
--local backgroundSoundChannel

-----------------------------------------------------------------------------------------
-- INITIALIZATIONS
-----------------------------------------------------------------------------------------

-- Use Composer Library
local composer = require( "composer" )

-----------------------------------------------------------------------------------------

-- Use Widget Library
local widget = require( "widget" )

-----------------------------------------------------------------------------------------

-- Naming Scene
sceneName = "main_menu"

-----------------------------------------------------------------------------------------

-- Creating Scene Object
local scene = composer.newScene( sceneName )
