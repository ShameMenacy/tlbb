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
x894069_g_ScriptId	= 894069

--�����߼��ű���....
x894069_g_FuBenScriptId = 894063

--����Buff....
x894069_Buff_MianYi1	= 10472	--����һЩ����Ч��....
x894069_Buff_MianYi2	= 10471	--������ͨ����....

--����....
x894069_SkillID_F		= 1820  --��ͨ����
x894069_SkillID_F2		= 1821
x894069_BuffID_F		= 19451

--ʯ��
x894069_SkillID_G		= 1822

x894069_SkillID_H		= 1823
x894069_BuffID_H		= 19741

x894069_SkillID_I		= 1036
x894069_BuffID_I1		= 10253
x894069_BuffID_I2		= 10254

x894069_SkillID_J		= 1824
x894069_BuffID_J		= 19434

x894069_SkillCD_FH	=	8000
x894069_SkillCD_G		=	45000
x894069_SkillCD_J	=	31000
x894069_SkillCD_H		=	60000
x894069_SkillCD_K	=	5000


x894069_MyName			= "Gia Lu�t Li�n Th�nh"	--�Լ�������....

--AI Index....
x894069_IDX_KuangBaoMode	= 1	--��ģʽ....0δ�� 1��Ҫ����� 2�Ѿ������
x894069_IDX_CD_SkillFH		= 2	--FH���ܵ�CD....
x894069_IDX_CD_SkillG			= 3	--G���ܵ�CD....
x894069_IDX_CD_Talk				= 4	--FH���ܺ�����CD....
x894069_IDX_CD_SkillJ			= 5	--G���ܵ�CD....
x894069_IDX_CD_SkillH			= 6	--G���ܵ�CD....
x894069_IDX_CD_SkillK			= 7	--G���ܵ�CD....

x894069_IDX_CombatFlag 		= 1	--�Ƿ���ս��״̬�ı�־....

x894069_LootItem_1 = {
39910001, 39910002, 39910003, 
}

x894069_LootItem_2 = {
20310184,
}
--**********************************
--��ʼ��....
--**********************************
function x894069_OnInit(sceneId, selfId)
	--����AI....
	x894069_ResetMyAI( sceneId, selfId )
end


--**********************************
--����....
--**********************************
function x894069_OnHeartBeat(sceneId, selfId, nTick)

	--����ǲ�������....
	if LuaFnIsCharacterLiving(sceneId, selfId) ~= 1 then
		return
	end

	--����Ƿ���ս��״̬....
	if 0 == MonsterAI_GetBoolParamByIndex( sceneId, selfId, x894069_IDX_CombatFlag ) then
		return
	end

	--FH��������....
	if 1 == x894069_TickSkillFH( sceneId, selfId, nTick ) then
		return
	end

	--G��������....
	if 1 == x894069_TickSkillG( sceneId, selfId, nTick ) then
		return
	end

	--H��������....
	if 1 == x894069_TickSkillH( sceneId, selfId, nTick ) then
		return
	end

	--I��������....
	if 1 == x894069_TickSkillI( sceneId, selfId, nTick ) then
		return
	end

	--J��������....
	if 1 == x894069_TickSkillJ( sceneId, selfId, nTick ) then
		return
	end

	--K��������....
	if 1 == x894069_TickSkillK( sceneId, selfId, nTick ) then
		return
	end
end


--**********************************
--����ս��....
--**********************************
function x894069_OnEnterCombat(sceneId, selfId, enmeyId)

	--�ӳ�ʼbuff....
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x894069_Buff_MianYi1, 0 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x894069_Buff_MianYi2, 0 )

	--����AI....
	x894069_ResetMyAI( sceneId, selfId )

	--���ý���ս��״̬....
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x894069_IDX_CombatFlag, 1 )

end


--**********************************
--�뿪ս��....
--**********************************
function x894069_OnLeaveCombat(sceneId, selfId)

	--����AI....
	x894069_ResetMyAI( sceneId, selfId )

	--ɾ���Լ�....
	LuaFnDeleteMonster( sceneId, selfId )

	--�����Ի�NPC....
	local MstId = CallScriptFunction( x894069_g_FuBenScriptId, "CreateBOSS", sceneId, "LiFan_NPC", -1, -1 )
	SetUnitReputationID( sceneId, MstId, MstId, 0 )
end


--**********************************
--ɱ������....
--**********************************
function x894069_OnKillCharacter(sceneId, selfId, targetId)

end


