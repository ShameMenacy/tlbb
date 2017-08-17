--�ű���
x895095_g_ScriptId	= 895095

--�����߼��ű���....
x895095_g_FuBenScriptId = 895063

x895095_MyName			= "Nguy�n Th�n Ph� Tr�n"	--�Լ�������....
x895095_BrotherName			= "Gia Lu�t Li�n Th�nh - Nguy�n Th�n"	--�Լ�������....


--**********************************
--��ʼ��....
--**********************************
function x895095_OnInit(sceneId, selfId)


end


--**********************************
--����....
--**********************************
function x895095_OnHeartBeat(sceneId, selfId, nTick)

	--����ǲ�������....
	if LuaFnIsCharacterLiving(sceneId, selfId) ~= 1 then
		return
	end

	--����Ƿ���ս��״̬....
	if 0 == MonsterAI_GetBoolParamByIndex( sceneId, selfId, x895095_IDX_CombatFlag ) then
		return
	end

	--������BUFF....
	local x,z = GetWorldPos(sceneId,selfId)
	local MonsterId, DogX, DogZ
	local nMonsterNum = GetMonsterCount( sceneId )
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId, i)
		if GetName(sceneId, MonsterId) == x895095_BrotherName then
			DogX, DogZ = GetWorldPos( sceneId, MonsterId )
		end
	end
	if (x - DogX) * (x - DogX) + (z - DogZ) * (z - DogZ) < 10*10 then
		LuaFnSendSpecificImpactToUnit( sceneId, MonsterId, MonsterId, MonsterId, 19464, 0 )
	end

end


--**********************************
--����ս��....
--**********************************
function x895095_OnEnterCombat(sceneId, selfId, enmeyId)

end


--**********************************
--�뿪ս��....
--**********************************
function x895095_OnLeaveCombat(sceneId, selfId)

end


--**********************************
--ɱ������....
--**********************************
function x895095_OnKillCharacter(sceneId, selfId, targetId)

end


--**********************************
--����....
--**********************************
function x895095_OnDie( sceneId, selfId, killerId )

	--����AI....
	x895095_ResetMyAI( sceneId, selfId )

end


--**********************************
--����AI....
--**********************************
function x895095_ResetMyAI( sceneId, selfId )

end


