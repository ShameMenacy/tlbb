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
x894066_g_ScriptId	= 894066

--�����߼��ű���....
x894066_g_FuBenScriptId = 894063

--����Buff....
x894066_Buff_MianYi1	= 10472	--����һЩ����Ч��....
x894066_Buff_MianYi2	= 10471	--������ͨ����....

--����....
x894066_SkillID_F		= 1809
x894066_SkillID_F2		= 1810
x894066_BuffID_F1		= 19433

x894066_SkillID_G		= 1811
x894066_SkillID_G_SpecObj		= 188

x894066_SkillID_H		= 1813
x894066_SkillD_SpecObj = 190

x894066_SkillID_I		= 1814

x894066_SkillID_J		= 1817
x894066_SkillID_J2		= 1818
x894066_BuffID_J2		= 19435

x894066_SkillCD_FH	=	6000
x894066_SkillCD_G		=	45000
x894066_SkillCD_H	=	25000
x894066_SkillCD_I	=	50000
x894066_SkillCD_J	=	30000

x894066_MyName			= "Gia Lu�t Di�m"	--�Լ�������....

--AI Index....
x894066_IDX_KuangBaoMode	= 1	--��ģʽ....0δ�� 1��Ҫ����� 2�Ѿ������
x894066_IDX_CD_SkillFH		= 2	--FH���ܵ�CD....
x894066_IDX_CD_SkillG			= 3	--G���ܵ�CD....
x894066_IDX_CD_Talk				= 4	--FH���ܺ�����CD....
x894066_IDX_CD_SkillI			= 5	--G���ܵ�CD....
x894066_IDX_CD_SkillJ			= 6	--G���ܵ�CD....

x894066_IDX_CombatFlag 		= 1	--�Ƿ���ս��״̬�ı�־....

x894066_LootItem_1 = {
39910001, 39910002, 39910003, 
}

x894066_LootItem_2 = {
20310184,
}
--**********************************
--��ʼ��....
--**********************************
function x894066_OnInit(sceneId, selfId)
	--����AI....
	x894066_ResetMyAI( sceneId, selfId )
end


--**********************************
--����....
--**********************************
function x894066_OnHeartBeat(sceneId, selfId, nTick)

	--����ǲ�������....
	if LuaFnIsCharacterLiving(sceneId, selfId) ~= 1 then
		return
	end

	--����Ƿ���ս��״̬....
	if 0 == MonsterAI_GetBoolParamByIndex( sceneId, selfId, x894066_IDX_CombatFlag ) then
		return
	end

	--FH��������....
	if 1 == x894066_TickSkillFH( sceneId, selfId, nTick ) then
		return
	end

	--G��������....
	if 1 == x894066_TickSkillG( sceneId, selfId, nTick ) then
		return
	end

	--H��������....
	if 1 == x894066_TickSkillH( sceneId, selfId, nTick ) then
		return
	end

	--I��������....
	if 1 == x894066_TickSkillI( sceneId, selfId, nTick ) then
		return
	end

	--I��������....
	if 1 == x894066_TickSkillJ( sceneId, selfId, nTick ) then
		return
	end

end


--**********************************
--����ս��....
--**********************************
function x894066_OnEnterCombat(sceneId, selfId, enmeyId)

	--�ӳ�ʼbuff....
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x894066_Buff_MianYi1, 0 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x894066_Buff_MianYi2, 0 )

	--����AI....
	x894066_ResetMyAI( sceneId, selfId )

	--���ý���ս��״̬....
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x894066_IDX_CombatFlag, 1 )

end


--**********************************
--�뿪ս��....
--**********************************
function x894066_OnLeaveCombat(sceneId, selfId)

	--����AI....
	x894066_ResetMyAI( sceneId, selfId )

	--ɾ���Լ�....
	LuaFnDeleteMonster( sceneId, selfId )

	--�����Ի�NPC....
	local MstId = CallScriptFunction( x894066_g_FuBenScriptId, "CreateBOSS", sceneId, "YeLvYan_NPC", -1, -1 )
	SetUnitReputationID( sceneId, MstId, MstId, 0 )

end


--**********************************
--ɱ������....
--**********************************
function x894066_OnKillCharacter(sceneId, selfId, targetId)

end


