-- //////////////////////////////////////////////////////////////////////
-- AI 145.Lua
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
            Mob:LuaSay('Vamos testar a força de vocês mortais.', 50.0)
            Mob:LuaCreateMob(3039, 3, 0.0, 0.0)
            bMobSay = bMobSay + 1
        end
    end
	if (dwHPPercent <= 60) then
        if (bMobSay == 1) then
            Mob:LuaSay('Humm, me parece que posso mandar mais.', 50.0)
            Mob:LuaCreateMob(3039, 6, 0.0, 0.0)
            bMobSay = bMobSay + 1
        end
    end
	if (dwHPPercent <= 30) then
        if (bMobSay == 2) then
            Mob:LuaSay('Vocês até que são bons, mas vão morrer agora.', 50.0)
			Mob:LuaCreateMob(3039, 9, 0.0, 0.0)
            bMobSay = bMobSay + 1
        end
    end
    if (dwHPPercent <= 5) then
        if (bMobSay == 3) then
            Mob:LuaSay('Esquadrão Mnos, formação de ataque ponta de lança.', 50.0)
            Mob:LuaCreateMob(3039, 15, 0.0, 0.0)
            bMobSay = bMobSay + 1
        end
    end
end