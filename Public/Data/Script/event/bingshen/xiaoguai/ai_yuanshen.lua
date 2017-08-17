--�ű���
x894093_g_ScriptId	= 894093

--�����߼��ű���....
x894093_g_FuBenScriptId = 894063

x894093_MyName			= "Gia Lu�t Li�n Th�nh - Nguy�n Th�n"	--�Լ�������....
x894093_BrotherName			= "Gia Lu�t Li�n Th�nh"	--�Լ�������....

--����Buff....
x894093_Buff_MianYi1	= 10472	--����һЩ����Ч��....
x894093_Buff_MianYi2	= 10471	--������ͨ����....

--D����....
x894093_BuffD				= 19801	--�򵥰���翷�ʹ���˺������˵İ汾....
x894093_SkillD_CD		= 5000

--AI Index....
x894093_IDX_CD_SkillD			= 1	--D���ܵ�CD....

x894093_IDX_CombatFlag 		= 1	--�Ƿ���ս��״̬�ı�־....


--**********************************
--��ʼ��....
--**********************************
function x894093_OnInit(sceneId, selfId)
	--����AI....
	x894093_ResetMyAI( sceneId, selfId )

end


--**********************************
--����....
--**********************************
function x894093_OnHeartBeat(sceneId, selfId, nTick)

	--����ǲ�������....
	if LuaFnIsCharacterLiving(sceneId, selfId) ~= 1 then
		return
	end

	--����Ƿ���ս��״̬....
	if 0 == MonsterAI_GetBoolParamByIndex( sceneId, selfId, x894093_IDX_CombatFlag ) then
		return
	end

	--D��������....
	if 1 == x894093_TickSkillD( sceneId, selfId, nTick ) then
		return
	end

end


--**********************************
--����ս��....
--**********************************
function x894093_OnEnterCombat(sceneId, selfId, enmeyId)

	--�ӳ�ʼbuff....
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x894093_Buff_MianYi1, 0 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x894093_Buff_MianYi2, 0 )

	--����AI....
	x894093_ResetMyAI( sceneId, selfId )

	--���ý���ս��״̬....
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x894093_IDX_CombatFlag, 1 )

end


--**********************************
--�뿪ս��....
--**********************************
function x894093_OnLeaveCombat(sceneId, selfId)

	--����AI....
	x894093_ResetMyAI( sceneId, selfId )

	--ɾ���Լ�....
	LuaFnDeleteMonster( sceneId, selfId )

end


--**********************************
--ɱ������....
--**********************************
function x894093_OnKillCharacter(sceneId, selfId, targetId)

end


--**********************************
--����....
--**********************************
function x894093_OnDie( sceneId, selfId, killerId )

	--����AI....
	x894093_ResetMyAI( sceneId, selfId )

	--ɾ���Լ�....
	SetCharacterDieTime( sceneId, selfId, 3000 )

	--�������������еĹ�....Ѱ���ֵ�....����������Ҫʹ�ÿ񱩼���....
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if x894093_BrotherName == GetName( sceneId, MonsterId ) and LuaFnIsCharacterLiving(sceneId, MonsterId) == 1 then
			LuaFnSendSpecificImpactToUnit( sceneId, MonsterId, MonsterId, MonsterId, 19454, 0 )
		end
	end

	CallScriptFunction((200060), "Paopao",sceneId, "Gia Lu�t Li�n Th�nh", "Binh Th�nh K� Tr�n", "Nguy�n th�n thi�t c�t nh� th� n�o m� l�i b� ph� h�y? Ch� nh� l� � tr�i?" )
	CallScriptFunction( x894093_g_FuBenScriptId, "TipAllHuman", sceneId, "Tr�n D�ng ��o Nh�n: Do ta t�p k�ch ban ��m b�t ng�, Da Lu�t Li�n Th�nh kh�ng k�p ph�ng b�, �� b� th� th߽ng n�ng, c�n ch� g� m� kh�ng nh�n c� h�i gia tay ti�u di�t h�n?" )

end


--**********************************
--����AI....
--**********************************
function x894093_ResetMyAI( sceneId, selfId )

	--���ò���....
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x894093_IDX_CD_SkillD, x894093_SkillD_CD )

end


--**********************************
--ABC��������....
--**********************************
function x894093_TickSkillABC( sceneId, selfId, nTick )

end


--**********************************
--D��������....
--**********************************
function x894093_TickSkillD( sceneId, selfId, nTick )

	--���¼���CD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x894093_IDX_CD_SkillD )
	if cd > nTick then

		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894093_IDX_CD_SkillD, cd-nTick )
		return 0

	else

		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894093_IDX_CD_SkillD, x894093_SkillD_CD-(nTick-cd) )
		return x894093_UseSkillD( sceneId, selfId )

	end

end


--**********************************
--ʹ��D����....
--**********************************
function x894093_UseSkillD( sceneId, selfId )

	--�������������еĹ�....Ѱ���ֵ�....����������Ҫʹ�ÿ񱩼���....
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if x894093_BrotherName == GetName( sceneId, MonsterId ) and LuaFnIsCharacterLiving(sceneId, MonsterId) == 1 then
			LuaFnSendSpecificImpactToUnit( sceneId, MonsterId, MonsterId, MonsterId, 19453, 0 )
		end
	end

end
