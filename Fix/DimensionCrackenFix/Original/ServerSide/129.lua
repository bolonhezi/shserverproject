-- //////////////////////////////////////////////////////////////////////
-- AI 129.Lua
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
            Mob:LuaSay('HAHAHAHA, vocês não podem vencer os imortais.', 50.0)
            bMobSay = bMobSay + 1
        end
    end
    if (dwHPPercent <= 60) then
        if (bMobSay == 1) then
            Mob:LuaSay('Vocês irão pagar pelo desperdício do meu tempo, vermes.', 50.0)
            bMobSay = bMobSay + 1
        end
    end
    if (dwHPPercent <= 30) then
        if (bMobSay == 2) then
            Mob:LuaSay('Guardas Sanguinários, matem todos!', 50.0)
            Mob:LuaCreateMob(3004, 10, 0.0, 0.0)
            bMobSay = bMobSay + 1
        end
    end
end
