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
x895065_g_ScriptId	= 895065

--�����߼��ű���....
x895065_g_FuBenScriptId = 895063

--����Buff....
x895065_Buff_MianYi1	= 10472	--����һЩ����Ч��....
x895065_Buff_MianYi2	= 10471	--������ͨ����....

--����....
x895065_SkillID_F		= 1805
x895065_BuffID_F1		= 19416

x895065_SkillID_G		= 1806
x895065_SkillID_G_SpecObj		= 188

x895065_SkillID_H		= 1807
x895065_BuffID_H		= 19629

x895065_SkillID_I		= 1804

x895065_SkillCD_FH	=	10000
x895065_SkillCD_G		=	12000
x895065_SkillCD_H	=	12000
x895065_SkillCD_I	=	5000


x895065_MyName			= "Ti�u Nh� Qu�n"	--�Լ�������....
x895065_BrotherName = "Ti�u Nh� �y"	--�ֵܵ�����....

--AI Index....
x895065_IDX_KuangBaoMode	= 1	--��ģʽ....0δ�� 1��Ҫ����� 2�Ѿ������
x895065_IDX_CD_SkillFH		= 2	--FH���ܵ�CD....
x895065_IDX_CD_SkillG			= 3	--G���ܵ�CD....
x895065_IDX_CD_Talk				= 4	--FH���ܺ�����CD....
x895065_IDX_CD_SkillI			= 5	--G���ܵ�CD....

x895065_IDX_CombatFlag 		= 1	--�Ƿ���ս��״̬�ı�־....

x895065_LootItem_1 = {
39901048, 39901048, 
}

x895065_LootItem_2 = {
20310184,
}

--**********************************
--��ʼ��....
--**********************************
function x895065_OnInit(sceneId, selfId)
	--����AI....
	x895065_ResetMyAI( sceneId, selfId )
end


--**********************************
--����....
--**********************************
function x895065_OnHeartBeat(sceneId, selfId, nTick)

	--����ǲ�������....
	if LuaFnIsCharacterLiving(sceneId, selfId) ~= 1 then
		return
	end

	--����Ƿ���ս��״̬....
	if 0 == MonsterAI_GetBoolParamByIndex( sceneId, selfId, x895065_IDX_CombatFlag ) then
		return
	end

	--FH��������....
	if 1 == x895065_TickSkillFH( sceneId, selfId, nTick ) then
		return
	end

	--G��������....
	if 1 == x895065_TickSkillG( sceneId, selfId, nTick ) then
		return
	end

	--H��������....
	if 1 == x895065_TickSkillH( sceneId, selfId, nTick ) then
		return
	end

	--I��������....
	if 1 == x895065_TickSkillI( sceneId, selfId, nTick ) then
		return
	end

	local nCount = GetMonsterCount(sceneId)
	for i=0, nCount-1  do
		local nObjId = GetMonsterObjID(sceneId, i)
		local MosDataID = GetMonsterDataID( sceneId, nObjId )
		if MosDataID == 15040 then
			LuaFnSendSpecificImpactToUnit( sceneId, nObjId, nObjId, selfId, 19421, 0 )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 19422, 0 )
		elseif MosDataID == 15060 then
			LuaFnSendSpecificImpactToUnit( sceneId, nObjId, nObjId, selfId, 19429, 0 )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 19430, 0 )
		elseif MosDataID == 15050 then
			LuaFnSendSpecificImpactToUnit( sceneId, nObjId, nObjId, selfId, 19425, 0 )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 19426, 0 )
		elseif MosDataID == 15065 then
			LuaFnSendSpecificImpactToUnit( sceneId, nObjId, nObjId, selfId, 19431, 0 )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 19432, 0 )
		elseif MosDataID == 15055 then
			LuaFnSendSpecificImpactToUnit( sceneId, nObjId, nObjId, selfId, 19427, 0 )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 19428, 0 )
		elseif MosDataID == 15045 then
			LuaFnSendSpecificImpactToUnit( sceneId, nObjId, nObjId, selfId, 19423, 0 )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 19424, 0 )
		end
	end

end


--**********************************
--����ս��....
--**********************************
function x895065_OnEnterCombat(sceneId, selfId, enmeyId)

	--�ӳ�ʼbuff....
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x895065_Buff_MianYi1, 0 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x895065_Buff_MianYi2, 0 )

	--����AI....
	x895065_ResetMyAI( sceneId, selfId )

	--���ý���ս��״̬....
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x895065_IDX_CombatFlag, 1 )

