-- ����̨��Ӧ�� �ű�

x806014_g_ScriptId = 806014

x806014_g_GlobalChallengeScript = 806010

-- ��������
x806014_g_CopyScene = "leitai_1.nav"

-- ��������
x806014_g_CopySceneExit = "leitai_1_area.ini"

-- ������½�ص�
x806014_g_Pos = { x=32, z=33, offset=3.53 }

-- ��������ʱ�ر�ʱ�� (����)
x806014_g_CopySceneCloseTime = 3000

-- ������ʱ���������� (����)
x806014_g_TickTime = 5000

-- ��̨��ʼʱ��
x806014_g_BeginTick = 3

-- ����ֻʣ��һ��ʱ�Ĺر����� ( ��λΪ��ʱ���������� )
x806014_g_CloseTick = 3

-- ����Pvp����
x806014_g_PvpRuler = 9	--modify by zchw

-- �������ͺ�
x806014_g_CopySceneType = FUBEN_PVP_LEITAI

-- ��ս˫����Ӫ��
x806014_g_Camp = { self=10, target=11 }

-- ��ս�����Ժ�ص���λ��
x806014_g_BackPos = { sceneId=186, x=166, z=45 }

-- �޵� BUFF ~~~
x806014_g_Buff = 112

x806014_g_BuffID_ClearChgBodyBuff = 84
-- �� selfId (������) ��ս targetId (������)
function x806014_DoChallenge( sceneId, selfId, targetId )
	-- �ȴ���һ����������������ɹ�������������򷵻�
	local CreatorGUID = LuaFnObjId2Guid( sceneId, selfId )
	local TargetGUID = LuaFnObjId2Guid( sceneId, targetId )
	LuaFnSetSceneLoad_Map( sceneId, x806014_g_CopyScene )						-- ��ͼ�Ǳ���ѡȡ�ģ����ұ�����Config/SceneInfo.ini�����ú�
	LuaFnSetCopySceneData_TeamLeader( sceneId, CreatorGUID )
	LuaFnSetCopySceneData_NoUserCloseTime( sceneId, x806014_g_CopySceneCloseTime )
	LuaFnSetCopySceneData_PvpRuler( sceneId, x806014_g_PvpRuler )
	LuaFnSetCopySceneData_Timer( sceneId, x806014_g_TickTime )
	LuaFnSetCopySceneData_Param( sceneId, 0, x806014_g_CopySceneType )			-- ���ø�������
	LuaFnSetCopySceneData_Param( sceneId, 1, x806014_g_ScriptId )				-- ��1����������Ϊ���������¼��ű���
	LuaFnSetCopySceneData_Param( sceneId, 2, 0 )						-- ���ö�ʱ�����ô���
	LuaFnSetCopySceneData_Param( sceneId, 3, TargetGUID )				-- ��ս���ֵ� GUID
	LuaFnSetCopySceneData_Param( sceneId, 4, 0 )						-- ���ø����رձ�־, 0���ţ�1�ر�
	LuaFnSetCopySceneData_Param( sceneId, 5, 0 )						-- �����뿪����ʱ����
	LuaFnSetCopySceneData_Param( sceneId, 6, 0 )						-- ���� self ������Լ���Ӫ��ʣ������ TeamID * 10 + TeamMemberCount
	LuaFnSetCopySceneData_Param( sceneId, 7, 0 )						-- ���� target ������Լ���Ӫ��ʣ������ TeamID * 10 + TeamMemberCount

	LuaFnSetSceneLoad_Area( sceneId, x806014_g_CopySceneExit )					-- ������̨����

	local CopySceneID = LuaFnCreateCopyScene( sceneId )					-- ��ʼ����ɺ���ô�����������
	if CopySceneID <= 0 then
		BeginEvent( sceneId )
			AddText( sceneId, "L�i ��i �� qu� ch�t, kh�ng th� ch�a th�m ng߶i �n th�ch �u." )
		EndEvent( sceneId )
		DispatchMissionTips( sceneId, selfId )
		DispatchMissionTips( sceneId, targetId )
		return
	end
	--��¼ͳ����Ϣ
	LuaFnAuditChallenge(sceneId, selfId, targetId)

