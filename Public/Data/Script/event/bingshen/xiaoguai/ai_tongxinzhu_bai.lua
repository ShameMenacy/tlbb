--Ʈ��� ��ƽ����AI

--F	�����ס����Լ���һ���ռ���....�ٸ���ҼӸ��������ص��ű���buff....�ص�ʱ��BOSS������Χ�˼��˺�buff������....
--G �����㡿���Լ���һ����buff�ļ���....
--H ���̻������Լ���һ���ռ���....�ٸ���ҼӸ��������ص��ű���buff....�ص�ʱ����....
--I	�����ѡ�׿������ʱ���Լ���һ����buff�ļ���....


--ȫ�̶����������ƶ����ܵ�buff....
--ÿ��30������������ʹ��FH....
--ÿ��45����Լ�ʹ��G....
--����������ս��ʱ������������FH��buff....
--����ʱѰ�Ҳ�ƽ����....��������Ҫʹ�ÿ񱩼���....
--����ʱ���ֲ�ƽ�����Ѿ�����....�򴴽���һ��BOSS....


--�ű���
x894080_g_ScriptId	= 894080

--�����߼��ű���....
x894080_g_FuBenScriptId = 894063

--����Buff....
x894080_Buff_MianYi1	= 10472	--����һЩ����Ч��....
x894080_Buff_MianYi2	= 10471	--������ͨ����....

--����....
x894080_SkillID_F		= 1825
x894080_BuffID_F1		= 19417

x894080_SkillID_G		= 1806
x894080_SkillID_G_SpecObj		= 188

x894080_SkillID_H		= 1807
x894080_BuffID_H		= 19629

x894080_SkillID_I		= 1804

x894080_SkillCD_FH	=	5000
x894080_SkillCD_G		=	12000
x894080_SkillCD_H	=	12000
x894080_SkillCD_I	=	5000

x894080_MyName			= "Ti�u Nh� Qu�n"	--�Լ�������....
x894080_BrotherName			= "аng T�m Tr�c - B�ch"	--�Լ�������....

--AI Index....
x894080_IDX_KuangBaoMode	= 1	--��ģʽ....0δ�� 1��Ҫ����� 2�Ѿ������
x894080_IDX_CD_SkillFH		= 2	--FH���ܵ�CD....
x894080_IDX_CD_SkillG			= 3	--G���ܵ�CD....
x894080_IDX_CD_Talk				= 4	--FH���ܺ�����CD....
x894080_IDX_CD_SkillI			= 5	--G���ܵ�CD....

x894080_IDX_CombatFlag 		= 1	--�Ƿ���ս��״̬�ı�־....


--**********************************
--��ʼ��....
--**********************************
function x894080_OnInit(sceneId, selfId)
	--����AI....
	x894080_ResetMyAI( sceneId, selfId )
end


--**********************************
--����....
--**********************************
function x894080_OnHeartBeat(sceneId, selfId, nTick)

	--����ǲ�������....
	if LuaFnIsCharacterLiving(sceneId, selfId) ~= 1 then
		return
	end

	--����Ƿ���ս��״̬....
	if 0 == MonsterAI_GetBoolParamByIndex( sceneId, selfId, x894080_IDX_CombatFlag ) then
		return
	end

	--FH��������....
	if 1 == x894080_TickSkillFH( sceneId, selfId, nTick ) then
		return
	end
	--�������������еĹ�....Ѱ���ֵ�....����������Ҫʹ�ÿ񱩼���....
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if x894080_MyName == GetName( sceneId, MonsterId ) and LuaFnIsCharacterLiving(sceneId, MonsterId) == 1 then
			LuaFnUnitUseSkill( sceneId, selfId, x894080_SkillID_F, MonsterId, x, z, 0, 1 )
		end
	end
end


--**********************************
--����ս��....
--**********************************
function x894080_OnEnterCombat(sceneId, selfId, enmeyId)

	--�ӳ�ʼbuff....
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x894080_Buff_MianYi1, 0 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x894080_Buff_MianYi2, 0 )

	--����AI....
	x894080_ResetMyAI( sceneId, selfId )

	--���ý���ս��״̬....
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x894080_IDX_CombatFlag, 1 )

end


--**********************************
--�뿪ս��....
--**********************************
function x894080_OnLeaveCombat(sceneId, selfId)

	--����AI....
	x894080_ResetMyAI( sceneId, selfId )

	--ɾ���Լ�....
	LuaFnDeleteMonster( sceneId, selfId )

end


--**********************************
--ɱ������....
--**********************************
function x894080_OnKillCharacter(sceneId, selfId, targetId)