end


--**********************************
--�뿪ս��....
--**********************************
function x895065_OnLeaveCombat(sceneId, selfId)

	--����AI....
	x895065_ResetMyAI( sceneId, selfId )

	--�������������еĹ�....Ѱ���ֵܲ�����ɾ��....
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if x895065_BrotherName == GetName( sceneId, MonsterId ) then
			LuaFnDeleteMonster( sceneId, MonsterId )
		end
	end

	--ɾ���Լ�....
	LuaFnDeleteMonster( sceneId, selfId )
	CallScriptFunction( x895065_g_FuBenScriptId, "SetBossBattleFlag", sceneId, "PlayHp", 0 )

	--�����Ի�NPC....
	local MstIdA = CallScriptFunction( x895065_g_FuBenScriptId, "CreateBOSS", sceneId, "XiaoRuJun_NPC", -1, -1 )
	local MstIdB = CallScriptFunction( x895065_g_FuBenScriptId, "CreateBOSS", sceneId, "XiaoRuWei_NPC", -1, -1 )

	SetUnitReputationID( sceneId, MstIdA, MstIdA, 0 )
	SetUnitReputationID( sceneId, MstIdB, MstIdB, 0 )

	local nCount = GetMonsterCount(sceneId)
	for i=0, nCount-1  do
		local nObjId = GetMonsterObjID(sceneId, i)
		local MosDataID = GetMonsterDataID( sceneId, nObjId )
		if MosDataID == 15040 or MosDataID == 15045 or MosDataID == 15050 or MosDataID == 15055 or MosDataID == 15060 or MosDataID == 15065 or MosDataID == 15140 or MosDataID == 15145 or MosDataID == 15150 or MosDataID == 15155 or MosDataID == 15160 or MosDataID == 15165 then
			LuaFnDeleteMonster( sceneId, nObjId )
		end
	end

end


--**********************************
--ɱ������....
--**********************************
function x895065_OnKillCharacter(sceneId, selfId, targetId)

end


--**********************************
--����....
--**********************************
function x895065_OnDie( sceneId, selfId, killerId )

	--����AI....
	x895065_ResetMyAI( sceneId, selfId )

	--�����û����ս�����ϴ��������ս���ϴ�....
	if 1 ~= CallScriptFunction( x895065_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "YeLvYan" )	then
		CallScriptFunction( x895065_g_FuBenScriptId, "SetBossBattleFlag", sceneId, "YeLvYan", 1 )
	end
	
	-- zchw ȫ�򹫸�
	local	playerName	= GetName( sceneId, killerId )
	
	--ɱ��������ǳ������ȡ�����˵�����....
	local playerID = killerId
	local objType = GetCharacterType( sceneId, killerId )
	if objType == 3 then
		playerID = GetPetCreator( sceneId, killerId )
		playerName = GetName( sceneId, playerID )
	end
	
	--��������������ȡ�ӳ�������....
	local leaderID = GetTeamLeader( sceneId, playerID )
	if leaderID ~= -1 then
		playerName = GetName( sceneId, leaderID )
	       LuaFnSendSpecificImpactToUnit( sceneId, leaderID, leaderID, leaderID, 19446, 0 )
	end
	
	if playerName ~= nil then
		str = format("��i ph� tr�c l�m, #{_INFOUSR%s}#P �ang �nh r�i �i th� ch�t ph�t hi�n trong �ng аng T�m Tr�c tan t�c c�a #cFF0000Ti�u Nh� Qu�n#W xu�t hi�n m�t b�c l�n ch�a �y b�u v�t, li�n vui m�ng �em theo lu�n!", playerName); --ɣ����
		AddGlobalCountNews( sceneId, str )
	end

	CallScriptFunction( x894065_g_FuBenScriptId, "TipAllHuman", sceneId, "Tr�n D�ng ��o Nh�n: Tuy �� ��nh ch�t Ti�u Nh� Qu�n nh�ng vi�c ti�p theo l� ph�i l�p t�c ti�u di�t ngay Ti�u Nh� �y. N�u kh�ng sau 30 gi�y Ti�u Nh� Qu�n s� s�ng l�i, l�c �� h�u qu� kh� m� di�n t� n�i..." )

   if 2 ~= CallScriptFunction( x895065_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "XiaoRuJun" )	then
	--ȡ�õ�ǰ�����������
	local num = LuaFnGetCopyScene_HumanCount( sceneId )
	local mems = {}
	
	for i = 0, num - 1 do
		mems[i] = LuaFnGetCopyScene_HumanObjId( sceneId, i )
	end

	for i = 0, num - 1 do
		if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 and LuaFnIsCharacterLiving( sceneId, mems[i] ) == 1 then					-- ���ڳ����Ĳ����˲���

			local WuPin = random( getn(x895065_LootItem_1) )
			AddMonsterDropItem( sceneId, selfId, mems[i], x895065_LootItem_1[WuPin] )

			rand = random(100)
			if rand < 70 then
				AddMonsterDropItem( sceneId, selfId, mems[i], 39910001 )--Ԫ��1W
			end

			rand = random(100)
			if rand < 50 then
				AddMonsterDropItem( sceneId, selfId, mems[i], 20310184 )--õ��֮��
			end

			rand = random(100)
			if rand < 100 then
				AddMonsterDropItem( sceneId, selfId, mems[i], 20310184 )--����
			end

			rand = random(100)
			if rand < 50 then
				AddMonsterDropItem( sceneId, selfId, mems[i], 20310184 )--����
			end

			rand = random(100)
			if rand < 70 then
				local WuPin = random( getn(x895065_LootItem_2) )
				AddMonsterDropItem( sceneId, selfId, mems[i], x895065_LootItem_2[WuPin]  )

			end

			rand = random(100)
			if rand < 50 then
				AddMonsterDropItem( sceneId, selfId, mems[i], 39910003)--Ԫ��5W
			end
		end
	end
   end

	--�����Ѿ���ս��ɣ����....
	CallScriptFunction( x895065_g_FuBenScriptId, "SetBossBattleFlag", sceneId, "XiaoRuJun", 2 )