--**********************************
--����....
--**********************************
function x894069_OnDie( sceneId, selfId, killerId )

	--����AI....
	x894069_ResetMyAI( sceneId, selfId )

	--�����Ѿ���ս������ˮ....
	CallScriptFunction( x894069_g_FuBenScriptId, "SetBossBattleFlag", sceneId, "YeLvLian", 2 )

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
		str = format("��nh b�i #GGia Lu�t Li�n Th�nh#W nh�ng #{_INFOUSR%s}#P v� t� �i v�n c�n thoang tho�ng s� h�i. H�y c�n �ang th� d�i th� vi�n Th�ch Ti�t tr߾c m�t v� v�n ra, b�n trong ch�a m�t c�i B�o S߽ng qu� gi�...", playerName); --����ˮ
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

			local WuPin = random( getn(x894069_LootItem_1) )
			AddMonsterDropItem( sceneId, selfId, mems[i], x894069_LootItem_1[WuPin] )
			AddMonsterDropItem( sceneId, selfId, mems[i], 39910001 )
			AddMonsterDropItem( sceneId, selfId, mems[i], 20310184 )

			rand = random(100)
			if rand < 80 then
				AddMonsterDropItem( sceneId, selfId, mems[i], 39910001 )--Ԫ��1W
			end

			rand = random(100)
			if rand < 60 then
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
			if rand < 80 then
				local WuPin = random( getn(x894069_LootItem_2) )
				AddMonsterDropItem( sceneId, selfId, mems[i], x894069_LootItem_2[WuPin]  )

			end

			rand = random(100)
			if rand < 60 then
				AddMonsterDropItem( sceneId, selfId, mems[i], 20310184 )--ħ��
			end

		end
	end

end


--**********************************
--����AI....
--**********************************
function x894069_ResetMyAI( sceneId, selfId )

	--���ò���....
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x894069_IDX_KuangBaoMode, 0 )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x894069_IDX_CD_SkillFH, x894069_SkillCD_FH )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x894069_IDX_CD_SkillG, x894069_SkillCD_G )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x894069_IDX_CD_SkillJ, x894069_SkillCD_J )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x894069_IDX_CD_SkillH, x894069_SkillCD_H )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x894069_IDX_CD_SkillK, x894069_SkillCD_K )

	MonsterAI_SetIntParamByIndex( sceneId, selfId, x894069_IDX_CD_Talk, 0 )
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x894069_IDX_CombatFlag, 0 )

	--������������FH��buff....
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0, nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		if LuaFnIsObjValid(sceneId, nHumanId) == 1 and LuaFnIsCanDoScriptLogic(sceneId, nHumanId) == 1 then
			LuaFnCancelSpecificImpact( sceneId, nHumanId, x894069_BuffID_F1 )
			LuaFnCancelSpecificImpact( sceneId, nHumanId, x894069_BuffID_H )
		end
	end

end


--**********************************
--FH��������....
--**********************************
function x894069_TickSkillFH( sceneId, selfId, nTick )

	--���¼���CD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x894069_IDX_CD_SkillFH )
	if cd > nTick then

		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894069_IDX_CD_SkillFH, cd-nTick )
		return 0

	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894069_IDX_CD_SkillFH, x894069_SkillCD_FH-(nTick-cd) )
		return x894069_UseSkillF( sceneId, selfId )
	end

end


--**********************************
--G��������....
--**********************************
function x894069_TickSkillG( sceneId, selfId, nTick )

	local CurPercent = GetHp( sceneId, selfId ) / GetMaxHp( sceneId, selfId )
	if CurPercent < 0.6666 then
		return 0
	end

	--���¼���CD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x894069_IDX_CD_SkillG )
	if cd > nTick then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894069_IDX_CD_SkillG, cd-nTick )
		return 0
	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894069_IDX_CD_SkillG, x894069_SkillCD_G-(nTick-cd) )
		return x894069_UseSkillG( sceneId, selfId )
	end

end

--**********************************
--H��������....
--**********************************
function x894069_TickSkillH( sceneId, selfId, nTick )

	local CurPercent = GetHp( sceneId, selfId ) / GetMaxHp( sceneId, selfId )
	if CurPercent > 0.6 then
		return 0
	end

	--���¼���CD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x894069_IDX_CD_SkillH )
	if cd > nTick then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894069_IDX_CD_SkillH, cd-nTick )
		return 0
	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894069_IDX_CD_SkillH, x894069_SkillCD_H-(nTick-cd) )
		return x894069_UseSkillH( sceneId, selfId )
	end

