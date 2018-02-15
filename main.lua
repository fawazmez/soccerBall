-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created by : Fawaz Mezher
-- Created on : Feb 2018
--
--how to add an event listener, so that when you touch an image you get feedback
-----------------------------------------------------------------------------------------

-- show the text fawaz mezher
 local myText = display.newText( "Fawaz Mezher", 768, 200, native.systemFont, 100 )
-- text color
myText:setFillColor( 1, 0, 1 )
-- makes background white
display.setDefault( "background", 36, 28, 1 )
-- displaying the image on the screen
local soccerBall = display.newImageRect( "./assets/sprites/ball.png", 500, 480 )
soccerBall.x = display.contentCenterX
soccerBall.y = display.contentCenterY
soccerBall.id = "ball object"
 
local function onObjectTouch( event )
    --the function for touching the ball
    print( "Touched ball ")

    return true
end
-- event listener for touching the ball
soccerBall:addEventListener( "touch", onObjectTouch )