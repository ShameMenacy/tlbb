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
x894097_g_ScriptId	= 894097

--�����߼��ű���....
x894097_g_FuBenScriptId = 894063

--����Buff....
x894097_Buff_MianYi1	= 10472	--����һЩ����Ч��....
x894097_Buff_MianYi2	= 10471	--������ͨ����....

--����....
x894097_SkillID_F		= 1825
x894097_BuffID_F1		= 19417

x894097_SkillID_G		= 1806
x894097_SkillID_G_SpecObj		= 188

x894097_SkillID_H		= 1807
x894097_BuffID_H		= 19629

x894097_SkillID_I		= 1804

x894097_SkillCD_FH	=	5000
x894097_SkillCD_G		=	12000
x894097_SkillCD_H	=	12000
x894097_SkillCD_I	=	5000

x894097_MyName			= "Ti�u Nh� Qu�n"	--�Լ�������....
x894097_BrotherName			= "аng T�m Tr�c - B�ch"	--�Լ�������....

--AI Index....
x894097_IDX_KuangBaoMode	= 1	--��ģʽ....0δ�� 1��Ҫ����� 2�Ѿ������
x894097_IDX_CD_SkillFH		= 2	--FH���ܵ�CD....
x894097_IDX_CD_SkillG			= 3	--G���ܵ�CD....
x894097_IDX_CD_Talk				= 4	--FH���ܺ�����CD....
x894097_IDX_CD_SkillI			= 5	--G���ܵ�CD....

x894097_IDX_CombatFlag 		= 1	--�Ƿ���ս��״̬�ı�־....


--**********************************
--��ʼ��....
--**********************************
function x894097_OnInit(sceneId, selfId)
	--����AI....
	x894097_ResetMyAI( sceneId, selfId )
end


--**********************************
--����....
--**********************************
function x894097_OnHeartBeat(sceneId, selfId, nTick)

	--����ǲ�������....
	if LuaFnIsCharacterLiving(sceneId, selfId) ~= 1 then
		return
	end

		local enemyId = GetMonsterCurEnemy( sceneId, selfId )
		if enemyId > 0 then
			local x,z = GetWorldPos(sceneId,selfId)
			local DogX, DogZ = GetWorldPos( sceneId, enemyId )
			if (x - DogX) * (x - DogX) + (z - DogZ) * (z - DogZ) < 2*2 then
				LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, enemyId, 19434, 0 )
				LuaFnDeleteMonster( sceneId, selfId )
				--LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, enemyId, 19434, 0 )
			end
		end
end


--**********************************
--����ս��....
--**********************************
function x894097_OnEnterCombat(sceneId, selfId, enmeyId)

	--�ӳ�ʼbuff....
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x894097_Buff_MianYi1, 0 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x894097_Buff_MianYi2, 0 )

	--����AI....
	x894097_ResetMyAI( sceneId, selfId )

	--���ý���ս��״̬....
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x894097_IDX_CombatFlag, 1 )

end


--**********************************
--�뿪ս��....
--**********************************
function x894097_OnLeaveCombat(sceneId, selfId)

	--����AI....
	x894097_ResetMyAI( sceneId, selfId )

	--ɾ���Լ�....
	LuaFnDeleteMonster( sceneId, selfId )

end


--**********************************
--ɱ������....
--**********************************
function x894097_OnKillCharacter(sceneId, selfId, targetId)

end


--**********************************
--����....
--**********************************
function x894097_OnDie( sceneId, selfId, killerId )

end


--**********************************
--����AI....
--**********************************
function x894097_ResetMyAI( sceneId, selfId )

	--���ò���....
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x894097_IDX_KuangBaoMode, 0 )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x894097_IDX_CD_SkillFH, x894097_SkillCD_FH )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x894097_IDX_CD_SkillG, x894097_SkillCD_G )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x894097_IDX_CD_SkillH, x894097_SkillCD_H )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x894097_IDX_CD_SkillI, x894097_SkillCD_I )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x894097_IDX_CD_Talk, 0 )
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x894097_IDX_CombatFlag, 0 )

	--������������FH��buff....
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0, nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		if LuaFnIsObjValid(sceneId, nHumanId) == 1 and LuaFnIsCanDoScriptLogic(sceneId, nHumanId) == 1 then
			LuaFnCancelSpecificImpact( sceneId, nHumanId, x894097_BuffID_F1 )
			LuaFnCancelSpecificImpact( sceneId, nHumanId, x894097_BuffID_H )
		end
	end

end


--**********************************
--FH��������....
--**********************************
function x894097_TickSkillFH( sceneId, selfId, nTick )

	--���¼���CD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x894097_IDX_CD_SkillFH )
	if cd > nTick then

		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894097_IDX_CD_SkillFH, cd-nTick )
		return 0

	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894097_IDX_CD_SkillFH, x894097_SkillCD_FH-(nTick-cd) )
		return x894097_UseSkillF( sceneId, selfId )
	end

end


