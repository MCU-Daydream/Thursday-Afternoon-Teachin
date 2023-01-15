local drainAmount = 0.03
local textSize = 30
local botplayText = "Imagine cheating, Could not be me."

function opponentNoteHit()
    health = getProperty('health')

    if getProperty('health') > 0.1 then
        setProperty('health', health - drainAmount);
    end
end

function onCreate()
    makeLuaText('healthText', 'Health: '..math.floor(getProperty('health' * 50)), 300, screenWidth / 2 - 300 / 2, screenHeight / 2 - 300 / 1.5)
    addLuaText('healthText')
    setTextSize('healthText', textSize)
end

function onUpdate(elapsed)
    setTextString('healthText', 'Health'..math.floor(getProperty('health') * 50))
    setTextString('botplayTxt', botplayText)
end