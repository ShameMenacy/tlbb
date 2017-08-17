
--�ű���
x894086_g_ScriptId	= 894086

--�����߼��ű���....
x894086_g_FuBenScriptId = 890063

--����Buff....
x894086_Buff_MianYi1	= 10472	--����һЩ����Ч��....
x894086_Buff_MianYi2	= 10471	--������ͨ����....

--����....
x894086_SkillID_F		= 1825

x894086_SkillID_G		= 903
x894086_SkillID_G_SpecObj		= 1022

x894086_SkillID_H		= 905
x894086_SkillID_J		= 909
x894086_BuffID_H		= 19629

x894086_SkillID_I		= 1036
x894086_BuffID_I1		= 10253
x894086_BuffID_I2		= 10254

x894086_SkillCD_FH	=	5000
x894086_SkillCD_G		=	6000
x894086_SkillCD_H	=	12000


x894086_MyName			= "Ľ�ݸ�"	--�Լ�������....
x894086_BrotherName			= "ͬ���񡤰�"	--�Լ�������....

--AI Index....
x894086_IDX_KuangBaoMode	= 1	--��ģʽ....0δ�� 1��Ҫ����� 2�Ѿ������
x894086_IDX_CD_SkillFH		= 2	--FH���ܵ�CD....
x894086_IDX_CD_SkillG			= 3	--G���ܵ�CD....
x894086_IDX_CD_Talk				= 4	--FH���ܺ�����CD....
x894086_IDX_CD_SkillH			= 5	--G���ܵ�CD....

x894086_IDX_CombatFlag 		= 1	--�Ƿ���ս��״̬�ı�־....


--**********************************
--��ʼ��....
--**********************************
function x894086_OnInit(sceneId, selfId)
	--����AI....
	x894086_ResetMyAI( sceneId, selfId )
end


--**********************************
--����....
--**********************************
function x894086_OnHeartBeat(sceneId, selfId, nTick)

	--����ǲ�������....
	if LuaFnIsCharacterLiving(sceneId, selfId) ~= 1 then
		return
	end

	--����Ƿ���ս��״̬....
	if 0 == MonsterAI_GetBoolParamByIndex( sceneId, selfId, x894086_IDX_CombatFlag ) then
		return
	end

	--FH��������....
	if 1 == x894086_TickSkillFH( sceneId, selfId, nTick ) then
		return
	end

end


--**********************************
--����ս��....
--**********************************
function x894086_OnEnterCombat(sceneId, selfId, enmeyId)

	--�ӳ�ʼbuff....
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x894086_Buff_MianYi1, 0 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x894086_Buff_MianYi2, 0 )

	--����AI....
	x894086_ResetMyAI( sceneId, selfId )

	--���ý���ս��״̬....
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x894086_IDX_CombatFlag, 1 )

end


--**********************************
--�뿪ս��....
--**********************************
function x894086_OnLeaveCombat(sceneId, selfId)

	--����AI....
	x894086_ResetMyAI( sceneId, selfId )

	--ɾ���Լ�....
	LuaFnDeleteMonster( sceneId, selfId )

end


--**********************************
--ɱ������....
--**********************************
function x894086_OnKillCharacter(sceneId, selfId, targetId)

end


--**********************************
--����....
--**********************************
function x894086_OnDie( sceneId, selfId, killerId )

	--�������������еĹ�....Ѱ���ֵ�....����������Ҫʹ�ÿ񱩼���....
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if x894086_BrotherName == GetName( sceneId, MonsterId ) and LuaFnIsCharacterLiving(sceneId, MonsterId) == 1 then
			LuaFnSendSpecificImpactToUnit( sceneId, MonsterId, MonsterId, MonsterId, 19411, 0 )
		end
	end

	CallScriptFunction( x894086_g_FuBenScriptId, "TipAllHuman", sceneId, "�����ʵ��� ������ ���� #c2ebeff"..GetName( sceneId, selfId ).." �ѱ����ƣ�����ͬɫ֮�����޷��ݻ١�" )

end