end

--**********************************
--J��������....
--**********************************
function x894069_TickSkillJ( sceneId, selfId, nTick )

	local CurPercent = GetHp( sceneId, selfId ) / GetMaxHp( sceneId, selfId )
	if CurPercent > 0.2 then
		return 0
	end

	--���¼���CD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x894069_IDX_CD_SkillJ )
	if cd > nTick then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894069_IDX_CD_SkillJ, cd-nTick )
		return 0
	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894069_IDX_CD_SkillJ, x894069_SkillCD_J-(nTick-cd) )
		return x894069_UseSkillJ( sceneId, selfId )
	end

end

--**********************************
--K��������....
--**********************************
function x894069_TickSkillK( sceneId, selfId, nTick )

	--���¼���CD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x894069_IDX_CD_SkillK )
	if cd > nTick then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894069_IDX_CD_SkillK, cd-nTick )
		return 0
	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894069_IDX_CD_SkillK, x894069_SkillCD_K-(nTick-cd) )
		return x894069_UseSkillK( sceneId, selfId )
	end

end
--**********************************
--I��������....
--**********************************
function x894069_TickSkillI( sceneId, selfId, nTick )

	--��õ�ǰ��mode....
	local CurMode = MonsterAI_GetIntParamByIndex( sceneId, selfId, x894069_IDX_KuangBaoMode )

	if CurMode == 0 or CurMode == 2 then

		--�������Ҫ�񱩻����Ѿ������򷵻�....
		return 0

	elseif CurMode == 1 then

		--�����Ҫ����ʹ�ÿ񱩼���....
		local ret =  x894069_UseSkillI( sceneId, selfId )
		if ret == 1 then
			MonsterAI_SetIntParamByIndex( sceneId, selfId, x894069_IDX_KuangBaoMode, 2 )
			return 1
		else
			return 0
		end

	end

end


--**********************************
--ʹ��F����....
--**********************************
function x894069_UseSkillF( sceneId, selfId )

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

	--���Լ�ʹ�ÿռ���....
	local x,z = GetWorldPos( sceneId, selfId )
	LuaFnUnitUseSkill( sceneId, selfId, x894069_SkillID_F, PlayerId, x, z, 0, 1 )

	--����Ҽӽ�����ص��ű���buff....
	LuaFnSendSpecificImpactToUnit( sceneId, PlayerId, PlayerId, PlayerId, x894069_BuffID_F, 0 )

	--���Լ�ʹ�ÿռ���....
	local x,z = GetWorldPos( sceneId, selfId )
	LuaFnUnitUseSkill( sceneId, selfId, x894069_SkillID_F2, selfId, x, z, 0, 1 )

	return 1

end