end

function x806014_GetSelfTeamId( sceneId )
	return LuaFnGetCopySceneData_Param( sceneId, 6 ) / 10
end

function x806014_GetTargetTeamId( sceneId )
	return LuaFnGetCopySceneData_Param( sceneId, 7 ) / 10
end

function x806014_GetSelfMembersCount( sceneId )
	local selfInfo = LuaFnGetCopySceneData_Param( sceneId, 6 )
	selfInfo = selfInfo - selfInfo / 10 * 10

	if selfInfo < 0 then
		selfInfo = -selfInfo
	end

	return selfInfo
end

function x806014_ModifySelfMembersCount( sceneId, count )
	local selfInfo = LuaFnGetCopySceneData_Param( sceneId, 6 )

	if selfInfo < 0 then
		count = -count
	end

	LuaFnSetCopySceneData_Param( sceneId, 6, selfInfo + count )
end

function x806014_GetTargetMembersCount( sceneId )
	local TargetInfo = LuaFnGetCopySceneData_Param( sceneId, 7 )
	TargetInfo = TargetInfo - TargetInfo / 10 * 10

	if TargetInfo < 0 then
		TargetInfo = -TargetInfo
	end

	return TargetInfo
end

function x806014_ModifyTargetMembersCount( sceneId, count )
	local TargetInfo = LuaFnGetCopySceneData_Param( sceneId, 7 )

	if TargetInfo < 0 then
		count = -count
	end

	LuaFnSetCopySceneData_Param( sceneId, 7, TargetInfo + count )
end

function x806014_CalcPosOffset()
	local offset = x806014_g_Pos.offset * random(100) / 100

	if random(0, 1) > 0 then
		offset = -offset
	end

	return offset
end

--**********************************
--�����¼�
--**********************************
function x806014_OnCopySceneReady( sceneId, destsceneId )

	-- ���»��һ����������Ҫ�������������Ա�б�
	local selfId = LuaFnGuid2ObjId( sceneId, LuaFnGetCopySceneData_TeamLeader(destsceneId) )
	local targetId = LuaFnGuid2ObjId( sceneId, LuaFnGetCopySceneData_Param( destsceneId, 3 ) )
	local ChallengeFlag = GetMissionData( sceneId, selfId, MD_TIAOZHAN_SCRIPT )
	local selfCampCount = 0
	local targetCampCount = 0
	local num = 0
	local members = {}
	local membersCount = 0

	-- �����ߵĶ���ű�������
	LuaFnSetCopySceneData_Param( destsceneId, 6, 10 * GetTeamId( sceneId, selfId ) )
	LuaFnSetCopySceneData_Param( destsceneId, 7, 10 * GetTeamId( sceneId, targetId ) )

	-- �����ϴ�������������������
	members[0] = selfId
	membersCount = 1
	if LuaFnHasTeam( sceneId, selfId ) ~= 0 then
		num = LuaFnGetTeamSceneMemberCount( sceneId, selfId )
		for	i=0, num-1 do
			members[membersCount] = LuaFnGetTeamSceneMember( sceneId, selfId, i )

			if GetMissionData( sceneId, members[membersCount], MD_TIAOZHAN_SCRIPT ) == ChallengeFlag then
				membersCount = membersCount + 1
			end
		end
	end

	members[membersCount] = targetId
	membersCount = membersCount + 1
	if LuaFnHasTeam( sceneId, targetId ) ~= 0 then
		num = LuaFnGetTeamSceneMemberCount( sceneId, targetId )
		for	i=0, num-1 do
			members[membersCount] = LuaFnGetTeamSceneMember( sceneId, targetId, i )

			if GetMissionData( sceneId, members[membersCount], MD_TIAOZHAN_SCRIPT ) == ChallengeFlag then
				membersCount = membersCount + 1
			end
		end
	end

	for i=0, membersCount-1 do
		-- TODO: Ŀǰ���б�Ǿʹ��͹�ȥ����Ҫ�ж��Ƿ���һЩ�ض�״̬�����罻�ס���̯�ȵ�״̬�ǲ��ܴ��͵�
		if LuaFnIsCanDoScriptLogic( sceneId, members[i] ) == 1 then
			NewWorld( sceneId, members[i], destsceneId, x806014_g_Pos.x + x806014_CalcPosOffset(), x806014_g_Pos.z + x806014_CalcPosOffset())
		end
	end