--**********************************
--����....
--**********************************
function x894066_OnDie( sceneId, selfId, killerId )

	--����AI....
	x894066_ResetMyAI( sceneId, selfId )

	--ɾ���Լ�....
	SetCharacterDieTime( sceneId, selfId, 3000 )

	--�������ϴ������ļ�ʱ��....
	--local x,z = GetWorldPos( sceneId, selfId )
	--CallScriptFunction( x894066_g_FuBenScriptId, "OpenYeLvYanDieTimer", sceneId, 4, x894066_g_ScriptId, x, z )

	--�����Ѿ���ս�����ϴ�....
	CallScriptFunction( x894066_g_FuBenScriptId, "SetBossBattleFlag", sceneId, "YeLvYan", 2 )

	--�����û����ս��˫���������ս˫��....
	if 2 ~= CallScriptFunction( x894066_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "YeLvLian" )	then
		CallScriptFunction( x894066_g_FuBenScriptId, "SetBossBattleFlag", sceneId, "YeLvLian", 1 )
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
	end
	
	if playerName ~= nil then
		str = format("Phong h�a li�t di�m l�a ch�y ng�t tr�i.#{_INFOUSR%s}#P t�i Binh Th�nh K� Tr�n �� ��nh b�i #cFF0000Da Lu�t Di�m#W. Tuy Gia Lu�t Di�m l� n� nhi Li�u Qu�c nh�ng v� c�ng th� kh�ng t�m th߶ng m�t ch�t n�o...", playerName); --���ϴ�
		AddGlobalCountNews( sceneId, str )
	end

	--ȡ�õ�ǰ�����������
	local num = LuaFnGetCopyScene_HumanCount( sceneId )
	local mems = {}
	
	for i = 0, num - 1 do
		mems[i] = LuaFnGetCopyScene_HumanObjId( sceneId, i )
	end

	for i = 0, num - 1 do
		if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 and LuaFnIsCharacterLiving( sceneId, mems[i] ) == 1 then					-- ���ڳ����Ĳ����˲���

			local WuPin = random( getn(x894066_LootItem_1) )
			AddMonsterDropItem( sceneId, selfId, mems[i], x894066_LootItem_1[WuPin] )
			AddMonsterDropItem( sceneId, selfId, mems[i], 39910001 )

			rand = random(100)
			if rand < 70 then
				AddMonsterDropItem( sceneId, selfId, mems[i], 39910001 )--Ԫ��1W
			end

			rand = random(100)
			if rand < 50 then
				AddMonsterDropItem( sceneId, selfId, mems[i], 20310184 )--õ��֮��
			end

			rand = random(100)
			if rand < 10 then
				AddMonsterDropItem( sceneId, selfId, mems[i], 20310184 )--����
			end

			rand = random(100)
			if rand < 100 then
				AddMonsterDropItem( sceneId, selfId, mems[i], 20310184 )--����
			end

			rand = random(100)
			if rand < 70 then
				local WuPin = random( getn(x894066_LootItem_2) )
				AddMonsterDropItem( sceneId, selfId, mems[i], x894066_LootItem_2[WuPin]  )

			end

			rand = random(100)
			if rand < 50 then
				AddMonsterDropItem( sceneId, selfId, mems[i], 20310184 )--ħ��
			end

		end
	end

end


--**********************************
--����AI....
--**********************************
function x894066_ResetMyAI( sceneId, selfId )

	--���ò���....
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x894066_IDX_KuangBaoMode, 0 )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x894066_IDX_CD_SkillFH, x894066_SkillCD_FH )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x894066_IDX_CD_SkillG, x894066_SkillCD_G )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x894066_IDX_CD_SkillH, x894066_SkillCD_H )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x894066_IDX_CD_SkillI, x894066_SkillCD_I )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x894066_IDX_CD_SkillJ, x894066_SkillCD_J )

	MonsterAI_SetIntParamByIndex( sceneId, selfId, x894066_IDX_CD_Talk, 0 )
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x894066_IDX_CombatFlag, 0 )

	--������������FH��buff....
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0, nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		if LuaFnIsObjValid(sceneId, nHumanId) == 1 and LuaFnIsCanDoScriptLogic(sceneId, nHumanId) == 1 then
			LuaFnCancelSpecificImpact( sceneId, nHumanId, x894066_BuffID_F1 )
			LuaFnCancelSpecificImpact( sceneId, nHumanId, x894066_BuffID_H )
		end
	end

	--�������������еĹ�....Ѱ���ֵܲ�����ɾ��....
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if "�ظ�ţ��" == GetName( sceneId, MonsterId ) then
			LuaFnDeleteMonster( sceneId, MonsterId )
		end
	end