--**********************************
--ʹ��G����....
--**********************************
function x894069_UseSkillG( sceneId, selfId )

	--����ʹ�ü���....
	local x,z = GetWorldPos( sceneId, selfId )
	LuaFnUnitUseSkill( sceneId, selfId, x894069_SkillID_G, selfId, x, z, 0, 1 )

	CallScriptFunction((200060), "Paopao",sceneId, "Gia Lu�t Li�n Th�nh", "Binh Th�nh K� Tr�n", "Kim gi�p phi t�n, b�t �ng t�a s�n. C�c ng߽i chu�n b� n�m ��n c�a ta ��y!" )
	CallScriptFunction( x894069_g_FuBenScriptId, "TipAllHuman", sceneId, "Tr�n D�ng ��o Nh�n: Gia Lu�t Li�n Th�nh tri�u h�i S�n Tr�n. C�c v� ph�i ph� h�y ch�ng th�t nhanh. N�u kh�ng sau 30 gi�y ch�ng nh�ng c�c v� ph�i ch�u th߷ng t�n l�n m� b�n th�n Gia Lu�t Li�n Th�nh s� ���c h�i ph�c th� l�c..." )

	local MstIdA = CallScriptFunction( x894069_g_FuBenScriptId, "CreateBOSS", sceneId, "ShiDui_BOSSA", -1, -1 )
	LuaFnSendSpecificImpactToUnit( sceneId, MstIdA, MstIdA, MstIdA, 19457, 0 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 19459, 0 )
	SetCharacterDieTime( sceneId, MstIdA, 30000 )

	local MstIdB = CallScriptFunction( x894069_g_FuBenScriptId, "CreateBOSS", sceneId, "ShiDui_BOSSB", -1, -1 )
	LuaFnSendSpecificImpactToUnit( sceneId, MstIdB, MstIdB, MstIdB, 19457, 0 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 19459, 0 )
	SetCharacterDieTime( sceneId, MstIdB, 30000 )

	local MstIdC = CallScriptFunction( x894069_g_FuBenScriptId, "CreateBOSS", sceneId, "ShiDui_BOSSC", -1, -1 )
	LuaFnSendSpecificImpactToUnit( sceneId, MstIdC, MstIdC, MstIdC, 19457, 0 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 19459, 0 )
	SetCharacterDieTime( sceneId, MstIdC, 30000 )

	local MstIdD = CallScriptFunction( x894069_g_FuBenScriptId, "CreateBOSS", sceneId, "ShiDui_BOSSD", -1, -1 )
	LuaFnSendSpecificImpactToUnit( sceneId, MstIdD, MstIdD, MstIdD, 19457, 0 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 19459, 0 )
	SetCharacterDieTime( sceneId, MstIdD, 30000 )

	local MstIdE = CallScriptFunction( x894069_g_FuBenScriptId, "CreateBOSS", sceneId, "ShiDui_BOSSE", -1, -1 )
	LuaFnSendSpecificImpactToUnit( sceneId, MstIdE, MstIdE, MstIdE, 19458, 0 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 19459, 0 )
	SetCharacterDieTime( sceneId, MstIdE, 30000 )

	local MstIdF = CallScriptFunction( x894069_g_FuBenScriptId, "CreateBOSS", sceneId, "ShiDui_BOSSF", -1, -1 )
	LuaFnSendSpecificImpactToUnit( sceneId, MstIdF, MstIdF, MstIdF, 19458, 0 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 19459, 0 )
	SetCharacterDieTime( sceneId, MstIdF, 30000 )

	local MstIdG = CallScriptFunction( x894069_g_FuBenScriptId, "CreateBOSS", sceneId, "ShiDui_BOSSG", -1, -1 )
	LuaFnSendSpecificImpactToUnit( sceneId, MstIdG, MstIdG, MstIdG, 19458, 0 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 19459, 0 )
	SetCharacterDieTime( sceneId, MstIdG, 30000 )

	local MstIdH = CallScriptFunction( x894069_g_FuBenScriptId, "CreateBOSS", sceneId, "ShiDui_BOSSH", -1, -1 )
	LuaFnSendSpecificImpactToUnit( sceneId, MstIdH, MstIdH, MstIdH, 19458, 0 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 19459, 0 )
	SetCharacterDieTime( sceneId, MstIdH, 30000 )

       --�Լ�����
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 19452, 0 )

	return 1

end


--**********************************
--ʹ��H����....
--**********************************
function x894069_UseSkillH( sceneId, selfId )

	--����ʹ�ü���....
	local x,z = GetWorldPos( sceneId, selfId )
	LuaFnUnitUseSkill( sceneId, selfId, x894069_SkillID_H, selfId, x, z, 0, 1 )

	CallScriptFunction((200060), "Paopao",sceneId, "Gia Lu�t Li�n Th�nh", "Binh Th�nh K� Tr�n", "N�i non tr�ng �i�p, phong h�a v�n ni�n, c�c ng߽i �� d�nh v�o v�ng v�y th� ��ng c� tr�ch s� ki�p �� an b�i..." )
	CallScriptFunction( x894069_g_FuBenScriptId, "TipAllHuman", sceneId, "Tr�n D�ng ��o Nh�n: Gia Lu�t Li�n Th�nh - Thi�t C�t ch� c� th� d�ng N�i C�ng g�y th߽ng t�n c�n Gia Lu�t Li�n Th�nh - Nguy�n Th�n c�ng ch� nh�n s�t th߽ng Ngo�i C�ng m� th�i..." )
	CallScriptFunction( x894069_g_FuBenScriptId, "TipAllHuman", sceneId, "Tr�n D�ng ��o Nh�n: Trong tr�n ph�p n�y, Gia Lu�t Li�n Th�nh - Thi�t C�t c�c v� c� th� d�ng N�i C�ng K�ch � nh�n d�ng, c�n Gia Lu�t Li�n Th�nh - Nguy�n Th�n th� h�y d�ng Ngo�i C�ng K�ch nh�n d�ng..." )
	CallScriptFunction( x894069_g_FuBenScriptId, "TipAllHuman", sceneId, "Tr�n D�ng ��o Nh�n: Trong v�ng 60 gi�y ��nh b�i ph�n th�n c�a Gia Lu�t Li�n Th�nh s� khi�n h�n ��i th߽ng, nh�n th߽ng t�n c�c l�n. C�c v� h�y c� g�ng l�n!" )

	local x,z = GetWorldPos( sceneId, selfId )
	local MstIdI = CallScriptFunction( x894069_g_FuBenScriptId, "CreateBOSS", sceneId, "TieGu_BOSS", x, z )
	LuaFnSendSpecificImpactToUnit( sceneId, MstIdI, MstIdI, MstIdI, 19457, 0 )

	local x,z = GetWorldPos( sceneId, selfId )
	local MstIdJ = CallScriptFunction( x894069_g_FuBenScriptId, "CreateBOSS", sceneId, "YuanShen_BOSS", x, z )
	LuaFnSendSpecificImpactToUnit( sceneId, MstIdJ, MstIdJ, MstIdJ, 19458, 0 )

	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 19453, 0 )

	local MstIdK = CallScriptFunction( x894069_g_FuBenScriptId, "CreateBOSS", sceneId, "TieFuZhen_BOSS", -1, -1 )
	LuaFnSendSpecificImpactToUnit( sceneId, MstIdK, MstIdK, MstIdK, 19466, 0 )
	SetCharacterDieTime( sceneId, MstIdK, 60000 )

	local MstIdL = CallScriptFunction( x894069_g_FuBenScriptId, "CreateBOSS", sceneId, "YuanFuZhen_BOSS", -1, -1 )
	LuaFnSendSpecificImpactToUnit( sceneId, MstIdL, MstIdL, MstIdL, 19467, 0 )
	SetCharacterDieTime( sceneId, MstIdL, 60000 )

	return 1