--**********************************
--����AI....
--**********************************
function x894086_ResetMyAI( sceneId, selfId )

	--���ò���....
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x894086_IDX_KuangBaoMode, 0 )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x894086_IDX_CD_SkillFH, x894086_SkillCD_FH )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x894086_IDX_CD_SkillG, x894086_SkillCD_G )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x894086_IDX_CD_SkillH, x894086_SkillCD_H )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x894086_IDX_CD_Talk, 0 )
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x894086_IDX_CombatFlag, 0 )

	--������������FH��buff....
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0, nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		if LuaFnIsObjValid(sceneId, nHumanId) == 1 and LuaFnIsCanDoScriptLogic(sceneId, nHumanId) == 1 then
			LuaFnCancelSpecificImpact( sceneId, nHumanId, x894086_BuffID_F1 )
			LuaFnCancelSpecificImpact( sceneId, nHumanId, x894086_BuffID_H )
		end
	end

end


--**********************************
--FH��������....
--**********************************
function x894086_TickSkillFH( sceneId, selfId, nTick )

	--���¼���CD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x894086_IDX_CD_SkillFH )
	if cd > nTick then

		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894086_IDX_CD_SkillFH, cd-nTick )
		return 0

	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894086_IDX_CD_SkillFH, x894086_SkillCD_FH-(nTick-cd) )
		return x894086_UseSkillF( sceneId, selfId )
	end

end


--**********************************
--G��������....
--**********************************
function x894086_TickSkillG( sceneId, selfId, nTick )

	local CurPercent = GetHp( sceneId, selfId ) / GetMaxHp( sceneId, selfId )
	if CurPercent <= 0.6666 then
		return 0
	end

	--���¼���CD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x894086_IDX_CD_SkillG )
	if cd > nTick then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894086_IDX_CD_SkillG, cd-nTick )
		return 0
	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894086_IDX_CD_SkillG, x894086_SkillCD_G-(nTick-cd) )
		return x894086_UseSkillG( sceneId, selfId )
	end

end

--**********************************
--H��������....
--**********************************
function x894086_TickSkillH( sceneId, selfId, nTick )

	local CurPercent = GetHp( sceneId, selfId ) / GetMaxHp( sceneId, selfId )
	if CurPercent > 0.3333 then
		return 0
	end

	--���¼���CD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x894086_IDX_CD_SkillH )
	if cd > nTick then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894086_IDX_CD_SkillH, cd-nTick )
		return 0
	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894086_IDX_CD_SkillH, x894086_SkillCD_H-(nTick-cd) )
		return x894086_UseSkillH( sceneId, selfId )
	end

end

--**********************************
--I��������....
--**********************************
function x894086_TickSkillI( sceneId, selfId, nTick )

	--��õ�ǰ��mode....
	local CurMode = MonsterAI_GetIntParamByIndex( sceneId, selfId, x894086_IDX_KuangBaoMode )

	if CurMode == 0 or CurMode == 2 then

		--�������Ҫ�񱩻����Ѿ������򷵻�....
		return 0

	elseif CurMode == 1 then

		--�����Ҫ����ʹ�ÿ񱩼���....
		local ret =  x894086_UseSkillI( sceneId, selfId )
		if ret == 1 then
			MonsterAI_SetIntParamByIndex( sceneId, selfId, x894086_IDX_KuangBaoMode, 2 )
			return 1
		else
			return 0
		end

	end

end


--**********************************
--ʹ��F����....
--**********************************
function x894086_UseSkillF( sceneId, selfId )

	--�������������еĹ�....Ѱ���ֵ�....����������Ҫʹ�ÿ񱩼���....
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if GetName( sceneId, MonsterId ) == "����ε" and LuaFnIsCharacterLiving(sceneId, MonsterId) == 1 then
			local x,z = GetWorldPos( sceneId, PlayerId )
			LuaFnUnitUseSkill( sceneId, selfId, x894086_SkillID_F, MonsterId, x, z, 0, 1 )
		end
	end

	return 1

end


--**********************************
--ʹ��G����....
--**********************************
function x894086_UseSkillG( sceneId, selfId )


	return 1

end


--**********************************
--ʹ��H����....
--**********************************
function x894086_UseSkillH( sceneId, selfId )


	return 1

end


--**********************************
--ʹ��I����....
--**********************************
function x894086_UseSkillI( sceneId, selfId )


	return 1

end


--**********************************
--���׺��̻���buff������ʱ��ص����ӿ�....
--**********************************
function x894086_OnImpactFadeOut( sceneId, selfId, impactId )

end