end

-- ����Լ�վ���ķ�����Ϣ��1: ��ս����2: ����ս��
function x806014_GetMySide( sceneId, selfId )
	local MyGUID = LuaFnObjId2Guid( sceneId, selfId )

	local ChallengerGUID = LuaFnGetCopySceneData_TeamLeader( sceneId )
	local targetGUID = LuaFnGetCopySceneData_Param( sceneId, 3 )

	local MySide = 0

	if targetGUID < 0 then
		targetGUID = targetGUID + 4294967296
	end

	if MyGUID == ChallengerGUID then
		MySide = 1
	elseif MyGUID == targetGUID then
		MySide = 2
	else
		local MyTeamId = GetTeamId( sceneId, selfId )
		local selfTeamId = x806014_GetSelfTeamId( sceneId )
		local targetTeamId = x806014_GetTargetTeamId( sceneId )

		if MyTeamId == selfTeamId then
			MySide = 1
		else	-- ��������ͱ��˱���ս���ˣ��Ǻ�
			MySide = 2
		end
	end

	return MySide
end

--**********************************
--����ҽ��븱���¼�
--**********************************
function x806014_OnPlayerEnter( sceneId, selfId )
	-- ���������Ӫ�ţ������ҵ� GUID ������ս������ս�� GUID����ֱ��������Ӧ��Ӫ��
	-- �������Ӧ������ĳһ���Ķ��飬����������ȣ�����ö���Ŷ�Ӧ����Ӫ��
	SetMissionData( sceneId, selfId, MD_PREV_CAMP, GetCurCamp(sceneId, selfId) )

	local MySide = x806014_GetMySide( sceneId, selfId )
	if MySide == 1 then
		SetUnitCampID( sceneId, selfId, selfId, x806014_g_Camp.self )
		SetPvpAuthorizationFlagByID(sceneId, selfId, 2, 1) --2�Ǿ�����Ȩ���
	--	x806014_ModifySelfMembersCount( sceneId, 1 )
	else
		SetUnitCampID( sceneId, selfId, selfId, x806014_g_Camp.target )
		SetPvpAuthorizationFlagByID(sceneId, selfId, 2, 1) --2�Ǿ�����Ȩ���
	--	x806014_ModifyTargetMembersCount( sceneId, 1 )
	end

	-- ���� 15 ��� buff��Ҳ��Ӧ�÷��� NewWorld ��ǰ����Ҫ������� NewWorld ʧ�ܿ��ܻ���һЩ������
	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x806014_g_Buff, 0)

	-- ����Ĭ�ϻ����Ϊ���볡������̨
	SetPlayerDefaultReliveInfo( sceneId, selfId, "%10", -1, "0", x806014_g_BackPos.sceneId, x806014_g_BackPos.x, x806014_g_BackPos.z )
	-- ����У�����������Ҫ�������buff����ֹ���ܲ���������
	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x806014_g_BuffID_ClearChgBodyBuff, 0)
end

-- ���������뿪�����������
function x806014_LeaveScene( sceneId, selfId )
	-- ͳ��ʣ������
	--local MySide = x806014_GetMySide( sceneId, selfId )
	--if MySide == 1 then
	--	x806014_ModifySelfMembersCount( sceneId, -1 )
	--else
	--	x806014_ModifyTargetMembersCount( sceneId, 1 )
	--end
	SetUnitCampID(sceneId, selfId, selfId, -1)
	SetPvpAuthorizationFlagByID(sceneId, selfId, 2, 0) --2�Ǿ�����Ȩ���
	--LuaFnDelApplyCamp( sceneId, selfId )

	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 83 , 0);
	CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, x806014_g_BackPos.sceneId, x806014_g_BackPos.x, x806014_g_BackPos.z )
end

--**********************************
--������ڸ����������¼�
--**********************************
function x806014_OnHumanDie( sceneId, selfId, killerId )
end