end

--**********************************
--ʹ��J����....
--**********************************
function x894069_UseSkillJ( sceneId, selfId )

	CallScriptFunction((200060), "Paopao",sceneId, "Gia Lu�t Li�n Th�nh", "Binh Th�nh K� Tr�n", "N�i non tr�ng �i�p. C�c ng߽i th�t khinh ng߶i qu� ��ng. H�m nay c�c ng߽i s� b� ch�n v�i m�i m�i trong l�ng nh�ng ng�n n�i n�y..." )
	CallScriptFunction( x894069_g_FuBenScriptId, "TipAllHuman", sceneId, "Tr�n D�ng ��o Nh�n: N�u trong 30 gi�y kh�ng ��nh ch�t Gia Lu�t Li�n Th�nh th� h�n s� tri�u h�i tr�n ph�p S�n H�p, l�c �� ch�ng ta s� t�ng m�ng n�i ��y..." )

	--���Լ�ʹ�ÿռ���....
	local x,z = GetWorldPos( sceneId, selfId )
	LuaFnUnitUseSkill( sceneId, selfId, x894069_SkillID_J, selfId, x, z, 0, 1 )

	CallScriptFunction( x894069_g_FuBenScriptId, "OpenBQZTimer", sceneId, 30, x894069_g_ScriptId, -1 ,-1 )

	return 1


end

--**********************************
--ʹ��I����....
--**********************************
function x894069_UseSkillK( sceneId, selfId )

	local nCount = GetMonsterCount(sceneId)
	for i=0, nCount-1  do
		local nObjId = GetMonsterObjID(sceneId, i)
		local MosDataID = GetMonsterDataID( sceneId, nObjId )
		if MosDataID == 15085 or MosDataID == 15100 then
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 19453, 0 )
		end
	end

	return 1

end

--**********************************
--ʹ��I����....
--**********************************
function x894069_UseSkillI( sceneId, selfId )

	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x894069_BuffID_I1, 5000 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x894069_BuffID_I2, 5000 )

	local x,z = GetWorldPos( sceneId, selfId )
	LuaFnUnitUseSkill( sceneId, selfId, x894069_SkillID_I, selfId, x, z, 0, 1 )

	CallScriptFunction( x894069_g_FuBenScriptId, "TipAllHuman", sceneId,  "#{PMF_20080530_02}" )

	return 1

end