end


--**********************************
--FH��������....
--**********************************
function x894066_TickSkillFH( sceneId, selfId, nTick )

	--���¼���CD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x894066_IDX_CD_SkillFH )
	if cd > nTick then

		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894066_IDX_CD_SkillFH, cd-nTick )
		return 0

	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894066_IDX_CD_SkillFH, x894066_SkillCD_FH-(nTick-cd) )
		return x894066_UseSkillF( sceneId, selfId )
	end

end


--**********************************
--G��������....
--**********************************
function x894066_TickSkillG( sceneId, selfId, nTick )

	local CurPercent = GetHp( sceneId, selfId ) / GetMaxHp( sceneId, selfId )
	if CurPercent > 0.8333 then
		return 0
	end

	--���¼���CD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x894066_IDX_CD_SkillG )
	if cd > nTick then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894066_IDX_CD_SkillG, cd-nTick )
		return 0
	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894066_IDX_CD_SkillG, x894066_SkillCD_G-(nTick-cd) )
		return x894066_UseSkillG( sceneId, selfId )
	end

end

--**********************************
--H��������....
--**********************************
function x894066_TickSkillH( sceneId, selfId, nTick )

	local CurPercent = GetHp( sceneId, selfId ) / GetMaxHp( sceneId, selfId )
	if CurPercent > 0.6333 then
		return 0
	end

	--���¼���CD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x894066_IDX_CD_SkillH )
	if cd > nTick then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894066_IDX_CD_SkillH, cd-nTick )
		return 0
	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894066_IDX_CD_SkillH, x894066_SkillCD_H-(nTick-cd) )
		return x894066_UseSkillH( sceneId, selfId )
	end

end

--**********************************
--I��������....
--**********************************
function x894066_TickSkillI( sceneId, selfId, nTick )
	local CurPercent = GetHp( sceneId, selfId ) / GetMaxHp( sceneId, selfId )
	if CurPercent > 0.5333 then
		return 0
	end
	--���¼���CD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x894066_IDX_CD_SkillI )
	if cd > nTick then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894066_IDX_CD_SkillI, cd-nTick )
		return 0
	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894066_IDX_CD_SkillI, x894066_SkillCD_I-(nTick-cd) )
		return x894066_UseSkillI( sceneId, selfId )
	end

end

--**********************************
--I��������....
--**********************************
function x894066_TickSkillJ( sceneId, selfId, nTick )

	local CurPercent = GetHp( sceneId, selfId ) / GetMaxHp( sceneId, selfId )
	if CurPercent > 0.3333 then
		return 0
	end

	--���¼���CD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x894066_IDX_CD_SkillJ )
	if cd > nTick then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894066_IDX_CD_SkillJ, cd-nTick )
		return 0
	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894066_IDX_CD_SkillJ, x894066_SkillCD_J-(nTick-cd) )
		return x894066_UseSkillJ( sceneId, selfId )
	end

end

--**********************************
--ʹ��F����....
--**********************************
function x894066_UseSkillF( sceneId, selfId )

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
	LuaFnUnitUseSkill( sceneId, selfId, x894066_SkillID_F, PlayerId, x, z, 0, 1 )

	--����Ҽӽ�����ص��ű���buff....
	LuaFnSendSpecificImpactToUnit( sceneId, PlayerId, PlayerId, PlayerId, x894066_BuffID_F1, 0 )
	LuaFnUnitUseSkill( sceneId, selfId, x894066_SkillID_F2, selfId, x, z, 0, 1 )

	return 1

end


--**********************************
--ʹ��G����....
--**********************************
function x894066_UseSkillG( sceneId, selfId )


	CallScriptFunction((200060), "Paopao",sceneId, "Da Lu�t Di�m", "Binh Th�nh K� Tr�n", "V�n Thi�n H�a L�u. Xem ta �t c�c ng߽i th�nh tro n�y..." )
	CallScriptFunction( x894066_g_FuBenScriptId, "TipAllHuman", sceneId, "Tr�n D�ng ��o Nh�n: Sau khi tr�n ph�p V�n Thi�n H�a L�u ���c k�ch ho�t, c�c v� ph�i nhanh ch�ng t�m n�i Th�y Tr�ch m�nh � tr�nh b� li�t h�a x�m h�i c� th�." )

	--ʹ�ÿռ���....
	local x,z = GetWorldPos( sceneId, selfId )
	LuaFnUnitUseSkill( sceneId, selfId, x894066_SkillID_G, selfId, x, z, 0, 1 )
	CreateSpecialObjByDataIndex(sceneId, selfId, 189, 200, 184, 0)
	CallScriptFunction( x894066_g_FuBenScriptId, "OpenBQZTimer", sceneId, 15, x894066_g_ScriptId, -1 ,-1 )

	return 1

