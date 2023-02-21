-- //////////////////////////////////////////////////////////////////////
-- AI 126.Lua
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
    Mob:LuaCreateMob(3041, 1, 299.78 ,300.01)
end

function OnMoveEnd(dwTime)

end

function WhileCombat(dwTime, dwHPPercent, dwAttackedCount)
    if (dwHPPercent <= 95) then
        if (bMobSay == 0) then
            Mob:LuaSay('Vou rasgar sua barriga e me alimentar de suas tripas.', 50.0)
            bMobSay = bMobSay + 1
        end
    end
    if (dwHPPercent <= 60) then
        if (bMobSay == 1) then
            Mob:LuaSay('Vermes! Beberei o sangue de vocês sem piedade.', 50.0)
            bMobSay = bMobSay + 1
        end
    end
    if (dwHPPercent <= 30) then
        if (bMobSay == 2) then
            Mob:LuaSay('Hora de parar com a brincadeira, Comandantes Canibais, matem todos!', 50.0)
            Mob:LuaCreateMob(3027, 10, 0.0, 0.0)
            bMobSay = bMobSay + 1
        end
    end
end
