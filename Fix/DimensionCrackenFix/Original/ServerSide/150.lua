-- //////////////////////////////////////////////////////////////////////
-- AI 150.Lua
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
            Mob:LuaSay('Vocês aqui? Só pode ser uma piada de mal gosto.', 50.0)
            bMobSay = bMobSay + 1
        end
    end
	if (dwHPPercent <= 60) then
        if (bMobSay == 1) then
            Mob:LuaSay('Malditos insolentes, vocês irão cair, e junto com vocês toda a Teos Epeiros.', 50.0)
            bMobSay = bMobSay + 1
        end
    end
	if (dwHPPercent <= 30) then
        if (bMobSay == 2) then
            Mob:LuaSay('Víboras Sentinelas, matem todos!', 50.0)
			Mob:LuaCreateMob(3014, 15, 0.0, 0.0)
            bMobSay = bMobSay + 1
        end
    end
end