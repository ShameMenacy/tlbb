--Ʈ��� ����ˮAI

--A ��С���๦�����Լ��ø��ռ���....�ٸ������һ�����ʧ��....
--B �����衿���Լ���һ���ռ���....������15s�����θ�ȫ������Ҽ��˺�ֵ�𽥼Ӵ���˺�buff....
--C �����ѡ����Լ���һ����buff�ļ���....
--D �����������Լ��ø��ռ���....�ٸ��������ҽ��·Ÿ�����....
--E ���񱩡����Լ��ӷ���buff....����ʹ����������....

--ȫ�̶����������ƶ����ܵ�buff....
--ս����ʼͬʱÿ��10����A����....
--��HP��Ϊ66%��33%ʱ�ֱ�ʹ��B����....B���ܵĳ���ʱ����....��������CD���˲�ʹ��....
--ÿ��20����C����....
--ÿ��20����D����....


--�ű���
x894064_g_ScriptId	= 894064

--�����߼��ű���....
x894064_g_FuBenScriptId = 894063

x894064_MyName			= "Ti�u D�t Phong"	--�Լ�������....

--�����ض�����buff....
x894064_Buff_MianYi1	= 10472	--����һЩ����Ч��....
x894064_Buff_MianYi2	= 10471	--������ͨ����....

--A����֮��....
x894064_SkillA_ID			= 1800
x894064_SkillA_Buff		=	19404
x894064_SkillA_CD			= 5000

--B����....
x894064_SkillB_ID		= 1803
x894064_SkillB_CD		= 22000


--C����....
x894064_SkillC_ID		= 1802
x894064_SkillC_CD		= 20000

--D����....
x894064_SkillD_ID		= 1801
x894064_SkillD_CD		= 20000
x894064_SkillD_SpecObj = 200
x894064_SkillD_Buff		=	19405

--E��....
x894064_SkillE_Buff1	= 10234
x894064_SkillE_Buff2	= 10235
--��ʼ�����״̬��ʱ��....
x894064_EnterKuangBaoTime	= 10*60*1000

--AI Index....
x894064_IDX_StopWatch						= 1	--���....
x894064_IDX_SkillA_CD						= 2	--A���ܵ�CDʱ��....
x894064_IDX_SkillB_HPStep				= 3	--Ѫ������....
x894064_IDX_SkillB_Step					= 4	--B���ܵ�Step....0=δ���� 15=buff1 14=buff2 ���� 1=buff15
x894064_IDX_SkillB_Type					= 5	--��ǰ����ʹ���������͵Ľ���....
x894064_IDX_SkillC_CD						= 6	--C���ܵ�CDʱ��....
x894064_IDX_SkillD_CD						= 7	--C���ܵ�CDʱ��....
x894064_IDX_KuangBaoTimer				= 8	--�񱩵ļ�ʱ��....
x894064_IDX_SkillB_CD						= 9	--C���ܵ�CDʱ��....


x894064_IDX_CombatFlag 			= 1	--�Ƿ���ս��״̬�ı�־....
x894064_IDX_IsKuangBaoMode	= 2	--�Ƿ��ڿ�ģʽ�ı�־....

x894064_LootItem_1 = {
39910001, 39910002, 39910003, 
}

x894064_LootItem_2 = {
20310184,
}
--**********************************
--��ʼ��....
--**********************************
function x894064_OnInit(sceneId, selfId)
	--����AI....
	x894064_ResetMyAI( sceneId, selfId )
end


--**********************************
--����....
--**********************************
function x894064_OnHeartBeat(sceneId, selfId, nTick)

	--����ǲ�������....
	if LuaFnIsCharacterLiving(sceneId, selfId) ~= 1 then
		return
	end

	--����Ƿ���ս��״̬....
	if 0 == MonsterAI_GetBoolParamByIndex( sceneId, selfId, x894064_IDX_CombatFlag ) then
		return
	end

	--��״̬����Ҫ���߼�....
	if 1 == MonsterAI_GetBoolParamByIndex( sceneId, selfId, x894064_IDX_IsKuangBaoMode ) then
		return
	end

	--A��������....
	if 1 == x894064_TickSkillA( sceneId, selfId, nTick ) then
		return
	end

	--B��������....
	if 1 == x894064_TickSkillB( sceneId, selfId, nTick ) then
		return
	end

	--C��������....
	if 1 == x894064_TickSkillC( sceneId, selfId, nTick ) then
		return
	end

	--D��������....
	if 1 == x894064_TickSkillD( sceneId, selfId, nTick ) then
		return
	end

	--E��������....
	if 1 == x894064_TickSkillE( sceneId, selfId, nTick ) then
		return
	end

	--�������....
	x894064_TickStopWatch( sceneId, selfId, nTick )