--**********************************
--���׺��̻���buff������ʱ��ص����ӿ�....
--**********************************
function x894069_OnImpactFadeOut( sceneId, selfId, impactId )

	--Ѱ��BOSS....
	local bossId = -1
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if x894069_MyName == GetName( sceneId, MonsterId ) then
			bossId = MonsterId
		end
	end

	--û�ҵ��򷵻�....
	if bossId == -1 then
		return
	end

	--������̻���buff����BOSS����....
	if impactId == 19459 then

		x,z = GetWorldPos( sceneId,selfId )
		CreateSpecialObjByDataIndex(sceneId, bossId, 192, x, z, 0)

		local bok = 0
		local nMonsterNum = GetMonsterCount( sceneId )
		for i=0, nMonsterNum-1 do
			local MonsterId = GetMonsterObjID(sceneId, i)
			if GetName(sceneId, MonsterId) == "ʯ��" and LuaFnIsCharacterLiving(sceneId, MonsterId) == 1 then
		          bok = 1
			end
		end

	       if bok == 1 then
			local nMonsterNum = GetMonsterCount( sceneId )
			for i=0, nMonsterNum-1 do
				local MonsterId = GetMonsterObjID(sceneId, i)
				if GetName(sceneId, MonsterId) == "Gia Lu�t Li�n Th�nh" and LuaFnIsCharacterLiving(sceneId, MonsterId) == 1 then
				 	 LuaFnSendSpecificImpactToUnit(sceneId, MonsterId, MonsterId, MonsterId, 19461, 0)
				end
			end
		end

		return
	end

end

--**********************************
--��翷��ʱ����OnTimer....
--**********************************
function x894069_OnBQZTimer( sceneId, step, data1, data2 )
	--Ѱ��BOSS....
	local bossId = -1
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if GetName( sceneId, MonsterId ) == "Gia Lu�t Li�n Th�nh" then
			bossId = MonsterId
		end
	end

	--û�ҵ��򷵻�....
	if bossId == -1 then
		return
	end
	if 30 == step then
		CallScriptFunction( x894069_g_FuBenScriptId, "TipAllHuman", sceneId, "Tr�n D�ng ��o Nh�n: C�n 30 gi�y � ��nh ch�t Gia Lu�t Li�n Th�nh!" )
		return
	end

	if 20 == step then
		CallScriptFunction( x894069_g_FuBenScriptId, "TipAllHuman", sceneId, "Tr�n D�ng ��o Nh�n: C�n 20 gi�y � ��nh ch�t Gia Lu�t Li�n Th�nh!" )
		return
	end

	if 15 == step then
		CallScriptFunction( x894069_g_FuBenScriptId, "TipAllHuman", sceneId, "Tr�n D�ng ��o Nh�n: C�n 15 gi�y � ��nh ch�t Gia Lu�t Li�n Th�nh!" )
		return
	end

	if 10 == step then
		CallScriptFunction( x894069_g_FuBenScriptId, "TipAllHuman", sceneId, "Tr�n D�ng ��o Nh�n: C�n 10 gi�y � ��nh ch�t Gia Lu�t Li�n Th�nh!" )
		return
	end

	if 6 == step then
		CallScriptFunction( x894069_g_FuBenScriptId, "TipAllHuman", sceneId, "Tr�n D�ng ��o Nh�n: C�n 6 gi�y � ��nh ch�t Gia Lu�t Li�n Th�nh!" )
		return
	end

	if 5 == step then
		CallScriptFunction( x894069_g_FuBenScriptId, "TipAllHuman", sceneId, "Tr�n D�ng ��o Nh�n: C�n 5 gi�y � ��nh ch�t Gia Lu�t Li�n Th�nh!" )
		return
	end

	if 4 == step then
		CallScriptFunction( x894069_g_FuBenScriptId, "TipAllHuman", sceneId, "Tr�n D�ng ��o Nh�n: C�n 4 gi�y � ��nh ch�t Gia Lu�t Li�n Th�nh!" )
		return
	end

	if 3 == step then
		CallScriptFunction( x894069_g_FuBenScriptId, "TipAllHuman", sceneId, "Tr�n D�ng ��o Nh�n: C�n 3 gi�y � ��nh ch�t Gia Lu�t Li�n Th�nh!" )
		return
	end

	if 2 == step then
		--��ʾս����ʼ....
		CallScriptFunction( x894069_g_FuBenScriptId, "TipAllHuman", sceneId, "Tr�n D�ng ��o Nh�n: C�n 2 gi�y � ��nh ch�t Gia Lu�t Li�n Th�nh!" )
		return
	end

	if 1 == step then
		CallScriptFunction((200060), "Paopao",sceneId, "Gia Lu�t Li�n Th�nh", "Binh Th�nh K� Tr�n", "K�t th�nh tr�n ph�p. Th�n th�c thi�n �a, v�n v�t t�nh t�c. C�c ng߽i ch�t �i!" )
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
