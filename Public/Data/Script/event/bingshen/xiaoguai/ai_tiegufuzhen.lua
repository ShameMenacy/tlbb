--�ű���
x894094_g_ScriptId	= 894094

--�����߼��ű���....
x894094_g_FuBenScriptId = 894063

x894094_MyName			= "Thi�t C�t Ph� Tr�n"	--�Լ�������....
x894094_BrotherName			= "Gia Lu�t Li�n Th�nh - Thi�t C�t"	--�Լ�������....


--**********************************
--��ʼ��....
--**********************************
function x894094_OnInit(sceneId, selfId)

end


--**********************************
--����....
--**********************************
function x894094_OnHeartBeat(sceneId, selfId, nTick)

	--����ǲ�������....
	if LuaFnIsCharacterLiving(sceneId, selfId) ~= 1 then
		return
	end

	--����Ƿ���ս��״̬....
	if 0 == MonsterAI_GetBoolParamByIndex( sceneId, selfId, x894094_IDX_CombatFlag ) then
		return
	end

	--������BUFF....
	local x,z = GetWorldPos(sceneId,selfId)
	local MonsterId, DogX, DogZ
	local nMonsterNum = GetMonsterCount( sceneId )
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId, i)
		if GetName(sceneId, MonsterId) == x894094_BrotherName then
			DogX, DogZ = GetWorldPos( sceneId, MonsterId )
		end
	end
	if (x - DogX) * (x - DogX) + (z - DogZ) * (z - DogZ) < 10*10 then
		LuaFnSendSpecificImpactToUnit( sceneId, MonsterId, MonsterId, MonsterId, 19462, 0 )
	end

end


--**********************************
--����ս��....
--**********************************
function x894094_OnEnterCombat(sceneId, selfId, enmeyId)


end


--**********************************
--�뿪ս��....
--**********************************
function x894094_OnLeaveCombat(sceneId, selfId)

	--ɾ���Լ�....
	LuaFnDeleteMonster( sceneId, selfId )

end


--**********************************
--ɱ������....
--**********************************
function x894094_OnKillCharacter(sceneId, selfId, targetId)

end


--**********************************
--����....
--**********************************
function x894094_OnDie( sceneId, selfId, killerId )


end


--**********************************
--����AI....
--**********************************
function x894094_ResetMyAI( sceneId, selfId )


end


