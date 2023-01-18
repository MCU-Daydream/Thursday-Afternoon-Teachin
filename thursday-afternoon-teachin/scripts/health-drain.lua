local drainAmount = 0.03
local endpoint = 0.1

function opponentNoteHit()
    health = getProperty('health')

    if getProperty('health') > endpoint then
        setProperty('health', health - drainAmount)
    end
end