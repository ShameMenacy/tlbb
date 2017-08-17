
--�ű���
x895087_g_ScriptId	= 895087

--�����߼��ű���....
x895087_g_FuBenScriptId = 890063

--����Buff....
x895087_Buff_MianYi1	= 10472	--����һЩ����Ч��....
x895087_Buff_MianYi2	= 10471	--������ͨ����....

--����....
x895087_SkillID_F		= 1826

x895087_SkillID_G		= 903
x895087_SkillID_G_SpecObj		= 1022

x895087_SkillID_H		= 905
x895087_SkillID_J		= 909
x895087_BuffID_H		= 19629

x895087_SkillID_I		= 1036
x895087_BuffID_I1		= 10253
x895087_BuffID_I2		= 10254

x895087_SkillCD_FH	=	5000
x895087_SkillCD_G		=	6000
x895087_SkillCD_H	=	12000


x895087_MyName			= "Ti�u Nh� Qu�n"	--�Լ�������....
x895087_BrotherName			= "аng T�m Tr�c - T�"	--�Լ�������....

--AI Index....
x895087_IDX_KuangBaoMode	= 1	--��ģʽ....0δ�� 1��Ҫ����� 2�Ѿ������
x895087_IDX_CD_SkillFH		= 2	--FH���ܵ�CD....
x895087_IDX_CD_SkillG			= 3	--G���ܵ�CD....
x895087_IDX_CD_Talk				= 4	--FH���ܺ�����CD....
x895087_IDX_CD_SkillH			= 5	--G���ܵ�CD....

x895087_IDX_CombatFlag 		= 1	--�Ƿ���ս��״̬�ı�־....


--**********************************
--��ʼ��....
--**********************************
function x895087_OnInit(sceneId, selfId)
	--����AI....
	x895087_ResetMyAI( sceneId, selfId )
end


--**********************************
--����....
--**********************************
function x895087_OnHeartBeat(sceneId, selfId, nTick)

	--����ǲ�������....
	if LuaFnIsCharacterLiving(sceneId, selfId) ~= 1 then
		return
	end

	--����Ƿ���ս��״̬....
	if 0 == MonsterAI_GetBoolParamByIndex( sceneId, selfId, x895087_IDX_CombatFlag ) then
		return
	end

	--FH��������....
	if 1 == x895087_TickSkillFH( sceneId, selfId, nTick ) then
		return
	end

end


--**********************************
--����ս��....
--**********************************
function x895087_OnEnterCombat(sceneId, selfId, enmeyId)

	--�ӳ�ʼbuff....
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x895087_Buff_MianYi1, 0 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x895087_Buff_MianYi2, 0 )

	--����AI....
	x895087_ResetMyAI( sceneId, selfId )

	--���ý���ս��״̬....
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x895087_IDX_CombatFlag, 1 )

end


--**********************************
--�뿪ս��....
--**********************************
function x895087_OnLeaveCombat(sceneId, selfId)

	--����AI....
	x895087_ResetMyAI( sceneId, selfId )

	--ɾ���Լ�....
	LuaFnDeleteMonster( sceneId, selfId )

end


--**********************************
--ɱ������....
--**********************************
function x895087_OnKillCharacter(sceneId, selfId, targetId)

end


--**********************************
--����....
--**********************************
function x895087_OnDie( sceneId, selfId, killerId )

	--�������������еĹ�....Ѱ���ֵ�....����������Ҫʹ�ÿ񱩼���....
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if x895087_BrotherName == GetName( sceneId, MonsterId ) and LuaFnIsCharacterLiving(sceneId, MonsterId) == 1 then
			LuaFnSendSpecificImpactToUnit( sceneId, MonsterId, MonsterId, MonsterId, 19411, 0 )
		end
	end

	CallScriptFunction( x894087_g_FuBenScriptId, "TipAllHuman", sceneId, "Tr�n D�ng ��o Nh�n: #c2ebeff"..GetName( sceneId, selfId ).." c�a Ti�u Nh� Qu�n �� b� ph� h�y!" )

end


