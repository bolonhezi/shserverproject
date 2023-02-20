-- //////////////////////////////////////////////////////////////////////
-- AI 144.Lua
-- //////////////////////////////////////////////////////////////////////
Mob = LuaMob(CMob)

bMobSay = 0
bMobMove = 0
iclass = 0
iclass2 = 0

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
    bMobMove = 0
    iclass = 0
    iclass2 = 0
end

function OnDeath(dwTime, dwAttackedCount)
    while (iclass2 <= 5) do
        Mob:LuaRecallUser(iclass2, 50, 74, 380.78, 159.469, 510.01)
        iclass2 = iclass2 + 1
    end
end

function OnMoveEnd(dwTime)

end

function WhileCombat(dwTime, dwHPPercent, dwAttackedCount)
    if (dwHPPercent <= 95) then
        if (bMobSay == 0) then
            Mob:LuaSay('Eu instiguei medo nos corações de seus acestrais.', 50.0)
            bMobSay = bMobSay + 1
        end
    end
	if (dwHPPercent <= 60) then
        if (bMobSay == 1) then
            Mob:LuaSay('Vocês vão queimar.', 50.0)
            bMobSay = bMobSay + 1
        end
    end
	if (dwHPPercent <= 30) then
        if (bMobSay == 2) then
            Mob:LuaSay('Guardiões da Chama, aniquilem todos sem piedade.', 50.0)
			Mob:LuaCreateMob ( 3009, 15, 0.0, 0.0 )
            bMobSay = bMobSay + 1
        end
    end
    if (dwHPPercent <= 50) then
        if (bMobMove < 1) then
            while (iclass <= 5) do
                Mob:LuaRecallUser(iclass, 20, 74, 152.78, 146.469, 500.01)
                iclass = iclass + 1
            end
            bMobMove = bMobMove + 1
        end
    end
end