end


--**********************************
--����AI....
--**********************************
function x895065_ResetMyAI( sceneId, selfId )

	--���ò���....
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x895065_IDX_KuangBaoMode, 0 )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x895065_IDX_CD_SkillFH, x895065_SkillCD_FH )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x895065_IDX_CD_SkillG, x895065_SkillCD_G )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x895065_IDX_CD_SkillH, x895065_SkillCD_H )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x895065_IDX_CD_SkillI, x895065_SkillCD_I )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x895065_IDX_CD_Talk, 0 )
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x895065_IDX_CombatFlag, 0 )

	--������������FH��buff....
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0, nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		if LuaFnIsObjValid(sceneId, nHumanId) == 1 and LuaFnIsCanDoScriptLogic(sceneId, nHumanId) == 1 then
			LuaFnCancelSpecificImpact( sceneId, nHumanId, x895065_BuffID_F1 )
			LuaFnCancelSpecificImpact( sceneId, nHumanId, x895065_BuffID_H )
		end
	end

end


--**********************************
--FH��������....
--**********************************
function x895065_TickSkillFH( sceneId, selfId, nTick )

	local CurPercent = GetHp( sceneId, selfId ) / GetMaxHp( sceneId, selfId )
	if CurPercent > 0.8555 then
		return 0
	end

	--���¼���CD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x895065_IDX_CD_SkillFH )
	if cd > nTick then

		MonsterAI_SetIntParamByIndex( sceneId, selfId, x895065_IDX_CD_SkillFH, cd-nTick )
		return 0

	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x895065_IDX_CD_SkillFH, x895065_SkillCD_FH-(nTick-cd) )
		return x895065_UseSkillF( sceneId, selfId )
	end

end


--**********************************
--G��������....
--**********************************
function x895065_TickSkillG( sceneId, selfId, nTick )

	local CurPercent = GetHp( sceneId, selfId ) / GetMaxHp( sceneId, selfId )
	if CurPercent > 0.8333 then
		return 0
	end

	--���¼���CD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x895065_IDX_CD_SkillG )
	if cd > nTick then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x895065_IDX_CD_SkillG, cd-nTick )
		return 0
	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x895065_IDX_CD_SkillG, x895065_SkillCD_G-(nTick-cd) )
		return x895065_UseSkillG( sceneId, selfId )
	end

end

--**********************************
--H��������....
--**********************************
function x895065_TickSkillH( sceneId, selfId, nTick )

	local CurPercent = GetHp( sceneId, selfId ) / GetMaxHp( sceneId, selfId )
	if CurPercent > 0.3333 then
		return 0
	end

	--���¼���CD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x895065_IDX_CD_SkillH )
	if cd > nTick then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x895065_IDX_CD_SkillH, cd-nTick )
		return 0
	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x895065_IDX_CD_SkillH, x895065_SkillCD_H-(nTick-cd) )
		return x895065_UseSkillH( sceneId, selfId )
	end

