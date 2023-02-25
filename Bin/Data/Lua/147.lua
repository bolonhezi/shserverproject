-- //////////////////////////////////////////////////////////////////////
-- AI 147.Lua
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
            Mob:LuaSay('Engraçado ver vocês por aqui, não me lembro de ter pedido comida.', 50.0)
            bMobSay = bMobSay + 1
        end
    end
    if (dwHPPercent <= 60) then
        if (bMobSay == 1) then
            Mob:LuaSay('AHAHAHA, são tão fracos que me dá pena.', 50.0)
            bMobSay = bMobSay + 1
        end
    end
    if (dwHPPercent <= 30) then
        if (bMobSay == 2) then
            Mob:LuaSay('Mnos mandem esses mortais para as profundezas de Teos Epeiros.', 50.0)
            Mob:LuaCreateMob(3039, 10, 0.0, 0.0)
            bMobSay = bMobSay + 1
        end
    end
    if (dwHPPercent <= 5) then
        if (bMobSay == 3) then
            Mob:LuaSay('Críptico, o Imortal vem aí, e ele irá acabar com vocês.', 50.0)
            bMobSay = bMobSay + 1
        end
    end
end
