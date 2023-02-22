-- //////////////////////////////////////////////////////////////////////
-- AI 141.Lua
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
            Mob:LuaSay('Como ousam entrar nos domínios de Dlizabeth Eathory!', 50.0)
            bMobSay = bMobSay + 1
        end
    end
    if (dwHPPercent <= 60) then
        if (bMobSay == 1) then
            Mob:LuaSay('Sua magia é fraca.', 50.0)
            bMobSay = bMobSay + 1
        end
    end
    if (dwHPPercent <= 30) then
        if (bMobSay == 2) then
            Mob:LuaSay('Magia conjurada, Espíritos Infernais, matem-nos.', 50.0)
            Mob:LuaCreateMob(3022, 10, 0.0, 0.0)
            bMobSay = bMobSay + 1
        end
    end
end