end


--**********************************
--ʹ��H����....
--**********************************
function x894066_UseSkillH( sceneId, selfId )

	--ʹ�ÿռ���....
		local x,z = GetWorldPos( sceneId, selfId )
		LuaFnUnitUseSkill( sceneId, selfId, x894066_SkillID_H, selfId, x, z, 0, 1 )

		CallScriptFunction((200060), "Paopao",sceneId, "Da Lu�t Di�m", "Binh Th�nh K� Tr�n", "иa H�a Ph�n Thi�n C߾c. Nh�n c�c ng߽i th� kia l�m sao c� th� ch�y tho�t ���c?" )
		CallScriptFunction( x894066_g_FuBenScriptId, "TipAllHuman", sceneId, "Tr�n D�ng ��o Nh�n: иa H�a Ph�n Thi�n C߾c do Da Lu�t Di�m b�y ra � ngay d߾i �t r�t nhi�u. C�c v� n�n ch� � c�n th�n, nguy hi�m v� c�ng!" )

		local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
		for i=0, nHumanCount-1 do
			local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
			if LuaFnIsObjValid(sceneId, nHumanId) == 1 and LuaFnIsCanDoScriptLogic(sceneId, nHumanId) == 1 and LuaFnIsCharacterLiving(sceneId, nHumanId) == 1 then
				x,z = GetWorldPos( sceneId, nHumanId )
				CreateSpecialObjByDataIndex(sceneId, selfId, x894066_SkillD_SpecObj, x, z, 0)
			end
		end

	return 1

end


--**********************************
--ʹ��I����....
--**********************************
function x894066_UseSkillI( sceneId, selfId )

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

	--���Լ�ʹ��һ���ռ���....
	local x,z = GetWorldPos( sceneId, selfId )
	LuaFnUnitUseSkill( sceneId, selfId, x894066_SkillID_I, selfId, x, z, 0, 1 )

	x,z = GetWorldPos( sceneId,selfId )
	local MstIdA = CallScriptFunction( x894066_g_FuBenScriptId, "CreateBOSS", sceneId, "HuoNiu_BOSS", x, z )
	LuaFnSendSpecificImpactToUnit( sceneId, MstIdA, PlayerIdA, MstIdA, 19443, 0 )

	local x,z = GetWorldPos( sceneId, selfId )
	local MstIdC = CallScriptFunction( x894066_g_FuBenScriptId, "CreateBOSS", sceneId, "HuoNiu_BOSS", x, z )
	LuaFnSendSpecificImpactToUnit( sceneId, MstIdC, PlayerIdA, MstIdC, 19443, 0 )

	local x,z = GetWorldPos( sceneId, selfId )
	local MstIdB = CallScriptFunction( x894066_g_FuBenScriptId, "CreateBOSS", sceneId, "HuoNiu_BOSS", x, z )
	LuaFnSendSpecificImpactToUnit( sceneId, MstIdB, PlayerIdB, MstIdB, 19443, 0 )

	local x,z = GetWorldPos( sceneId, selfId )
	local MstIdD = CallScriptFunction( x894066_g_FuBenScriptId, "CreateBOSS", sceneId, "HuoNiu_BOSS", x, z )
	LuaFnSendSpecificImpactToUnit( sceneId, MstIdD, PlayerIdB, MstIdD, 19443, 0 )

	CallScriptFunction((200060), "Paopao",sceneId, "Da Lu�t Di�m", "Binh Th�nh K� Tr�n", "H�a Ng�u S�t Tr�n. #c2ebeff"..GetName( sceneId, PlayerIdA )..", "..GetName( sceneId, PlayerIdB ).."#W c�c ng߽i �� d�nh H�a Ng�u c�a ta th� kh�ng l�u s� g�p M�nh B� th�i..." )
	CallScriptFunction( x894066_g_FuBenScriptId, "TipAllHuman", sceneId, "Tr�n D�ng ��o Nh�n: H�a Ng�u �� xu�t hi�n, c�c v� anh h�ng h�y khoan �i ph� v�i Da Lu�t Di�m. Ti�u di�t H�a Ng�u Tr߾c th� s� tr�nh ���c th߽ng t�n l�n ��." )

	return 1