end


--**********************************
--����....
--**********************************
function x894080_OnDie( sceneId, selfId, killerId )

	--�������������еĹ�....Ѱ���ֵ�....����������Ҫʹ�ÿ񱩼���....
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if x894080_BrotherName == GetName( sceneId, MonsterId ) and LuaFnIsCharacterLiving(sceneId, MonsterId) == 1 then
			LuaFnSendSpecificImpactToUnit( sceneId, MonsterId, MonsterId, MonsterId, 19411, 0 )
		end
	end

	CallScriptFunction( x894080_g_FuBenScriptId, "TipAllHuman", sceneId, "Tr�n D�ng ��o Nh�n: #c2ebeff"..GetName( sceneId, selfId ).." c�a Ti�u Nh� Qu�n �� b� ph� h�y." )


end


--**********************************
--����AI....
--**********************************
function x894080_ResetMyAI( sceneId, selfId )

	--���ò���....
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x894080_IDX_KuangBaoMode, 0 )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x894080_IDX_CD_SkillFH, x894080_SkillCD_FH )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x894080_IDX_CD_SkillG, x894080_SkillCD_G )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x894080_IDX_CD_SkillH, x894080_SkillCD_H )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x894080_IDX_CD_SkillI, x894080_SkillCD_I )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x894080_IDX_CD_Talk, 0 )
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x894080_IDX_CombatFlag, 0 )

	--������������FH��buff....
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0, nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		if LuaFnIsObjValid(sceneId, nHumanId) == 1 and LuaFnIsCanDoScriptLogic(sceneId, nHumanId) == 1 then
			LuaFnCancelSpecificImpact( sceneId, nHumanId, x894080_BuffID_F1 )
			LuaFnCancelSpecificImpact( sceneId, nHumanId, x894080_BuffID_H )
		end
	end

end


--**********************************
--FH��������....
--**********************************
function x894080_TickSkillFH( sceneId, selfId, nTick )

	--���¼���CD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x894080_IDX_CD_SkillFH )
	if cd > nTick then

		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894080_IDX_CD_SkillFH, cd-nTick )
		return 0

	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894080_IDX_CD_SkillFH, x894080_SkillCD_FH-(nTick-cd) )
		return x894080_UseSkillF( sceneId, selfId )
	end

end


--**********************************
--G��������....
--**********************************
function x894080_TickSkillG( sceneId, selfId, nTick )

	local CurPercent = GetHp( sceneId, selfId ) / GetMaxHp( sceneId, selfId )
	if CurPercent > 0.8333 then
		return 0
	end

	--���¼���CD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x894080_IDX_CD_SkillG )
	if cd > nTick then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894080_IDX_CD_SkillG, cd-nTick )
		return 0
	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894080_IDX_CD_SkillG, x894080_SkillCD_G-(nTick-cd) )
		return x894080_UseSkillG( sceneId, selfId )
	end

end

--**********************************
--H��������....
--**********************************
function x894080_TickSkillH( sceneId, selfId, nTick )

	local CurPercent = GetHp( sceneId, selfId ) / GetMaxHp( sceneId, selfId )
	if CurPercent > 0.3333 then
		return 0
	end

	--���¼���CD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x894080_IDX_CD_SkillH )
	if cd > nTick then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894080_IDX_CD_SkillH, cd-nTick )
		return 0
	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894080_IDX_CD_SkillH, x894080_SkillCD_H-(nTick-cd) )
		return x894080_UseSkillH( sceneId, selfId )
	end

end

--**********************************
--I��������....
--**********************************
function x894080_TickSkillI( sceneId, selfId, nTick )

	--���¼���CD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x894080_IDX_CD_SkillI )
	if cd > nTick then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894080_IDX_CD_SkillI, cd-nTick )
		return 0
	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894080_IDX_CD_SkillI, x894080_SkillCD_I-(nTick-cd) )
		return x894080_UseSkillI( sceneId, selfId )
	end

end


--**********************************
--ʹ��F����....
--**********************************
function x894080_UseSkillF( sceneId, selfId )

	--��������Ч����ҵ��б�....
	local PlayerList = {}

	--����Ч���˼����б�....
	local numPlayer = 0
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0, nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		if LuaFnIsObjValid(sceneId, nHumanId) == 1 and LuaFnIsCanDoScriptLogic(sceneId, nHumanId) == 1 and LuaFnIsCharacterLiving(sceneId, nHumanId) == 1 then
			PlayerList[numPlayer+1] = nHumanId
			numPlayer = numPlayer + 1
		end
	end

	--�����ѡһ�����....
	if numPlayer <= 0 then
		return 0
	end
	local PlayerId = PlayerList[ random(numPlayer) ]

	--����ʹ�ü���....
	local x,z = GetWorldPos( sceneId, PlayerId )
	LuaFnUnitUseSkill( sceneId, selfId, x894080_SkillID_F, PlayerId, x, z, 0, 1 )

	return 1