--**********************************
--����AI....
--**********************************
function x895087_ResetMyAI( sceneId, selfId )

	--���ò���....
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x895087_IDX_KuangBaoMode, 0 )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x895087_IDX_CD_SkillFH, x895087_SkillCD_FH )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x895087_IDX_CD_SkillG, x895087_SkillCD_G )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x895087_IDX_CD_SkillH, x895087_SkillCD_H )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x895087_IDX_CD_Talk, 0 )
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x895087_IDX_CombatFlag, 0 )

	--������������FH��buff....
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0, nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		if LuaFnIsObjValid(sceneId, nHumanId) == 1 and LuaFnIsCanDoScriptLogic(sceneId, nHumanId) == 1 then
			LuaFnCancelSpecificImpact( sceneId, nHumanId, x895087_BuffID_F1 )
			LuaFnCancelSpecificImpact( sceneId, nHumanId, x895087_BuffID_H )
		end
	end

end


--**********************************
--FH��������....
--**********************************
function x895087_TickSkillFH( sceneId, selfId, nTick )

	--���¼���CD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x895087_IDX_CD_SkillFH )
	if cd > nTick then

		MonsterAI_SetIntParamByIndex( sceneId, selfId, x895087_IDX_CD_SkillFH, cd-nTick )
		return 0

	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x895087_IDX_CD_SkillFH, x895087_SkillCD_FH-(nTick-cd) )
		return x895087_UseSkillF( sceneId, selfId )
	end

end


--**********************************
--G��������....
--**********************************
function x895087_TickSkillG( sceneId, selfId, nTick )

	local CurPercent = GetHp( sceneId, selfId ) / GetMaxHp( sceneId, selfId )
	if CurPercent <= 0.6666 then
		return 0
	end

	--���¼���CD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x895087_IDX_CD_SkillG )
	if cd > nTick then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x895087_IDX_CD_SkillG, cd-nTick )
		return 0
	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x895087_IDX_CD_SkillG, x895087_SkillCD_G-(nTick-cd) )
		return x895087_UseSkillG( sceneId, selfId )
	end

end

--**********************************
--H��������....
--**********************************
function x895087_TickSkillH( sceneId, selfId, nTick )

	local CurPercent = GetHp( sceneId, selfId ) / GetMaxHp( sceneId, selfId )
	if CurPercent > 0.3333 then
		return 0
	end

	--���¼���CD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x895087_IDX_CD_SkillH )
	if cd > nTick then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x895087_IDX_CD_SkillH, cd-nTick )
		return 0
	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x895087_IDX_CD_SkillH, x895087_SkillCD_H-(nTick-cd) )
		return x895087_UseSkillH( sceneId, selfId )
	end

end

--**********************************
--I��������....
--**********************************
function x895087_TickSkillI( sceneId, selfId, nTick )

	--��õ�ǰ��mode....
	local CurMode = MonsterAI_GetIntParamByIndex( sceneId, selfId, x895087_IDX_KuangBaoMode )

	if CurMode == 0 or CurMode == 2 then

		--�������Ҫ�񱩻����Ѿ������򷵻�....
		return 0

	elseif CurMode == 1 then

		--�����Ҫ����ʹ�ÿ񱩼���....
		local ret =  x895087_UseSkillI( sceneId, selfId )
		if ret == 1 then
			MonsterAI_SetIntParamByIndex( sceneId, selfId, x895087_IDX_KuangBaoMode, 2 )
			return 1
		else
			return 0
		end

	end

end


--**********************************
--ʹ��F����....
--**********************************
function x895087_UseSkillF( sceneId, selfId )

	--�������������еĹ�....Ѱ���ֵ�....����������Ҫʹ�ÿ񱩼���....
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if GetName( sceneId, MonsterId ) == "����ε" and LuaFnIsCharacterLiving(sceneId, MonsterId) == 1 then
			local x,z = GetWorldPos( sceneId, PlayerId )
			LuaFnUnitUseSkill( sceneId, selfId, x895087_SkillID_F, MonsterId, x, z, 0, 1 )
		end
	end

	return 1

end


--**********************************
--ʹ��G����....
--**********************************
function x895087_UseSkillG( sceneId, selfId )


	return 1

end


--**********************************
--ʹ��H����....
--**********************************
function x895087_UseSkillH( sceneId, selfId )


	return 1

end


--**********************************
--ʹ��I����....
--**********************************
function x895087_UseSkillI( sceneId, selfId )


	return 1

end


--**********************************
--���׺��̻���buff������ʱ��ص����ӿ�....
--**********************************
function x895087_OnImpactFadeOut( sceneId, selfId, impactId )

end

