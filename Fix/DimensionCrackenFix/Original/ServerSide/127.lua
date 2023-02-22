-- //////////////////////////////////////////////////////////////////////
-- AI 127.Lua
-- //////////////////////////////////////////////////////////////////////
Mob = LuaMob(CMob)

bMobSay = 0

function Init()

end

function OnAttacked(dwTime, dwCharID)

end

function OnAttackable(dwTime, dwCharID)

end

function OnReturnHome(dwTime, dwAttackedCount)

end

function OnNormalReset(dwTime)
    bMobSay = 0
end

function OnDeath(dwTime, dwAttackedCount)

end

function OnMoveEnd(dwTime)

end

function WhileCombat(dwTime, dwHPPercent, dwAttackedCount)
    if (dwHPPercent <= 95) then
        if (bMobSay == 0) then
            Mob:LuaSay('Ainda bem que vocês chegaram, eu já estava com fome de carne.', 50.0)
            bMobSay = bMobSay + 1
        end
    end
    if (dwHPPercent <= 60) then
        if (bMobSay == 1) then
            Mob:LuaSay('A chama irá queimar vocês até que implorem por sua morte.', 50.0)
            bMobSay = bMobSay + 1
        end
    end
    if (dwHPPercent <= 30) then
        if (bMobSay == 2) then
            Mob:LuaSay('Hora de vocês irem para o inferno, Sentinelas Devilkins, matem todos.', 50.0)
            Mob:LuaCreateMob(3018, 10, 0.0, 0.0)
            bMobSay = bMobSay + 1
        end
    end
end