end

--**********************************
--I��������....
--**********************************
function x895065_TickSkillI( sceneId, selfId, nTick )

	--���¼���CD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x895065_IDX_CD_SkillI )
	if cd > nTick then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x895065_IDX_CD_SkillI, cd-nTick )
		return 0
	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x895065_IDX_CD_SkillI, x895065_SkillCD_I-(nTick-cd) )
		return x895065_UseSkillI( sceneId, selfId )
	end

end


--**********************************
--ʹ��F����....
--**********************************
function x895065_UseSkillF( sceneId, selfId )

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
	LuaFnUnitUseSkill( sceneId, selfId, x895065_SkillID_F, PlayerId, x, z, 0, 1 )

	CallScriptFunction((200060), "Paopao",sceneId, "Ti�u Nh� Qu�n", "Binh Th�nh K� Tr�n", "M� th�t vu l�m, "..GetName( sceneId, PlayerId ).." ng߽i l�m sao c� th� tho�t th�n ���c?" )
	CallScriptFunction( x894065_g_FuBenScriptId, "TipAllHuman", sceneId, "Tr�n D�ng ��o Nh�n: Ti�u Nh� Qu�n �� s� d�ng s�c kh� v�y kh�n, s�c kh� m� ho�c. Ng߶i n�o d�nh s�c kh� n�y l�p t�c tr�nh xa t� �i tr�nh b�c ph�t s�c kh� g�y h�i cho chi�n h�u xung quanh!" )

	--����Ҽӽ�����ص��ű���buff....
	LuaFnSendSpecificImpactToUnit( sceneId, PlayerId, PlayerId, PlayerId, x895065_BuffID_F1, 0 )

	return 1

end


--**********************************
--ʹ��G����....
--**********************************
function x895065_UseSkillG( sceneId, selfId )


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
	LuaFnUnitUseSkill( sceneId, selfId, x895065_SkillID_G, selfId, x, z, 0, 1 )

	CallScriptFunction((200060), "Paopao",sceneId, "Ti�u Nh� Qu�n", "Binh Th�nh K� Tr�n", "N�i r�ng s�ng n߾c phong c�nh h�u t�nh. #c2ebeff"..GetName( sceneId, PlayerIdA )..", "..GetName( sceneId, PlayerIdB ).."#W, c�c ng߽i th� li�n t߷ng m� xem..." )
	CallScriptFunction( x894065_g_FuBenScriptId, "TipAllHuman", sceneId, "Tr�n D�ng ��o Nh�n: Ti�u Nh� Qu�n �� ph�ng ra c�m b�y v� h�nh d߾i ch�n c�c v�, ��ng � � �n v� b� ngo�i c�a ch�ng, h�y n� ch�ng c�ng nhanh c�ng t�t." )

	local x,z = GetWorldPos( sceneId, PlayerIdA )
	CreateSpecialObjByDataIndex(sceneId, selfId, x895065_SkillID_G_SpecObj, x, z, 0)

	local x,z = GetWorldPos( sceneId, PlayerIdB )
	CreateSpecialObjByDataIndex(sceneId, selfId, x895065_SkillID_G_SpecObj, x, z, 0)

	return 1

end


