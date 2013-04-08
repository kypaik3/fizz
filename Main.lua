
-- Use this function to perform your initial setup
function setup()
    print("This example tracks multiple touches and colors them based on their ID")
    -- keep track of our touches in this table
    touches = {}
    x = 1
    
end

function touched(touch)
    if touch.state == ENDED then
        touches[x] = nil
        x= x-1
    elseif touch.state == BEGAN then
        touches[x] = touch
        x=x +1
    end
   -- print(x)
  --  print(#touches)
end

-- This function gets called once every frame
function draw()
    background(255, 255, 255, 255)
    a = 0
    b=0
    c=0
    d=0
    for k,touch in pairs(touches) do
        -- Use the touch id as the random seed
        math.randomseed(touch.id)
        -- This ensures the same fill color is used for the same id
        fill(math.random(255),math.random(255),math.random(255))
        -- Draw ellipse at touch position
        ellipse(touch.x, touch.y, 100, 100)
       -- print(#touches)
        -- print(k)
        
            if k==1 then
               a = touch.x
               b = touch.y
             --  print("accessed k 1")
            end
            
            if k==2 then
               c = touch.x
               d = touch.y
            --     print("accessed k 2")
            end
            
        
       end 
       if x>=2 then
            stroke(0, 0, 0, 255)
            strokeWidth(50)
           line(a,b,c,d)
        end
            
    
end
