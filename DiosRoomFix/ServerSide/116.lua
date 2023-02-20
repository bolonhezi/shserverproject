-- //////////////////////////////////////////////////////////////////////
-- AI 116.Lua
-- //////////////////////////////////////////////////////////////////////
Mob = LuaMob(CMob)

dwNextCreateTime = 0
bMobSay = 0
bMobCreate = 0

function Init()

end

function OnAttacked(dwTime, dwCharID)

end

function OnAttackable(dwTime, dwCharID)

end

function OnNormalReset(dwTime)

end

function OnDeath(dwTime, dwAttackedCount)

end

function OnReturnHome(dwTime, dwAttackedCount)

end

function OnMoveEnd(dwTime)

end

function WhileCombat(dwTime, dwHPPercent, dwAttackedCount)
    if (dwHPPercent <= 50) then
        if (bMobSay == 0) then
            dwNextCreateTime = dwTime + 1000
            Mob:LuaSayByIndex(6403, 200.0)
            bMobSay = bMobSay + 1
        end
        if (dwTime >= dwNextCreateTime) and (bMobCreate == 0) then
            Mob:LuaCreateMob(2472, 1, 0.0, 0.0)
            Mob:LuaCreateMob(2473, 2, 0.0, 0.0)
            bMobCreate = bMobCreate + 1
        end
        if (bMobCreate >= 1) then
            Mob:LuaDeleteMob(2470, 1, 0.0, 0.0)
        end
    end
end
