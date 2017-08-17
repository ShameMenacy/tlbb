--Ʈ��� ��ƽ����AI

--F	�����ס����Լ���һ���ռ���....�ٸ���ҼӸ��������ص��ű���buff....�ص�ʱ��BOSS������Χ�˼��˺�buff������....
--G �����㡿���Լ���һ����buff�ļ���....
--H ���̻������Լ���һ���ռ���....�ٸ���ҼӸ��������ص��ű���buff....�ص�ʱ����....
--I	�����ѡ�Tr�c B�t Ph�m��ʱ���Լ���һ����buff�ļ���....


--ȫ�̶����������ƶ����ܵ�buff....
--ÿ��30������������ʹ��FH....
--ÿ��45����Լ�ʹ��G....
--����������ս��ʱ������������FH��buff....
--����ʱѰ�Ҳ�ƽ����....��������Ҫʹ�ÿ񱩼���....
--����ʱ���ֲ�ƽ�����Ѿ�����....�򴴽���һ��BOSS....


--�ű���
x895096_g_ScriptId	= 895096

--�����߼��ű���....
x895096_g_FuBenScriptId = 895063

--����Buff....
x895096_Buff_MianYi1	= 10472	--����һЩ����Ч��....
x895096_Buff_MianYi2	= 10471	--������ͨ����....

--����....
x895096_SkillID_F		= 1825
x895096_BuffID_F1		= 19417

x895096_SkillID_G		= 1806
x895096_SkillID_G_SpecObj		= 188

x895096_SkillID_H		= 1807
x895096_BuffID_H		= 19629

x895096_SkillID_I		= 1804

x895096_SkillCD_FH	=	5000
x895096_SkillCD_G		=	12000
x895096_SkillCD_H	=	12000
x895096_SkillCD_I	=	5000

x895096_MyName			= "Ti�u Nh� Qu�n"	--�Լ�������....
x895096_BrotherName			= "аng T�m Tr�c - B�ch"	--�Լ�������....

--AI Index....
x895096_IDX_KuangBaoMode	= 1	--��ģʽ....0δ�� 1��Ҫ����� 2�Ѿ������
x895096_IDX_CD_SkillFH		= 2	--FH���ܵ�CD....
x895096_IDX_CD_SkillG			= 3	--G���ܵ�CD....
x895096_IDX_CD_Talk				= 4	--FH���ܺ�����CD....
x895096_IDX_CD_SkillI			= 5	--G���ܵ�CD....

x895096_IDX_CombatFlag 		= 1	--�Ƿ���ս��״̬�ı�־....


--**********************************
--��ʼ��....
--**********************************
function x895096_OnInit(sceneId, selfId)
	--����AI....
	x895096_ResetMyAI( sceneId, selfId )
end


--**********************************
--����....
--**********************************
function x895096_OnHeartBeat(sceneId, selfId, nTick)

	--����ǲ�������....
	if LuaFnIsCharacterLiving(sceneId, selfId) ~= 1 then
		return
	end

	--����Ƿ���ս��״̬....
	if 0 == MonsterAI_GetBoolParamByIndex( sceneId, selfId, x895096_IDX_CombatFlag ) then
		return
	end

end


--**********************************
--����ս��....
--**********************************
function x895096_OnEnterCombat(sceneId, selfId, enmeyId)

	--�ӳ�ʼbuff....
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x895096_Buff_MianYi1, 0 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x895096_Buff_MianYi2, 0 )

	--����AI....
	x895096_ResetMyAI( sceneId, selfId )

	--���ý���ս��״̬....
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x895096_IDX_CombatFlag, 1 )

end


--**********************************
--�뿪ս��....
--**********************************
function x895096_OnLeaveCombat(sceneId, selfId)

	--����AI....
	x895096_ResetMyAI( sceneId, selfId )

	--ɾ���Լ�....
	LuaFnDeleteMonster( sceneId, selfId )

end


--**********************************
--ɱ������....
--**********************************
function x895096_OnKillCharacter(sceneId, selfId, targetId)

end


--**********************************
--����....
--**********************************
function x895096_OnDie( sceneId, selfId, killerId )

	--ɾ���Լ�....
		x,z = GetWorldPos( sceneId,selfId )
		local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
		for i=0, nHumanNum-1  do
			local PlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
			if LuaFnIsObjValid(sceneId, PlayerId) == 1 and LuaFnIsCanDoScriptLogic(sceneId, PlayerId) == 1 and LuaFnIsCharacterLiving(sceneId, PlayerId) == 1 then
				xx,zz = GetWorldPos(sceneId,PlayerId)
				if (x-xx)*(x-xx) + (z-zz)*(z-zz) < 2*2 then
					LuaFnCancelSpecificImpact(sceneId,PlayerId,19403)
					LuaFnCancelSpecificImpact(sceneId,PlayerId,19405)
				end
			end
		end

