-- //////////////////////////////////////////////////////////////////////
-- AI 117.Lua
-- //////////////////////////////////////////////////////////////////////
Mob = LuaMob(CMob)

dwNextAttackTime = 0
bMobSay = 0

function Init()

end

function OnAttacked(dwTime, dwCharID)

end

function OnAttackable(dwTime, dwCharID)

end

function OnNormalReset(dwTime)
    dwNextAttackTime = 0
    bMobSay = 0

end

function OnDeath(dwTime, dwAttackedCount)
    Mob:LuaDeleteMob(2473, 2, 0.0, 0.0)
end

function OnReturnHome(dwTime, dwAttackedCount)

end

function OnMoveEnd(dwTime)

end

function WhileCombat(dwTime, dwHPPercent, dwAttackedCount)
    if (dwHPPercent <= 30) then
        if (bMobSay == 0) then
            Mob:LuaSayByIndex(6404, 200.0)
            bMobSay = bMobSay + 1
            dwNextAttackTime = dwTime + 3000
        end
        if (dwNextAttackTime <= dwTime) then
            Mob:LuaAttackAI(337)
            dwNextAttackTime = dwTime + 3000
        end
    end
end