end


--**********************************
--ʹ��G����....
--**********************************
function x894080_UseSkillG( sceneId, selfId )


	--��������Ч����ҵ��б�....
	local PlayerList = {}

	--����Ч���˼����б�....
	local numPlayer = 0
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0, nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		if LuaFnIsObjValid(sceneId, nHumanId) == 1 and LuaFnIsCanDoScriptLogic(sceneId, nHumanId) == 1 and LuaFnIsCharacterLiving(sceneId, nHumanId) == 1 then
			PlayerList[numPlayer+1] = nHumanId
			numPlayer = numPlayer + 1
		end
	end

	--�����ѡһ�����....
	if numPlayer <= 0 then
		return 0
	end

	local PlayerIdA = PlayerList[ random(numPlayer) ]
	local PlayerIdB = PlayerList[ random(numPlayer) ]

	--ʹ�ÿռ���....
	local x,z = GetWorldPos( sceneId, selfId )
	LuaFnUnitUseSkill( sceneId, selfId, x894080_SkillID_G, selfId, x, z, 0, 1 )

	CallScriptFunction((200060), "Paopao",sceneId, "Ti�u Nh� Qu�n", "Binh Th�nh K� Tr�n", "N�i r�ng s�ng n߾c, phong c�nh h�u t�nh... #c2ebeff"..GetName( sceneId, PlayerIdA )..", "..GetName( sceneId, PlayerIdB )..",#W t�i sao c�c ng߽i l�i kh�ng b� m� ho�c b�i c�nh �p ti�n l�ng n�y nh�?" )
	CallScriptFunction( x894080_g_FuBenScriptId, "TipAllHuman", sceneId, "Tr�n D�ng ��o Nh�n: Ti�u Nh� Qu�n ph�ng ra th� c�m b�y v� h�nh d߾i ch�n, c�c v� ch� � c�n th�n. ��ng b� m� ho�c b�i v� b� ngo�i c�a ch�ng!" )

	local x,z = GetWorldPos( sceneId, PlayerIdA )
	CreateSpecialObjByDataIndex(sceneId, PlayerIdA, x894080_SkillID_G_SpecObj, x, z, 0)

	local x,z = GetWorldPos( sceneId, PlayerIdB )
	CreateSpecialObjByDataIndex(sceneId, PlayerIdB, x894080_SkillID_G_SpecObj, x, z, 0)

	return 1

end


--**********************************
--ʹ��H����....
--**********************************
function x894080_UseSkillH( sceneId, selfId )

		local Last = CallScriptFunction( x894080_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "PlayHp" )
		if Last > 1 then
			return 0
		end

		CallScriptFunction( x894080_g_FuBenScriptId, "SetBossBattleFlag", sceneId, "PlayHp", 2 )

	       --ʹ�ÿռ���....
		local x,z = GetWorldPos( sceneId, selfId )
		LuaFnUnitUseSkill( sceneId, selfId, x894080_SkillID_H, selfId, x, z, 0, 1 )

		CallScriptFunction((200060), "Paopao",sceneId, "Ti�u Nh� Qu�n", "Binh Th�nh K� Tr�n", "аng T�m L�c Tr�c, h�y nh�m h߾ng gi� m� ��ng, b�o v� ta ngh� ng�i d��ng s�c ngh�nh �ch..." )
		CallScriptFunction( x894080_g_FuBenScriptId, "TipAllHuman", sceneId, "Tr�n D�ng ��o Nh�n: Ti�u Nh� Qu�n �� k�u g�i аng T�m L�c Tr�c b�o h� � d��ng s�c. Hai huynh mu�i ch�ng t�m th�i mi�n d�ch t�t c� s�t th߽ng. H�y ph� h�y аng T�m L�c tr�c � ti�u di�t ch�ng tr߾c khi ch�ng h�i ph�c tr� l�i!" )

	return 1

end


--**********************************
--ʹ��I����....
--**********************************
function x894080_UseSkillI( sceneId, selfId )

	local x,z = GetWorldPos( sceneId, selfId )
	LuaFnUnitUseSkill( sceneId, selfId, x894080_SkillID_I, selfId, x, z, 0, 1 )

	return 1

end