end

--**********************************
--ʹ��J����....
--**********************************
function x894066_UseSkillJ( sceneId, selfId )

	CallScriptFunction((200060), "Paopao",sceneId, "Da Lu�t Di�m", "Binh Th�nh K� Tr�n", "��i Li�u Vi�m D߽ng, Th�c Ph� Thi�n H�, Th߽ng Sinh Chi M�c, Giai T߽ng Th�t Minh..." )
	CallScriptFunction( x894066_g_FuBenScriptId, "TipAllHuman", sceneId, "Tr�n D�ng ��o Nh�n: C�c v� �� b� H�a Di�u l�m m� hai m�t t�m th�i di chuy�n h�n lo�n kh�ng l�m ch� ���c b�n th�n." )

	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0, nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		if LuaFnIsObjValid(sceneId, nHumanId) == 1 and LuaFnIsCanDoScriptLogic(sceneId, nHumanId) == 1 and LuaFnIsCharacterLiving(sceneId, nHumanId) == 1 then
			x,z = GetWorldPos( sceneId, selfId )
			LuaFnUnitUseSkill( sceneId, selfId, x894066_SkillID_J, nHumanId, x, z, 0, 1 )
		end
	end

	--����ʹ�ü���....
	local x,z = GetWorldPos( sceneId, PlayerId )
	LuaFnUnitUseSkill( sceneId, selfId, x894066_SkillID_J2, selfId, x, z, 0, 1 )

	CallScriptFunction((200060), "Paopao",sceneId, "Da Lu�t Di�m", "Binh Th�nh K� Tr�n", "B�ch M�ch Th�ng Huy�n, Phi H�a L�u Tinh, Thi�n H�a H�ng Th�, S�t Ph�t Ch�ng Sinh, xem t�n n�o c� th� ch�y tho�t?" )
	CallScriptFunction( x894066_g_FuBenScriptId, "TipAllHuman", sceneId, "Tr�n D�ng ��o Nh�n: Phi H�a L�u Tinh s�p h�p nh�t, c�c v� anh h�ng h�y t�p trung ph� h�y n� tr߾c khi n� b�c ph�t..." )

	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0, nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		if LuaFnIsObjValid(sceneId, nHumanId) == 1 and LuaFnIsCanDoScriptLogic(sceneId, nHumanId) == 1 and LuaFnIsCharacterLiving(sceneId, nHumanId) == 1 then
			--����Ҽӽ�����ص��ű���buff....
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, nHumanId, x894066_BuffID_J2, 0 )
		end
	end

	return 1

end

--**********************************
--���׺��̻���buff������ʱ��ص����ӿ�....
--**********************************
function x894066_OnImpactFadeOut( sceneId, selfId, impactId )

	--Ѱ��BOSS....
	local bossId = -1
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if x894066_MyName == GetName( sceneId, MonsterId ) then
			bossId = MonsterId
		end
	end

	--û�ҵ��򷵻�....
	if bossId == -1 then
		return
	end

	--����ǰ��׵�buff....����BOSS����������Ҽ�һ���˺���buff������....
	if impactId == x894066_BuffID_J2 then

		local x = 0
		local z = 0
		local xx = 0
		local zz = 0
		local count = 0

		x,z = GetWorldPos( sceneId,selfId )
		local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
		for i=0, nHumanNum-1  do
			local PlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
			if LuaFnIsObjValid(sceneId, PlayerId) == 1 and LuaFnIsCanDoScriptLogic(sceneId, PlayerId) == 1 and LuaFnIsCharacterLiving(sceneId, PlayerId) == 1 and PlayerId ~= selfId then
				xx,zz = GetWorldPos(sceneId,PlayerId)
				if (x-xx)*(x-xx) + (z-zz)*(z-zz) < 10*10 then
					count = count + 1
				end
			end
		end

		if count == 0 then
		    LuaFnSendSpecificImpactToUnit( sceneId, bossId, bossId, selfId, 19434, 0 )
		elseif count == 1 then
		    LuaFnSendSpecificImpactToUnit( sceneId, bossId, bossId, selfId, 19392, 0 )
		elseif count == 2 then
		    LuaFnSendSpecificImpactToUnit( sceneId, bossId, bossId, selfId, 19393, 0 )
		elseif count == 3 then
		    LuaFnSendSpecificImpactToUnit( sceneId, bossId, bossId, selfId, 19394, 0 )
		elseif count == 4 then
		    LuaFnSendSpecificImpactToUnit( sceneId, bossId, bossId, selfId, 19395, 0 )
		elseif count == 5 then
		    LuaFnSendSpecificImpactToUnit( sceneId, bossId, bossId, selfId, 19396, 0 )
		elseif count == 6 then
		    LuaFnSendSpecificImpactToUnit( sceneId, bossId, bossId, selfId, 19397, 0 )
		elseif count == 7 then
		    LuaFnSendSpecificImpactToUnit( sceneId, bossId, bossId, selfId, 19398, 0 )
		elseif count == 8 then
		    LuaFnSendSpecificImpactToUnit( sceneId, bossId, bossId, selfId, 19399, 0 )
		elseif count == 9 then
		    LuaFnSendSpecificImpactToUnit( sceneId, bossId, bossId, selfId, 19400, 0 )
		elseif count == 10 then
		    LuaFnSendSpecificImpactToUnit( sceneId, bossId, bossId, selfId, 19401, 0 )
		elseif count == 11 then
		    LuaFnSendSpecificImpactToUnit( sceneId, bossId, bossId, selfId, 19402, 0 )
		end

		return

	end

