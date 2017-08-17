--�ű���
x895092_g_ScriptId	= 895092

--�����߼��ű���....
x895092_g_FuBenScriptId = 895063

x895092_MyName			= "Gia Lu�t Li�n Th�nh - Thi�t C�t"	--�Լ�������....
x895092_BrotherName			= "Gia Lu�t Li�n Th�nh"	--�Լ�������....

--����Buff....
x895092_Buff_MianYi1	= 10472	--����һЩ����Ч��....
x895092_Buff_MianYi2	= 10471	--������ͨ����....

--D����....
x895092_BuffD				= 19801	--�򵥰���翷�ʹ���˺������˵İ汾....
x895092_SkillD_CD		= 5000

--AI Index....
x895092_IDX_CD_SkillD			= 1	--D���ܵ�CD....

x895092_IDX_CombatFlag 		= 1	--�Ƿ���ս��״̬�ı�־....


--**********************************
--��ʼ��....
--**********************************
function x895092_OnInit(sceneId, selfId)
	--����AI....
	x895092_ResetMyAI( sceneId, selfId )

end


--**********************************
--����....
--**********************************
function x895092_OnHeartBeat(sceneId, selfId, nTick)

	--����ǲ�������....
	if LuaFnIsCharacterLiving(sceneId, selfId) ~= 1 then
		return
	end

	--����Ƿ���ս��״̬....
	if 0 == MonsterAI_GetBoolParamByIndex( sceneId, selfId, x895092_IDX_CombatFlag ) then
		return
	end

	--D��������....
	if 1 == x895092_TickSkillD( sceneId, selfId, nTick ) then
		return
	end

end


--**********************************
--����ս��....
--**********************************
function x895092_OnEnterCombat(sceneId, selfId, enmeyId)

	--�ӳ�ʼbuff....
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x895092_Buff_MianYi1, 0 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x895092_Buff_MianYi2, 0 )

	--����AI....
	x895092_ResetMyAI( sceneId, selfId )

	--���ý���ս��״̬....
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x895092_IDX_CombatFlag, 1 )

end


--**********************************
--�뿪ս��....
--**********************************
function x895092_OnLeaveCombat(sceneId, selfId)

	--����AI....
	x895092_ResetMyAI( sceneId, selfId )

	--ɾ���Լ�....
	LuaFnDeleteMonster( sceneId, selfId )

end


--**********************************
--ɱ������....
--**********************************
function x895092_OnKillCharacter(sceneId, selfId, targetId)

end


--**********************************
--����....
--**********************************
function x895092_OnDie( sceneId, selfId, killerId )

	--����AI....
	x895092_ResetMyAI( sceneId, selfId )

	--ɾ���Լ�....
	SetCharacterDieTime( sceneId, selfId, 3000 )

	--�������������еĹ�....Ѱ���ֵ�....����������Ҫʹ�ÿ񱩼���....
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if x895092_BrotherName == GetName( sceneId, MonsterId ) and LuaFnIsCharacterLiving(sceneId, MonsterId) == 1 then
			LuaFnSendSpecificImpactToUnit( sceneId, MonsterId, MonsterId, MonsterId, 19454, 0 )
		end
	end

	CallScriptFunction((200060), "Paopao",sceneId, "Gia Lu�t Li�n Th�nh", "Binh Th�nh K� Tr�n", "Nguy�n th�n thi�t c�t l� n�o l�i b� ph� h�y. Ph�i ch�ng l� � tr�i?" )
	CallScriptFunction( x894092_g_FuBenScriptId, "TipAllHuman", sceneId, "Tr�n D�ng ��o Nh�n: B�i ch�ng ta t�p k�ch ��m h�m, kh�ng k�p ph�ng b� n�n Gia Lu�t Li�n Th�nh l�c n�y �� ��i th� th߽ng. L�c n�y kh�ng ti�u di�t h�n th� c�n ch� l�c n�o n�a?" )

end


--**********************************
--����AI....
--**********************************
function x895092_ResetMyAI( sceneId, selfId )

	--���ò���....
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x895092_IDX_CD_SkillD, x895092_SkillD_CD )

end


--**********************************
--ABC��������....
--**********************************
function x895092_TickSkillABC( sceneId, selfId, nTick )

end


--**********************************
--D��������....
--**********************************
function x895092_TickSkillD( sceneId, selfId, nTick )

	--���¼���CD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x895092_IDX_CD_SkillD )
	if cd > nTick then

		MonsterAI_SetIntParamByIndex( sceneId, selfId, x895092_IDX_CD_SkillD, cd-nTick )
		return 0

	else

		MonsterAI_SetIntParamByIndex( sceneId, selfId, x895092_IDX_CD_SkillD, x895092_SkillD_CD-(nTick-cd) )
		return x895092_UseSkillD( sceneId, selfId )

	end

end


--**********************************
--ʹ��D����....
--**********************************
function x895092_UseSkillD( sceneId, selfId )

	--�������������еĹ�....Ѱ���ֵ�....����������Ҫʹ�ÿ񱩼���....
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if x895092_BrotherName == GetName( sceneId, MonsterId ) and LuaFnIsCharacterLiving(sceneId, MonsterId) == 1 then
			LuaFnSendSpecificImpactToUnit( sceneId, MonsterId, MonsterId, MonsterId, 19453, 0 )
		end
	end

end