--**********************************
--����������ʱ���¼�
--**********************************
function x806014_OnCopySceneTimer( sceneId, nowTime )
	-- ����ʱ������
	local tick = LuaFnGetCopySceneData_Param( sceneId, 2 )
	tick = tick + 1
	LuaFnSetCopySceneData_Param( sceneId, 2, tick + 1 )		-- �����µĶ�ʱ�����ô���

	-- �����رձ�־
	leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )
	if leaveFlag == 1 then																			-- ��Ҫ�뿪
		-- �뿪����ʱ��Ķ�ȡ������
		local leaveTickCount = LuaFnGetCopySceneData_Param( sceneId, 5 )
		leaveTickCount = leaveTickCount + 1
		LuaFnSetCopySceneData_Param( sceneId, 5, leaveTickCount + 1 )

		if x806014_g_CloseTick <= leaveTickCount then
			-- ����ǰ����������������˴��ͻ�ԭ������ʱ��ĳ���
			local membercount = LuaFnGetCopyScene_HumanCount( sceneId )
			for	i=0, membercount-1 do
				local playerId = LuaFnGetCopyScene_HumanObjId( sceneId, i )
				if LuaFnIsObjValid( sceneId, playerId ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, playerId ) == 1 then
					x806014_LeaveScene( sceneId, playerId )
				end
			end
		else
			-- ֪ͨʣ����Ҹ��������ر�
			local membercount =	LuaFnGetCopyScene_HumanCount( sceneId )
			local strText =	format(	"L�i ��i s� ��ng c�a trong v�ng %d gi�y n�a",	(x806014_g_CloseTick-leaveTickCount)*x806014_g_TickTime/1000 )
			BeginEvent(	sceneId	)
				AddText( sceneId, strText )
			EndEvent( sceneId )

			for	i=0, membercount-1 do
				local member = LuaFnGetCopyScene_HumanObjId( sceneId, i	)
				DispatchMissionTips( sceneId, member )
			end
		end
	elseif tick > x806014_g_BeginTick then
		-- ͳ��˫����Ա��������һ������ʱ����رո����������Ƕ���
		local membercount = LuaFnGetCopyScene_HumanCount( sceneId )
		local selfCount = 0
		local targetCount = 0

		for	i=0, membercount-1 do
			local playerId = LuaFnGetCopyScene_HumanObjId( sceneId, i )
			if LuaFnIsObjValid( sceneId, playerId ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, playerId ) == 1 then
	  		if x806014_GetMySide( sceneId, playerId ) == 1 then
	  			selfCount = selfCount + 1
	  		else
	  			targetCount = targetCount + 1
	  		end
			end
		end

		if selfCount < 1 or targetCount < 1 then
			LuaFnSetCopySceneData_Param( sceneId, 4, 1 )
		else
			return
		end

		local strText =	"K�t th�c thi �u, l�i ��i s�p ��ng c�a"
		BeginEvent( sceneId	)
			AddText( sceneId, strText )
		EndEvent( sceneId )

		for	i=0, membercount-1 do
			local playerId = LuaFnGetCopyScene_HumanObjId( sceneId, i )
			if LuaFnIsObjValid( sceneId, playerId ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, playerId ) == 1 then
	  		DispatchMissionTips( sceneId, playerId )
			end
		end
	else
		local membercount = LuaFnGetCopyScene_HumanCount( sceneId )

		local strText = ""

		if tick < x806014_g_BeginTick then
			strText = format( "Thi �u s� b�t �u trong %d gi�y n�a", (x806014_g_BeginTick-tick)*x806014_g_TickTime/1000 )
		else
			strText = "Thi �u ch�nh th�c b�t �u"
		end

		BeginEvent(	sceneId )
			AddText( sceneId, strText )
		EndEvent( sceneId )

		for	i=0, membercount-1 do
			local playerId = LuaFnGetCopyScene_HumanObjId( sceneId, i )
			if LuaFnIsObjValid( sceneId, playerId ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, playerId ) == 1 then
				DispatchMissionTips( sceneId, playerId )
			end
		end
	end
end