--**********************************
--G��������....
--**********************************
function x894097_TickSkillG( sceneId, selfId, nTick )

	local CurPercent = GetHp( sceneId, selfId ) / GetMaxHp( sceneId, selfId )
	if CurPercent > 0.8333 then
		return 0
	end

	--���¼���CD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x894097_IDX_CD_SkillG )
	if cd > nTick then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894097_IDX_CD_SkillG, cd-nTick )
		return 0
	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894097_IDX_CD_SkillG, x894097_SkillCD_G-(nTick-cd) )
		return x894097_UseSkillG( sceneId, selfId )
	end

end

--**********************************
--H��������....
--**********************************
function x894097_TickSkillH( sceneId, selfId, nTick )

	local CurPercent = GetHp( sceneId, selfId ) / GetMaxHp( sceneId, selfId )
	if CurPercent > 0.3333 then
		return 0
	end

	--���¼���CD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x894097_IDX_CD_SkillH )
	if cd > nTick then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894097_IDX_CD_SkillH, cd-nTick )
		return 0
	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894097_IDX_CD_SkillH, x894097_SkillCD_H-(nTick-cd) )
		return x894097_UseSkillH( sceneId, selfId )
	end

end

--**********************************
--I��������....
--**********************************
function x894097_TickSkillI( sceneId, selfId, nTick )

	--���¼���CD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x894097_IDX_CD_SkillI )
	if cd > nTick then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894097_IDX_CD_SkillI, cd-nTick )
		return 0
	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894097_IDX_CD_SkillI, x894097_SkillCD_I-(nTick-cd) )
		return x894097_UseSkillI( sceneId, selfId )
	end

end


--**********************************
--ʹ��F����....
--**********************************
function x894097_UseSkillF( sceneId, selfId )

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
	LuaFnUnitUseSkill( sceneId, selfId, x894097_SkillID_F, PlayerId, x, z, 0, 1 )

	return 1

end


--**********************************
--ʹ��G����....
--**********************************
function x894097_UseSkillG( sceneId, selfId )


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
	LuaFnUnitUseSkill( sceneId, selfId, x894097_SkillID_G, selfId, x, z, 0, 1 )

	CallScriptFunction((200060), "Paopao",sceneId, "Ti�u Nh� Qu�n", "Binh Th�nh K� Tr�n", "N�i r�ng s�ng n߾c, c�nh �p b�t ng� #c2ebeff"..GetName( sceneId, PlayerIdA )..", "..GetName( sceneId, PlayerIdB )..",#W t�i sao hai ng߽i kh�ng b� cu�n h�t b�i c�nh �p m� h�n n�y?" )
	CallScriptFunction( x894097_g_FuBenScriptId, "TipAllHuman", sceneId, "Tr�n D�ng ��o Nh�n: Ti�u Nh� Qu�n ph�t ra c�m b�y d߾i ch�n c�c v�, kh�n tr߽ng n� tr�nh, ch�ng nguy hi�m kh�c h�n v� b� ngo�i ��..." )

	local x,z = GetWorldPos( sceneId, PlayerIdA )
	CreateSpecialObjByDataIndex(sceneId, PlayerIdA, x894097_SkillID_G_SpecObj, x, z, 0)

	local x,z = GetWorldPos( sceneId, PlayerIdB )
	CreateSpecialObjByDataIndex(sceneId, PlayerIdB, x894097_SkillID_G_SpecObj, x, z, 0)

	return 1

end


--**********************************
--ʹ��H����....
--**********************************
function x894097_UseSkillH( sceneId, selfId )

		local Last = CallScriptFunction( x894097_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "PlayHp" )
		if Last > 1 then
			return 0
		end

		CallScriptFunction( x894097_g_FuBenScriptId, "SetBossBattleFlag", sceneId, "PlayHp", 2 )

	       --ʹ�ÿռ���....
		local x,z = GetWorldPos( sceneId, selfId )
		LuaFnUnitUseSkill( sceneId, selfId, x894097_SkillID_H, selfId, x, z, 0, 1 )

		CallScriptFunction((200060), "Paopao",sceneId, "Ti�u Nh� Qu�n", "Binh Th�nh K� Tr�n", "аng T�m L�c Tr�c, h�y ��n h߾ng gi� th�i, n�ng �� th�n h�nh ta, ta c�n ngh� ng�i l�i s�c � c�n gi�t �ch!" )
		CallScriptFunction( x894097_g_FuBenScriptId, "TipAllHuman", sceneId, "Tr�n D�ng ��o Nh�n: Ti�u Nh� Qu�n �� tri�u t�p аng T�m L�c Tr�c b�o h� � d��ng s�c. Huynh mu�i ch�ng t�m th�i ���c mi�n d�ch. C�c h� v� t� �i h�y mau mau ph� h�y аng T�m L�c Tr�c quy�t tr� kh� ch�ng m�t phen, tr�nh r�c r�i sau n�y!" )

	return 1

end


--**********************************
--ʹ��I����....
--**********************************
function x894097_UseSkillI( sceneId, selfId )

	local x,z = GetWorldPos( sceneId, selfId )
	LuaFnUnitUseSkill( sceneId, selfId, x894097_SkillID_I, selfId, x, z, 0, 1 )

	return 1

end