end

--**********************************
--��翷��ʱ����OnTimer....
--**********************************
function x894066_OnBQZTimer( sceneId, step, data1, data2 )

	--Ѱ��BOSS....
	local bossId = -1
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if GetName( sceneId, MonsterId ) == "Da Lu�t Di�m" then
			bossId = MonsterId
		end
	end

	--û�ҵ��򷵻�....
	if bossId == -1 then
		return
	end

	if 15 == step then
		CallScriptFunction( x894066_g_FuBenScriptId, "TipAllHuman", sceneId, "15 gi�y sau s� b�c ph�t Phi H�a L�u Tinh!" )
		return
	end

	if 13 == step then
		CallScriptFunction( x894066_g_FuBenScriptId, "TipAllHuman", sceneId, "13 gi�y sau s� b�c ph�t Phi H�a L�u Tinh!" )
		return
	end

	if 10 == step then
		CallScriptFunction( x894066_g_FuBenScriptId, "TipAllHuman", sceneId, "10 gi�y sau s� b�c ph�t Phi H�a L�u Tinh!" )
		return
	end

	if 7 == step then
		CallScriptFunction( x894066_g_FuBenScriptId, "TipAllHuman", sceneId, "7 gi�y sau s� b�c ph�t Phi H�a L�u Tinh!" )
		return
	end

	if 6 == step then
		CallScriptFunction( x894066_g_FuBenScriptId, "TipAllHuman", sceneId, "6 gi�y sau s� b�c ph�t Phi H�a L�u Tinh!" )
		return
	end

	if 5 == step then
		CallScriptFunction( x894066_g_FuBenScriptId, "TipAllHuman", sceneId, "5 gi�y sau s� b�c ph�t Phi H�a L�u Tinh!" )
		return
	end

	if 4 == step then
		CallScriptFunction( x894066_g_FuBenScriptId, "TipAllHuman", sceneId, "4 gi�y sau s� b�c ph�t Phi H�a L�u Tinh!" )
		return
	end

	if 3 == step then
		CallScriptFunction( x894066_g_FuBenScriptId, "TipAllHuman", sceneId, "3 gi�y sau s� b�c ph�t Phi H�a L�u Tinh!" )
		return
	end

	if 2 == step then
		--��ʾս����ʼ....
		CallScriptFunction( x894066_g_FuBenScriptId, "TipAllHuman", sceneId, "2 gi�y sau s� b�c ph�t Phi H�a L�u Tinh!" )
		return
	end

	if 1 == step then
		--�˺�....
		local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
		for i=0, nHumanCount-1 do
			local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
			if LuaFnIsObjValid(sceneId, nHumanId) == 1 and LuaFnIsCanDoScriptLogic(sceneId, nHumanId) == 1 and LuaFnIsCharacterLiving(sceneId, nHumanId) == 1 then
				LuaFnSendSpecificImpactToUnit( sceneId, bossId, bossId, nHumanId, 19434, 0 )
			end
		end
		return
	end

end