end


--**********************************
--����ս��....
--**********************************
function x894064_OnEnterCombat(sceneId, selfId, enmeyId)

	--�ӳ�ʼbuff....
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x894064_Buff_MianYi1, 0 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x894064_Buff_MianYi2, 0 )

	--����AI....
	x894064_ResetMyAI( sceneId, selfId )

	--���ý���ս��״̬....
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x894064_IDX_CombatFlag, 1 )

end


--**********************************
--�뿪ս��....
--**********************************
function x894064_OnLeaveCombat(sceneId, selfId)

	--����AI....
	x894064_ResetMyAI( sceneId, selfId )

	--ɾ���Լ�....
	LuaFnDeleteMonster( sceneId, selfId )

	--�����Ի�NPC....
	local MstId = CallScriptFunction( x894064_g_FuBenScriptId, "CreateBOSS", sceneId, "XiaoYiFeng_NPC", -1, -1 )
	SetUnitReputationID( sceneId, MstId, MstId, 0 )
end


--**********************************
--ɱ������....
--**********************************
function x894064_OnKillCharacter(sceneId, selfId, targetId)

end


--**********************************
--����....
--**********************************
function x894064_OnDie( sceneId, selfId, killerId )

	--����AI....
	x894064_ResetMyAI( sceneId, selfId )

	--�����Ѿ���ս�������....
	CallScriptFunction( x894064_g_FuBenScriptId, "SetBossBattleFlag", sceneId, "XiaoYiFeng", 2 )

	--�����û����ս��ɣ�����������սɣ����....
	if 2 ~= CallScriptFunction( x894064_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "XiaoRuJun" ) then
		CallScriptFunction( x894064_g_FuBenScriptId, "SetBossBattleFlag", sceneId, "XiaoRuJun", 1 )
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
		str = format("M�c cho b� v�y ch�t t� ph�a, #GTi�u D�t Phong#W m�t kh�ng bi�n s�c, v�n thong dong nh�ng �t nhi�n l�n ti�ng \"K� T�t Nh� Phong\" r�i bi�n m�t. #{_INFOUSR%s}#W c�ng t� �i ph�i th�t l�n \"Ti�u D�t Phong qu� th�t l� danh b�t h� truy�n\"...", playerName); --�����
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

			local WuPin = random( getn(x894064_LootItem_1) )
			AddMonsterDropItem( sceneId, selfId, mems[i], x894064_LootItem_1[WuPin] )
			AddMonsterDropItem( sceneId, selfId, mems[i], 39910001 )

			rand = random(100)
			if rand < 60 then
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
			if rand < 60 then
				local WuPin = random( getn(x894064_LootItem_2) )
				AddMonsterDropItem( sceneId, selfId, mems[i], x894064_LootItem_2[WuPin]  )

			end

			rand = random(100)
			if rand < 40 then
				AddMonsterDropItem( sceneId, selfId, mems[i], 20310184 )--ħ��
			end

		end
	end
	
end


--**********************************
--����AI....
--**********************************
function x894064_ResetMyAI( sceneId, selfId )

	--���ò���....
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x894064_IDX_StopWatch, 0 )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x894064_IDX_SkillA_CD, 0 )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x894064_IDX_SkillB_HPStep, 0 )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x894064_IDX_SkillB_Step, 0 )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x894064_IDX_SkillB_Type, 1 )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x894064_IDX_SkillB_CD, x894064_SkillB_CD )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x894064_IDX_SkillC_CD, x894064_SkillC_CD )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x894064_IDX_SkillD_CD, x894064_SkillD_CD )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x894064_IDX_KuangBaoTimer, 0 )

	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x894064_IDX_CombatFlag, 0 )
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x894064_IDX_IsKuangBaoMode, 0 )