--**********************************
--ʹ��H����....
--**********************************
function x895065_UseSkillH( sceneId, selfId )

		local Last = CallScriptFunction( x895065_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "PlayHp" )
		if Last > 1 then
			return 0
		end

		CallScriptFunction( x895065_g_FuBenScriptId, "SetBossBattleFlag", sceneId, "PlayHp", 2 )

	       --ʹ�ÿռ���....
		local x,z = GetWorldPos( sceneId, selfId )
		LuaFnUnitUseSkill( sceneId, selfId, x895065_SkillID_H, selfId, x, z, 0, 1 )

		CallScriptFunction((200060), "Paopao",sceneId, "Ti�u Nh� Qu�n", "Binh Th�nh K� Tr�n", "аng T�m L�c Tr�c, h�y ��n h߾ng gi� th�i, n�ng �� th�n h�nh ta, ta c�n ngh� ng�i l�i s�c � c�n gi�t �ch!" )
		CallScriptFunction( x894065_g_FuBenScriptId, "TipAllHuman", sceneId, "Tr�n D�ng ��o Nh�n: Ti�u Nh� Qu�n �� tri�u t�p аng T�m L�c Tr�c b�o h� � d��ng s�c. Huynh mu�i ch�ng t�m th�i ���c mi�n d�ch. C�c h� v� t� �i h�y mau mau ph� h�y аng T�m L�c Tr�c quy�t tr� kh� ch�ng m�t phen, tr�nh r�c r�i sau n�y!" )

		CallScriptFunction( x895065_g_FuBenScriptId, "CreateBOSS", sceneId, "ZhuBai_BOSS", -1, -1 )
		CallScriptFunction( x895065_g_FuBenScriptId, "CreateBOSS", sceneId, "ZhuHong_BOSS", -1, -1 )
		CallScriptFunction( x895065_g_FuBenScriptId, "CreateBOSS", sceneId, "ZhuHuang_BOSS", -1, -1 )
		CallScriptFunction( x895065_g_FuBenScriptId, "CreateBOSS", sceneId, "ZhuLan_BOSS", -1, -1 )
		CallScriptFunction( x895065_g_FuBenScriptId, "CreateBOSS", sceneId, "ZhuLv_BOSS", -1, -1 )
		CallScriptFunction( x895065_g_FuBenScriptId, "CreateBOSS", sceneId, "ZhuZi_BOSS", -1, -1 )
		CallScriptFunction( x895065_g_FuBenScriptId, "CreateBOSS", sceneId, "Bai_BOSS", -1, -1 )
		CallScriptFunction( x895065_g_FuBenScriptId, "CreateBOSS", sceneId, "Hong_BOSS", -1, -1 )
		CallScriptFunction( x895065_g_FuBenScriptId, "CreateBOSS", sceneId, "Huang_BOSS", -1, -1 )
		CallScriptFunction( x895065_g_FuBenScriptId, "CreateBOSS", sceneId, "Lan_BOSS", -1, -1 )
		CallScriptFunction( x895065_g_FuBenScriptId, "CreateBOSS", sceneId, "Lv_BOSS", -1, -1 )
		CallScriptFunction( x895065_g_FuBenScriptId, "CreateBOSS", sceneId, "Zi_BOSS", -1, -1 )

	return 1

end


--**********************************
--ʹ��I����....
--**********************************
function x895065_UseSkillI( sceneId, selfId )

	local x,z = GetWorldPos( sceneId, selfId )
	LuaFnUnitUseSkill( sceneId, selfId, x895065_SkillID_I, selfId, x, z, 0, 1 )

	return 1

end


--**********************************
--���׺��̻���buff������ʱ��ص����ӿ�....
--**********************************
function x895065_OnImpactFadeOut( sceneId, selfId, impactId )

	--Ѱ��BOSS....
	local bossId = -1
	local MonsterId = -1
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if GetName( sceneId, MonsterId ) == "Ti�u Nh� Qu�n" then
			bossId = MonsterId
		end
	end

	--û�ҵ��򷵻�....
	if bossId == -1 then
		return
	end

	--������̻���buff����BOSS����....
	if impactId == 19447 then

		local bok = 0
		local MosDataID = 0
		local nCount = GetMonsterCount(sceneId)
		for i=0, nCount-1  do
			local nObjId = GetMonsterObjID(sceneId, i)
			local MosDataID = GetMonsterDataID( sceneId, nObjId )
			if MosDataID == 15130 then
				bok = 1
			end
		end

		if bok == 0 then
			return
		end

		if bok == 1 then

			local MonsterId = CallScriptFunction( x895067_g_FuBenScriptId, "CreateBOSS", sceneId, "XiaoRuWei_BOSS", -1, -1 )
			LuaFnSendSpecificImpactToUnit( sceneId, MonsterId, MonsterId, MonsterId, 19414, 0 )

			CallScriptFunction( x894067_g_FuBenScriptId, "TipAllHuman", sceneId, "Tr�n D�ng ��o Nh�n: Huynh � �ng t�m s�c m�nh phi th߶ng. N�u trong 30 gi�y kh�ng ti�u di�t Ti�u Nh� �y th� Ti�u Nh� Qu�n s� h�i sinh, l�c �� h�u qu� th�t kh� l߶ng!" )

			return
		end

		return
	end

	--����ǰ��׵�buff....����BOSS����������Ҽ�һ���˺���buff������....

	if impactId == x895065_BuffID_F1 then

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
				if (x-xx)*(x-xx) + (z-zz)*(z-zz) < 12*12 then
					LuaFnSendSpecificImpactToUnit( sceneId, bossId, bossId, PlayerId, 19418, 0 )
				end
			end
		end

		return

	end


end

