-- //////////////////////////////////////////////////////////////////////
-- 카일룸 사크라 1층 D보스_휘스타톤 AI 114.Lua  ver.090121
-- //////////////////////////////////////////////////////////////////////



-- //////////////////////////////////////////////////////////////////////

Mob = LuaMob(CMob)

-- //////////////////////////////////////////////////////////////////
-- 사용자 변수는 여기에 선언합니다.
b = 0


-- //////////////////////////////////////////////////////////////////
-- 사용자 함수는 여기에 선언합니다.



-- //////////////////////////////////////////////////////////////////
function Init()

end

-- //////////////////////////////////////////////////////////////////
function OnAttacked( dwTime, dwCharID )

end

-- //////////////////////////////////////////////////////////////////
function OnAttackable( dwTime, dwCharID )

end

-- //////////////////////////////////////////////////////////////////
function OnNormalReset( dwTime )
	b = 0
end

-- //////////////////////////////////////////////////////////////////
function OnDeath( dwTime, dwAttackedCount )
	Mob:LuaUpdateInsZonePortal ( 1001, 0 )
end


-- //////////////////////////////////////////////////////////////////
function OnReturnHome( dwTime, dwAttackedCount )

end

-- //////////////////////////////////////////////////////////////////
function OnMoveEnd( dwTime )

end

-- //////////////////////////////////////////////////////////////////
function WhileCombat( dwTime, dwHPPercent, dwAttackedCount )

	-- 체력이 80%보다 작거나 같고 60%보다 클때
	if ( dwHPPercent <= 80 ) and ( dwHPPercent > 60 ) then
		if ( b >= 1 ) then
		return
		end
		Mob:LuaAttackAI ( 334 )
		b = b + 1
	elseif ( dwHPPercent <= 60 ) and ( dwHPPercent > 40 ) then
		if ( b >= 2 ) then
		return
		end
		Mob:LuaAttackAI ( 335 )
		b = b + 1
	elseif ( dwHPPercent <= 40 ) and ( dwHPPercent > 20 ) then
		if ( b >= 3 ) then
		return
		end
		Mob:LuaAttackAI ( 334 )
		b = b + 1
	elseif ( dwHPPercent <= 20 ) and ( dwHPPercent >= 0 ) then
		if ( b >= 4 ) then
		return
		end
		Mob:LuaAttackAI ( 335 )
		b = b + 1
	end
end

