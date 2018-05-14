-----------------------------------------------------------------------------------------
--
-- characters_select.lua
-- Created by: Joelle Ishimwe
-- Date: May 4, 2018
-- Description: This is the characters page, dislaying a back button to the main menu and the
-- options for characters.
-----------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------
-- INITIALIZATIONS
-----------------------------------------------------------------------------------------

-- Use Composer Libraries
local composer = require( "composer" )
local widget = require( "widget" )

-----------------------------------------------------------------------------------------

-- Naming Scene
sceneName = "characters_select"

-- Creating Scene Object
scene = composer.newScene( sceneName ) -- This function doesn't accept a string, only a variable containing a string

-----------------------------------------------------------------------------------------
-- LOCAL VARIABLES
-----------------------------------------------------------------------------------------
local bkg_image
local backButton
local sofiaButton
local toddButton
local tobyButton
local pennyButton

-----------------------------------------------------------------------------------------
-- LOCAL FUNCTIONS
-----------------------------------------------------------------------------------------

-- Creating Transitioning Function back to main menu
local function BackTransition( )
    composer.gotoScene( "main_menu", {effect = "zoomOutInFade", time = 500})
end

local function ToddTransition( )
    composer.gotoScene( "level1_screen", {effect = "zoomOutInFade", time = 500})
end

local function SofiaTransition( )
    composer.gotoScene( "level1_screen2", {effect = "zoomOutInFade", time = 500})
end

local function TobyTransition( )
    composer.gotoScene( "level1_screen3", {effect = "zoomOutInFade", time = 500})
end    

local function PennyTransition( )
    composer.gotoScene( "level1_screen4", {effect = "zoomOutInFade", time = 500})
end    

-----------------------------------------------------------------------------------------
-- GLOBAL SCENE FUNCTIONS
-----------------------------------------------------------------------------------------

-- The function called when the screen doesn't exist
function scene:create( event )

    -- Creating a group that associates objects with the scene
    local sceneGroup = self.view

    -----------------------------------------------------------------------------------------
    -- BACKGROUND
    -----------------------------------------------------------------------------------------

    display.setDefault ("background", 229/255, 104/255, 45/255)

    -----------------------------------------------------------------------------------------
    -- BUTTON WIDGETS
    -----------------------------------------------------------------------------------------

    -- Creating Back Button
    backButton = widget.newButton( 
    {
        -- Setting Position
        x = 200,
        y = 100,

        -- Setting Dimensions
        width = 170,
        height = 70,

        -- Setting Visual Properties
        defaultFile = "Images/BackButtonUnpressed.png",
        overFile = "Images/BackButtonPressed.png",

        -- Setting Functional Properties
        onRelease = BackTransition

    } )

    -----------------------------------------------------------------------------------------



    -- Creating Todd Button
    toddButton = widget.newButton( 
    {
        -- Setting Position
        x = 200,
        y = 500,

        -- Setting Dimensions
        width = 150,
        height = 270,

        -- Setting Visual Properties
        defaultFile = "Images/ToddUnpressed.png",
        overFile = "Images/ToddPressed.png",

        -- Setting Functional Properties
        onRelease = ToddTransition

    } )

    -----------------------------------------------------------------------------------------




    -- Creating Sophia Button
    sofiaButton = widget.newButton( 
    {
        -- Setting Position
        x = 400,
        y = 500,

        -- Setting Dimensions
        width = 150,
        height = 270,

        -- Setting Visual Properties
        defaultFile = "Images/SofiaUnpressed.png",
        overFile = "Images/SofiaPressed.png",

        -- Setting Functional Properties
        onRelease = SofiaTransition

    } )

    -----------------------------------------------------------------------------------------



    -- Creating Sophia Button
    tobyButton = widget.newButton( 
    {
        -- Setting Position
        x = 600,
        y = 500,

        -- Setting Dimensions
        width = 150,
        height = 170,

        -- Setting Visual Properties
        defaultFile = "Images/TobyUnpressed.png",
        overFile = "Images/TobyPressed.png",

        -- Setting Functional Properties
        onRelease = TobyTransition

    } )

    -----------------------------------------------------------------------------------------



    -- Creating Sophia Button
    pennyButton = widget.newButton( 
    {
        -- Setting Position
        x = 800,
        y = 500,

        -- Setting Dimensions
        width = 150,
        height = 170,

        -- Setting Visual Properties
        defaultFile = "Images/PennyUnpressed.png",
        overFile = "Images/PennyPressed.png",

        -- Setting Functional Properties
        onRelease = PennyTransition

    } )

    -----------------------------------------------------------------------------------------

    -- Associating Buttons with this scene
    sceneGroup:insert( backButton )
    sceneGroup:insert( toddButton )
    sceneGroup:insert( sofiaButton )
    sceneGroup:insert( tobyButton )
    sceneGroup:insert( pennyButton )

    
end --function scene:create( event )

-----------------------------------------------------------------------------------------

-- The function called when the scene is issued to appear on screen
function scene:show( event )

    -- Creating a group that associates objects with the scene
    local sceneGroup = self.view

    -----------------------------------------------------------------------------------------

    local phase = event.phase

    -----------------------------------------------------------------------------------------

    if ( phase == "will" ) then
        -- Called when the scene is still off screen (but is about to come on screen).

    -----------------------------------------------------------------------------------------

    elseif ( phase == "did" ) then
        -- Called when the scene is now on screen.
        -- Insert code here to make the scene come alive.
        -- Example: start timers, begin animation, play audio, etc.
    end

end -- function scene:show( event )

-----------------------------------------------------------------------------------------

-- The function called when the scene is issued to leave the screen
function scene:hide( event )

    -- Creating a group that associates objects with the scene
    local sceneGroup = self.view

    -----------------------------------------------------------------------------------------

    local phase = event.phase

    -----------------------------------------------------------------------------------------

    if ( phase == "will" ) then
        -- Called when the scene is on screen (but is about to go off screen).
        -- Insert code here to "pause" the scene.
        -- Example: stop timers, stop animation, stop audio, etc.

    -----------------------------------------------------------------------------------------

    elseif ( phase == "did" ) then
        -- Called immediately after scene goes off screen.
    end

end --function scene:hide( event )

-----------------------------------------------------------------------------------------

-- The function called when the scene is issued to be destroyed
function scene:destroy( event )

    -- Creating a group that associates objects with the scene
    local sceneGroup = self.view

    -----------------------------------------------------------------------------------------


    -- Called prior to the removal of scene's view ("sceneGroup").
    -- Insert code here to clean up the scene.
    -- Example: remove display objects, save state, etc.

end --function scene:destroy( event )

-----------------------------------------------------------------------------------------
-- EVENT LISTENERS
-----------------------------------------------------------------------------------------

-- Adding Event Listeners
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

-----------------------------------------------------------------------------------------

return scene