end

--**********************************
--A��������....
--**********************************
function x894064_TickSkillA( sceneId, selfId, nTick )

	--���¼���CD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x894064_IDX_SkillA_CD )
	if cd > nTick then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894064_IDX_SkillA_CD, cd-nTick )
		return 0
	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894064_IDX_SkillA_CD, x894064_SkillA_CD-(nTick-cd) )
		return x894064_UseSkillA( sceneId, selfId )
	end

end

--**********************************
--B��������....
--**********************************
function x894064_TickSkillB( sceneId, selfId, nTick )

	local CurPercent = GetHp( sceneId, selfId ) / GetMaxHp( sceneId, selfId )
	if CurPercent > 0.3333 then
		return 0
	end

	--���¼���CD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x894064_IDX_SkillB_CD )
	if cd > nTick then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894064_IDX_SkillB_CD, cd-nTick )
		return 0
	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894064_IDX_SkillB_CD, x894064_SkillB_CD-(nTick-cd) )
		return x894064_UseSkillB( sceneId, selfId )
	end

end

--**********************************
--C��������....
--**********************************
function x894064_TickSkillC( sceneId, selfId, nTick )

	local CurPercent = GetHp( sceneId, selfId ) / GetMaxHp( sceneId, selfId )
	if CurPercent > 0.5333 then
		return 0
	end

	--���¼���CD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x894064_IDX_SkillC_CD )
	if cd > nTick then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894064_IDX_SkillC_CD, cd-nTick )
		return 0
	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894064_IDX_SkillC_CD, x894064_SkillC_CD-(nTick-cd) )
		return x894064_UseSkillC( sceneId, selfId )
	end

end

--**********************************
--D��������....
--**********************************
function x894064_TickSkillD( sceneId, selfId, nTick )

	local CurPercent = GetHp( sceneId, selfId ) / GetMaxHp( sceneId, selfId )
	if CurPercent > 0.8333 then
		return 0
	end

	--���¼���CD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x894064_IDX_SkillD_CD )
	if cd > nTick then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894064_IDX_SkillD_CD, cd-nTick )
		return 0
	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894064_IDX_SkillD_CD, x894064_SkillD_CD-(nTick-cd) )
		return x894064_UseSkillD( sceneId, selfId )
	end

end

--**********************************
--E��������....
--**********************************
function x894064_TickSkillE( sceneId, selfId, nTick )

	--���������B�������ȵȴ�....
	if MonsterAI_GetIntParamByIndex( sceneId, selfId, x894064_IDX_SkillB_Step ) > 0 then
		return 0
	end

	--����Ƿ��˿񱩵�ʱ��....
	local kbTime = MonsterAI_GetIntParamByIndex( sceneId, selfId, x894064_IDX_KuangBaoTimer )
	if kbTime < x894064_EnterKuangBaoTime then

		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894064_IDX_KuangBaoTimer, kbTime+nTick )
		return 0

	else
		MonsterAI_SetBoolParamByIndex( sceneId, selfId, x894064_IDX_IsKuangBaoMode, 1 )
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x894064_SkillE_Buff1, 0 )
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x894064_SkillE_Buff2, 0 )
		return 1

	end
end

