local botplayText = "Botplay is Enabled"

function onCreate()
    makeLuaText('healthText', 'Health: '..math.floor(getProperty('health' * 50)), 300, screenWidth / 2 - 300 / 2, screenHeight / 2 - 300 / 1.5)
    setTextSize('healthText', 30)
    addLuaText('healthText')
end

function onUpdate(elapsed)
    setTextString('botplayTxt', botplayText)
end