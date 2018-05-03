-- Title: CompanyLogo
-- Name: Joelle Ishimwe
-- Course: ICS2O
-- This program displays an animated company logo

-----------------------------------------------------------------------------------------

-- Use Composer Library
local composer = require( "composer" )

-- Name the Scene
sceneName = "splash_screen"

-- Create Scene Object
local scene = composer.newScene( sceneName )

-----------------------------------------------------------------------------------------
-- BACKGROUND
-----------------------------------------------------------------------------------------

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

--set banckground colour
display.setDefault("background", 255/225, 204/255, 204/255)

-----------------------------------------------------------------------------------------
-- SOUNDS
-----------------------------------------------------------------------------------------

-- create sound and make it play
local music = audio.loadSound ("Sounds/PianoEffect.mp3")
local musicChannel 

----------------------------------------------------------------------------------------
-- LOCAL VARIABLES
-----------------------------------------------------------------------------------------
 
-- The local variable for this scene
local logo
local scrollSpeed = 7
local scrollSpeed2 = 2
local musicChannel

--------------------------------------------------------------------------------------------
-- LOCAL FUNCTIONS
--------------------------------------------------------------------------------------------

-- The function that moves logo (spin, grow, fade)
local function moveLogo()

	-- rotate the logo 40 degrees again and again
	logo:rotate(8)

    -- add the scroll speed to the y-value of the logo
	logo.y = logo.y - scrollSpeed

	-- change the transparency of the logo everytime it moves so that it fades out 
	logo.alpha = logo.alpha - 0.007

    -- make the logo switch direction once at a point
     if (logo.y > 900) or (logo.y < 155) then
        -- change the sign of the scroll speed
        logo.y = logo.y + scrollSpeed
        logo.x = logo.x - scrollSpeed
     end

end


-- The function makes the logo grow
local function growLogo()

    -- make the logo grow 
    logo.width = logo.width + scrollSpeed2
    logo.height = logo.height + scrollSpeed2

end



-- The function that will go to the main menu 
local function gotoMainMenu()
    --composer.gotoScene( "main_menu" )
end


-----------------------------------------------------------------------------------------
-- GLOBAL SCENE FUNCTIONS
-----------------------------------------------------------------------------------------

-- The function called when the screen doesn't exist
function scene:create( event )

    -- Creating a group that associates objects with the scene
    local sceneGroup = self.view

    -- Insert the logo image
    logo = display.newImageRect("Images/CompanyLogoJoelle.png", 100, 100)

    -- set the initial x and y position of the logo
    logo.x = display.contentWidth/2
    logo.y = 700

    -- Insert objects into the scene group in order to ONLY be associated with this scene
    sceneGroup:insert( logo )

end -- function scene:create( event )

--------------------------------------------------------------------------------------------

-- The function called when the scene is issued to appear on screen
function scene:show( event )

    -- Creating a group that associates objects with the scene
    local sceneGroup = self.view

    -----------------------------------------------------------------------------------------

    local phase = event.phase

    -----------------------------------------------------------------------------------------

    -- Called when the scene is still off screen (but is about to come on screen).
    if ( phase == "will" ) then
       
    -----------------------------------------------------------------------------------------

    elseif ( phase == "did" ) then

        -- start the splash screen music
        musicChannel = audio.play( music )

        -- Call the moveLogo function as soon as we enter the frame.
        Runtime:addEventListener("enterFrame", moveLogo)

        -- Call the growLogo function as soon as we enter the frame.
        Runtime:addEventListener("enterFrame", growLogo)

         --Go to the main menu screen after the given time.
        timer.performWithDelay ( 3000, gotoMainMenu)          
        
    end

end --function scene:show( event )

-----------------------------------------------------------------------------------------

-- The function called when the scene is issued to leave the screen
function scene:hide( event )

    -- Creating a group that associates objects with the scene
    local sceneGroup = self.view
    local phase = event.phase

    -----------------------------------------------------------------------------------------

    -- Called when the scene is on screen (but is about to go off screen).
    -- Insert code here to "pause" the scene.
    -- Example: stop timers, stop animation, stop audio, etc.
    if ( phase == "will" ) then  

    -----------------------------------------------------------------------------------------

    -- Called immediately after scene goes off screen.
    elseif ( phase == "did" ) then
        
        -- stop the music sounds channel for this screen
        audio.stop(musicChannel)
    end

end --function scene:hide( event )

-----------------------------------------------------------------------------------------

-- The function called when the scene is issued to be destroyed
function scene:destroy( event )

    -- Creating a group that associates objects with the scene
    local sceneGroup = self.view

end 

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