--**********************************
--�������....
--**********************************
function x894064_TickStopWatch( sceneId, selfId, nTick )

	--����ÿ��Ż�ִ��һ��....
	local time = MonsterAI_GetIntParamByIndex( sceneId, selfId, x894064_IDX_StopWatch )
	if (time + nTick) > 1000 then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894064_IDX_StopWatch, time+nTick-1000 )
	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894064_IDX_StopWatch, time+nTick )
		return
	end


	-------------------------
	--���輼���߼�....
	-------------------------
	local buffStep = MonsterAI_GetIntParamByIndex( sceneId, selfId, x894064_IDX_SkillB_Step )
	local skillType = MonsterAI_GetIntParamByIndex( sceneId, selfId, x894064_IDX_SkillB_Type )
	if buffStep >= 1 and buffStep <= 15 then

		--Ѱ�ҷ�����....
		local bossId = CallScriptFunction( x894064_g_FuBenScriptId, "FindBOSS", sceneId, "FuMinYi_NPC" )
		if bossId <= 0 then
			return 0
		end

		--�÷����Ǹ���Ҽ�buff....
		local buffTbl = x894064_SkillB_BuffIDTbl[skillType]
		local buffId = buffTbl[16-buffStep]
		local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
		for i=0, nHumanCount-1 do
			local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
			if LuaFnIsObjValid(sceneId, nHumanId) == 1 and LuaFnIsCanDoScriptLogic(sceneId, nHumanId) == 1 and LuaFnIsCharacterLiving(sceneId, nHumanId) == 1 then
				LuaFnSendSpecificImpactToUnit( sceneId, bossId, bossId, nHumanId, buffId, 0 )
			end
		end

	end

	if buffStep > 0 then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894064_IDX_SkillB_Step, buffStep-1 )
	end


end

--**********************************
--ʹ��A����....
--**********************************
function x894064_UseSkillA( sceneId, selfId )

	--���������B����������....
	if MonsterAI_GetIntParamByIndex( sceneId, selfId, x894064_IDX_SkillB_Step ) > 0 then
		return 0
	end

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

	--���Լ�ʹ��һ���ռ���....
	local x,z = GetWorldPos( sceneId, selfId )
	LuaFnUnitUseSkill( sceneId, selfId, x894064_SkillA_ID, selfId, x, z, 0, 1 )

	--����Ҽ�ʧ��buff....
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, PlayerId, x894064_SkillA_Buff, 0 )

	return 1

end

--**********************************
--ʹ��B����....
--**********************************
function x894064_UseSkillB( sceneId, selfId )

	--ʹ�ÿռ���....
	local x,z = GetWorldPos( sceneId, selfId )
	LuaFnUnitUseSkill( sceneId, selfId, x894064_SkillB_ID, selfId, x, z, 0, 1 )

	CallScriptFunction((200060), "Paopao",sceneId, "Ti�u D�t Phong", "Binh Th�nh K� Tr�n", "T�t nh� phong, kho�i nh� hi�m, phong gi�p ra th�n. C�c ng߽i s� d�ng k� n�ng g� �i ch�ng n�a th� ta nh�t �nh s� ho�n tr� c�c ng߶i b�ng ch�nh k� n�ng ��..." )
	CallScriptFunction( x894064_g_FuBenScriptId, "TipAllHuman", sceneId, "Tr�n D�ng ��o Nh�n: Ti�u D�t Phong tri�u h�i T�t Phong H� Th�. Li�n t�c trong v�ng 15 gi�y, m�i s�t th߽ng g�y ra cho h�n s� b� ph�n ho�n to�n tr� l�i, c�c v� ch� �!" )

	return 1

end

--**********************************
--ʹ��C����....
--**********************************
function x894064_UseSkillC( sceneId, selfId )

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

	--ʹ�ÿռ���....
	local x,z = GetWorldPos( sceneId, selfId )
	LuaFnUnitUseSkill( sceneId, selfId, x894064_SkillC_ID, PlayerId, x, z, 0, 1 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, PlayerId, 19408, 0 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, PlayerId, 19406, 0 )
	local x,z = GetWorldPos( sceneId, PlayerId )
	CallScriptFunction( x894064_g_FuBenScriptId, "CreateBOSS", sceneId, "FengLei_BOSS", x, z )
	CallScriptFunction( x894064_g_FuBenScriptId, "CreateBOSS", sceneId, "FengLei_BOSS", x, z )
	CallScriptFunction( x894064_g_FuBenScriptId, "CreateBOSS", sceneId, "FengLei_BOSS", x, z )
	CallScriptFunction( x894064_g_FuBenScriptId, "CreateBOSS", sceneId, "FengLei_BOSS", x, z )
	CallScriptFunction((200060), "Paopao",sceneId, "Ti�u D�t Phong", "Binh Th�nh K� Tr�n", "T� ti�u v�n t�, L�i �ng c�u thi�n, Cu�ng l�i k�ch s�t. Phong L�i ��n, m�c ti�u l� t�n #c2ebeff"..GetName( sceneId, PlayerId ).."#W..." )
	CallScriptFunction( x894064_g_FuBenScriptId, "TipAllHuman", sceneId, "Tr�n D�ng ��o Nh�n: #c2ebeff"..GetName( sceneId, PlayerId ).." �� tr�ng Phong L�i ��n. 5 gi�y sau trong ng߶i t� kh�c sinh ra 4 tia Phong L�i ��n t�a ra xung quanh, c�n th�n!" )

	return 1