end


--**********************************
--����AI....
--**********************************
function x895096_ResetMyAI( sceneId, selfId )

	--���ò���....
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x895096_IDX_KuangBaoMode, 0 )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x895096_IDX_CD_SkillFH, x895096_SkillCD_FH )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x895096_IDX_CD_SkillG, x895096_SkillCD_G )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x895096_IDX_CD_SkillH, x895096_SkillCD_H )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x895096_IDX_CD_SkillI, x895096_SkillCD_I )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x895096_IDX_CD_Talk, 0 )
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x895096_IDX_CombatFlag, 0 )

	--������������FH��buff....
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0, nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		if LuaFnIsObjValid(sceneId, nHumanId) == 1 and LuaFnIsCanDoScriptLogic(sceneId, nHumanId) == 1 then
			LuaFnCancelSpecificImpact( sceneId, nHumanId, x895096_BuffID_F1 )
			LuaFnCancelSpecificImpact( sceneId, nHumanId, x895096_BuffID_H )
		end
	end

end


--**********************************
--FH��������....
--**********************************
function x895096_TickSkillFH( sceneId, selfId, nTick )

	--���¼���CD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x895096_IDX_CD_SkillFH )
	if cd > nTick then

		MonsterAI_SetIntParamByIndex( sceneId, selfId, x895096_IDX_CD_SkillFH, cd-nTick )
		return 0

	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x895096_IDX_CD_SkillFH, x895096_SkillCD_FH-(nTick-cd) )
		return x895096_UseSkillF( sceneId, selfId )
	end

end


--**********************************
--G��������....
--**********************************
function x895096_TickSkillG( sceneId, selfId, nTick )

	local CurPercent = GetHp( sceneId, selfId ) / GetMaxHp( sceneId, selfId )
	if CurPercent > 0.8333 then
		return 0
	end

	--���¼���CD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x895096_IDX_CD_SkillG )
	if cd > nTick then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x895096_IDX_CD_SkillG, cd-nTick )
		return 0
	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x895096_IDX_CD_SkillG, x895096_SkillCD_G-(nTick-cd) )
		return x895096_UseSkillG( sceneId, selfId )
	end

end

--**********************************
--H��������....
--**********************************
function x895096_TickSkillH( sceneId, selfId, nTick )

	local CurPercent = GetHp( sceneId, selfId ) / GetMaxHp( sceneId, selfId )
	if CurPercent > 0.3333 then
		return 0
	end

	--���¼���CD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x895096_IDX_CD_SkillH )
	if cd > nTick then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x895096_IDX_CD_SkillH, cd-nTick )
		return 0
	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x895096_IDX_CD_SkillH, x895096_SkillCD_H-(nTick-cd) )
		return x895096_UseSkillH( sceneId, selfId )
	end

end

--**********************************
--I��������....
--**********************************
function x895096_TickSkillI( sceneId, selfId, nTick )

	--���¼���CD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x895096_IDX_CD_SkillI )
	if cd > nTick then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x895096_IDX_CD_SkillI, cd-nTick )
		return 0
	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x895096_IDX_CD_SkillI, x895096_SkillCD_I-(nTick-cd) )
		return x895096_UseSkillI( sceneId, selfId )
	end

end


--**********************************
--ʹ��F����....
--**********************************
function x895096_UseSkillF( sceneId, selfId )

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
	LuaFnUnitUseSkill( sceneId, selfId, x895096_SkillID_F, PlayerId, x, z, 0, 1 )

	return 1

end


--**********************************
--ʹ��G����....
--**********************************
function x895096_UseSkillG( sceneId, selfId )


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
	LuaFnUnitUseSkill( sceneId, selfId, x895096_SkillID_G, selfId, x, z, 0, 1 )

	CallScriptFunction((200060), "Paopao",sceneId, "Ti�u Nh� Qu�n", "Binh Th�nh K� Tr�n", "N�i r�ng s�ng n߾c phong c�nh h�u t�nh. #c2ebeff"..GetName( sceneId, PlayerIdA )..", "..GetName( sceneId, PlayerIdB )..",#W t�i sao c�c ng߽i kh�ng b� m� ho�c b�i c�nh �p tuy�t v�i n�y?" )
	CallScriptFunction( x894096_g_FuBenScriptId, "TipAllHuman", sceneId, "Tr�n D�ng ��o Nh�n: Ti�u Nh� Qu�n ph�ng ra th� c�m b�y v� h�nh d߾i ch�n c�c v�, ph�i c�n th�n. ��ng � � �n v� b� ngo�i c�a ch�ng, h�y n� tr�nh ch�ng ra c�ng nhanh c�ng t�t!" )

	local x,z = GetWorldPos( sceneId, PlayerIdA )
	CreateSpecialObjByDataIndex(sceneId, PlayerIdA, x895096_SkillID_G_SpecObj, x, z, 0)

	local x,z = GetWorldPos( sceneId, PlayerIdB )
	CreateSpecialObjByDataIndex(sceneId, PlayerIdB, x895096_SkillID_G_SpecObj, x, z, 0)

	return 1

