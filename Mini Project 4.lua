
--# Main
--Simple Button - Controlled Fan (Simulated)

function setup()
    fanOn = false
    
    w = 100
    h = 50
    
    onButton = {x = (WIDTH - w) / 2, 
        y = (HEIGHT - h) / 2 + 75, 
        w = w, 
    h = h}
    
    offButton = {x = (WIDTH - w) / 2, 
        y = (HEIGHT - h) / 2 - 75, 
        w = w, 
    h = h}
    
end

function draw()
    background(0)
    
    --onButton
    fill(21, 181, 22)
    rect(onButton.x, onButton.y, onButton.w, onButton.h)
    fill(255)
    font("AmericanTypewriter-Semibold")
    fontSize(40)
    text("ON", onButton.x + onButton.w / 2, onButton.y + onButton.h / 2)
    
    --offButton
    fill(202, 16, 28)
    rect(offButton.x, offButton.y, offButton.w, offButton.h)
    fill(255)
    font("AmericanTypewriter-Semibold")
    fontSize(40)
    text("OFF", offButton.x + offButton.w / 2, offButton.y + offButton.h / 2)
    
    --fanFont
    fill(21, 181, 22)
    font("AmericanTypewriter-Semibold")
    fontSize(40)
    
    if fanOn then
        text("FAN: ON", WIDTH / 2, HEIGHT / 2)
    else
        fill(202, 16, 28)
        text("FAN: OFF", WIDTH / 2, HEIGHT / 2)
    end
end

function touched(t)
    if t.state == BEGAN then
        if t.x > onButton.x and t.x < onButton.x + onButton.w 
        and t.y > onButton.y and t.y < onButton.y + onButton.h then
            fanOn = true
        end
        if t.x > offButton.x and t.x < offButton.x + offButton.w 
        and t.y > offButton.y and t.y < offButton.y + offButton.h then
            fanOn = false
        end
    end
end