end

--**********************************
--ʹ��D����....
--**********************************
function x894064_UseSkillD( sceneId, selfId )

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
	LuaFnUnitUseSkill( sceneId, selfId, x894064_SkillD_ID, selfId, x, z, 0, 1 )

	CallScriptFunction((200060), "Paopao",sceneId, "Ti�u D�t Phong", "Binh Th�nh K� Tr�n", "Cu�ng L�i Ch�n иa, phong t�a huy�t ��o, ch� c�n ��i Thi�n L�i gi�ng th� l� #c2ebeff"..GetName( sceneId, PlayerIdA )..", "..GetName( sceneId, PlayerIdB ).."#W t� kh�c xu�ng g�p M�nh B� r�i. Ha ha..." )
	CallScriptFunction( x894064_g_FuBenScriptId, "TipAllHuman", sceneId, "Tr�n D�ng ��o Nh�n: Cu�ng L�i 30 gi�y sau s� ph�t t�c, l�c �� s� g�y h�i cho c�c v� r�t l�n, h�y nhanh tay ph� h�y ch�ng �i..." )

	--����Ҽ�ʧ��buff....
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, PlayerIdA, x894064_SkillD_Buff, 0 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, PlayerIdA, 19403, 0 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, PlayerIdB, x894064_SkillD_Buff, 0 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, PlayerIdB, 19403, 0 )

	local x,z = GetWorldPos( sceneId, PlayerIdA )
	CreateSpecialObjByDataIndex(sceneId, selfId, x894064_SkillD_SpecObj, x, z, 0)
	local MstIdA = CallScriptFunction( x894064_g_FuBenScriptId, "CreateBOSS", sceneId, "XuanFeng_BOSS", x, z )
	SetCharacterDieTime( sceneId, MstIdA, 31500 )

	local x,z = GetWorldPos( sceneId, PlayerIdB )
	CreateSpecialObjByDataIndex(sceneId, selfId, x894064_SkillD_SpecObj, x, z, 0)
	local MstIdB = CallScriptFunction( x894064_g_FuBenScriptId, "CreateBOSS", sceneId, "XuanFeng_BOSS", x, z )
	SetCharacterDieTime( sceneId, MstIdB, 31500 )

	return 1

end

--**********************************
--���׺��̻���buff������ʱ��ص����ӿ�....
--**********************************
function x894064_OnImpactFadeOut( sceneId, selfId, impactId )

	--Ѱ��BOSS....
	local bossId = -1
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if GetName( sceneId, MonsterId ) == "Ti�u D�t Phong" then
			bossId = MonsterId
		end
	end

	--û�ҵ��򷵻�....
	if bossId == -1 then
		return
	end

	--������̻���buff����BOSS����....
	if impactId == 19403 then

		x,z = GetWorldPos( sceneId,selfId )
		CreateSpecialObjByDataIndex(sceneId, bossId, 193, x, z, 0)

		return
	end

	--������̻���buff����BOSS����....
	if impactId == 19408 then
			LuaFnSendSpecificImpactToUnit( sceneId, bossId, bossId, selfId, 19406, 0 )
			LuaFnSendSpecificImpactToUnit( sceneId, bossId, bossId, selfId, 19409, 0 )

		return
	end

	--������̻���buff����BOSS����....
	if impactId == 19409 then
		CreateSpecialObjByDataIndex(sceneId, bossId, 191, x, z, 0)
		return
	end

end

