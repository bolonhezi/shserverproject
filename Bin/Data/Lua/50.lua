-- //////////////////////////////////////////////////////////////////////
-- AI 50.Lua
-- //////////////////////////////////////////////////////////////////////
Mob = LuaMob(CMob)

function Init()

end

function OnAttacked(dwTime, dwCharID)

end

function OnAttackable(dwTime, dwCharID)

end

function OnReturnHome(dwTime, dwAttackedCount)

end

function OnNormalReset(dwTime)
end

function OnDeath(dwTime, dwAttackedCount)
    Mob:LuaCreateMob(1716, 1, 0.0, 0.0)
end

function OnMoveEnd(dwTime)

end

function WhileCombat(dwTime, dwHPPercent, dwAttackedCount)

end