end


--**********************************
--ʹ��H����....
--**********************************
function x895096_UseSkillH( sceneId, selfId )

		local Last = CallScriptFunction( x895096_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "PlayHp" )
		if Last > 1 then
			return 0
		end

		CallScriptFunction( x895096_g_FuBenScriptId, "SetBossBattleFlag", sceneId, "PlayHp", 2 )

	       --ʹ�ÿռ���....
		local x,z = GetWorldPos( sceneId, selfId )
		LuaFnUnitUseSkill( sceneId, selfId, x895096_SkillID_H, selfId, x, z, 0, 1 )

		CallScriptFunction((200060), "Paopao",sceneId, "Ti�u Nh� Qu�n", "Binh Th�nh K� Tr�n", "аng T�m L�c Tr�c, h�y ��n h߾ng gi� th�i, n�ng �� th�n h�nh ta, ta c�n ngh� ng�i l�i s�c � c�n gi�t �ch!" )
		CallScriptFunction( x894096_g_FuBenScriptId, "TipAllHuman", sceneId, "Tr�n D�ng ��o Nh�n: Ti�u Nh� Qu�n �� tri�u t�p аng T�m L�c Tr�c b�o h� � d��ng s�c. Huynh mu�i ch�ng t�m th�i ���c mi�n d�ch. C�c h� v� t� �i h�y mau mau ph� h�y аng T�m L�c Tr�c quy�t tr� kh� ch�ng m�t phen, tr�nh r�c r�i sau n�y!" )

	return 1

end


--**********************************
--ʹ��I����....
--**********************************
function x895096_UseSkillI( sceneId, selfId )

	local x,z = GetWorldPos( sceneId, selfId )
	LuaFnUnitUseSkill( sceneId, selfId, x895096_SkillID_I, selfId, x, z, 0, 1 )

	return 1

end


--**********************************
--���׺��̻���buff������ʱ��ص����ӿ�....
--**********************************
function x895096_OnImpactFadeOut( sceneId, selfId, impactId )

	--Ѱ��BOSS....
	local bossId = -1
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if x895096_MyName == GetName( sceneId, MonsterId ) then
			bossId = MonsterId
		end
	end

	--û�ҵ��򷵻�....
	if bossId == -1 then
		return
	end

	--������̻���buff����BOSS����....
	if impactId == 19413 then

		local x,z = GetWorldPos( sceneId, selfId )
		LuaFnUnitUseSkill( sceneId, selfId, 1808, selfId, x, z, 0, 1 )

		CallScriptFunction( x895096_g_FuBenScriptId, "CreateBOSS", sceneId, "XiaoRuWei_BOSS", -1, -1 )
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 19417, 0 )

		CallScriptFunction( x894096_g_FuBenScriptId, "TipAllHuman", sceneId, "Tr�n D�ng ��o Nh�n: Huynh mu�i �ng t�m, kh�ng g� c�n ph� ���c. Sau 30 gi�y kh�ng ph� h�y аng T�m Tr�c, huynh mu�i Ti�u th� t� kh�c ph�c h�i tr� l�i..." )

		return
	end

	--����ǰ��׵�buff....����BOSS����������Ҽ�һ���˺���buff������....

	if impactId == 19417 then

		local x = 0
		local z = 0
		local xx = 0
		local zz = 0
		x,z = GetWorldPos( sceneId,selfId )
		local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
		for i=0, nHumanNum-1  do
			local PlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
			if LuaFnIsObjValid(sceneId, PlayerId) == 1 and LuaFnIsCanDoScriptLogic(sceneId, PlayerId) == 1 and LuaFnIsCharacterLiving(sceneId, PlayerId) == 1 then
				xx,zz = GetWorldPos(sceneId,PlayerId)
				if (x-xx)*(x-xx) + (z-zz)*(z-zz) < 16*16 then
					LuaFnSendSpecificImpactToUnit( sceneId, bossId, bossId, PlayerId, 19418, 0 )
				end
			end
		end

		return

	end


end


