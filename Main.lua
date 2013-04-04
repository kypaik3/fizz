
-- Use this function to perform your initial setup
function setup()
    print("This example tracks multiple touches and colors them based on their ID")
    -- keep track of our touches in this table
    touches = {}
    
end

function touched(touch)
    if touch.state == ENDED then
        touches[touch.id] = nil
    else
        touches[touch.id] = touch
    end
end

-- This function gets called once every frame
function draw()
    background(0, 0, 0, 255)
    
    for k,touch in pairs(touches) do
        -- Use the touch id as the random seed
        math.randomseed(touch.id)
        -- This ensures the same fill color is used for the same id
        fill(math.random(255),math.random(255),math.random(255))
        -- Draw ellipse at touch position
        ellipse(touch.x, touch.y, 100, 100)
    end
end
