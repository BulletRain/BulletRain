game = {}
GS = require "lib.hump.gamestate"
global = {}
global.g = 2
require 'core.main'
core.states = require 'states.main'

models = {}
require"lib.Tserial"




function love.load()
love.graphics.setDefaultFilter("nearest", "nearest", 1)

    GS.registerEvents()

    
    GS.switch(core.states.menu)
end

-- This one will only be used for debugging purposes, love.keyDown is used in most other cases
function love.keypressed(key)
    core.gamepad = nil
    if GS.current() ~= core.states.menu  and key == CONTROLS.PAUSE then
    	if  GS.current() ~= core.states.pause then
        	GS.push(core.states.pause)
        else
        	GS.pop()
        end

    end


end

function love.threaderror(t, e)
    return error(e)
end