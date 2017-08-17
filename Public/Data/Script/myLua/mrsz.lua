--��������
--ľ��

--************************************************************************
--MisDescBegin

--�ű���
x454545_g_ScriptId = 454545

--�������
x454545_g_ReLifeTimes = 10
--��������
x454545_g_CopySceneName="������̨"

--MisDescEnd
--************************************************************************

--��ɫMission����˵��
x454545_g_Param_huan		=0	--0�ţ��Ѿ���ɵĻ������ڽ�������ʱ��ֵ
x454545_g_Param_ok			=1	--1�ţ���ǰ�����Ƿ����(0δ��ɣ�1���)
x454545_g_Param_sceneid		=2	--2�ţ���ǰ��������ĳ�����
x454545_g_Param_teamid		=3	--3�ţ��Ӹ�������ʱ��Ķ����
x454545_g_Param_killcount	=4	--4�ţ�ɱ������ֵ�����
x454545_g_Param_time		=5	--5�ţ���ɸ�������ʱ��(��λ����)
--6�ţ�δ��
--7�ţ�δ��

x454545_g_CopySceneType=FUBEN_GODFIRE	--�������ͣ�������ScriptGlobal.lua����
x454545_g_LimitMembers=1			--���Խ���������С��������
x454545_g_TickTime=5				--�ص��ű���ʱ��ʱ�䣨��λ����/�Σ�
x454545_g_LimitTotalHoldTime=360	--360,1440�������Դ���ʱ�䣨��λ��������,�����ʱ�䵽�ˣ������񽫻�ʧ��
x454545_g_LimitTimeSuccess=360		--360,1440����ʱ�����ƣ���λ���������������ʱ�䵽�ˣ��������
x454545_g_CloseTick=6				--�����ر�ǰ����ʱ����λ��������
x454545_g_NoUserTime=5			--������û���˺���Լ��������ʱ�䣨��λ���룩
x454545_g_DeadTrans=0				--����ת��ģʽ��0�������󻹿��Լ����ڸ�����1��������ǿ���Ƴ�����
x454545_g_Fuben_X=154				--���븱����λ��X
x454545_g_Fuben_Z=165				--���븱����λ��Z
x454545_g_Back_X=160				--Դ����λ��X
x454545_g_Back_Z=106				--Դ����λ��Z
x454545_g_TotalNeedKill=10			--��Ҫɱ����������
x454545_g_Param_sceneid=8			--���ó���ID

--**********************************
--������ں���
--**********************************
function x454545_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "  �����֪�Ӻδ�����ʮ�������ˣ��Գ�ʮ��ɷ�ǣ����������ں����޼ɣ�������գ���ʮ�������ո�ǿ�����Ű��裬���ո����в��ٽ���������С֮��Ͷ�����ǣ�ʹ���������ǣ����������ź�Ѹ�ٸ������κ��ƹ��������������Ǻ�? " )	
		AddNumText( sceneId, x454545_g_ScriptId, "ɱ��", 6, 10 )
		AddNumText( sceneId, x454545_g_ScriptId, "ɱ�ǽ���", 6, 20 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--�о��¼�
--**********************************
function x454545_OnEnumerate( sceneId, selfId, targetId )
	
end
--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x454545_OnEventRequest( sceneId, selfId, targetId, eventId)
	if GetNumText() == 10 then

	local ret, msg = x454545_CheckAccept( sceneId, selfId, targetId )
	if 1 ~= ret then
		BeginEvent(sceneId)
			AddText(sceneId,msg)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

		BeginEvent( sceneId )
			AddText( sceneId, "�����˶����ڣ���������ټ���������֮��һͬǰ���źã������׼�����ˣ����Ŀ�����ǰ�������������̨����" )
			AddNumText( sceneId, x454545_g_scriptId, "ǰ��������̨", 6, 666)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 666 then
		local nearmembercount	= GetNearTeamCount( sceneId, selfId )
		x454545_MakeCopyScene( sceneId, selfId, nearmembercount )
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#gff00f0��ϲ���#gffff00"..nam.."#gff00f0�������ɹ�����12ɱ�Ǹ���������������������ظ߼�����,���һ���ڴ����ܻ�÷��Ʒ�ɣ�", 4 )
	end
end

--**********************************
--����������
--**********************************
function x454545_CheckAccept( sceneId, selfId, targetId )

	if LuaFnHasTeam(sceneId,selfId) ~= 1 then
		return 0, "12ɱ�Ǹ�����Ҫ3��������Ӳ��ܲμӣ������ֻ����չʾ���˵ĲŻ�����ȥ�μӻ�ɽ�۽��ɣ�"
	end

	--�ǲ��Ƕӳ�....
	if GetTeamLeader(sceneId,selfId) ~= selfId then
		return 0, "�㲻�Ƕӳ���"
	end

	--�����Ƿ�....
	if GetTeamSize(sceneId,selfId) < 1 then
		return 0, "һ֧���鲻��3�ˣ������ǽ���������̨Ҳû��ʲô��ʤ�Ŀ��ܰ������ǲ�Ҫȥ�ˡ�"
	end

	--�Ƿ��ڸ���....
	local NearTeamSize = GetNearTeamCount(sceneId,selfId)
	if GetTeamSize(sceneId,selfId) ~= NearTeamSize then
		return 0, "�ж���û�ڸ�����"
	end

	local Humanlist = {}
	local nHumanNum = 0

	--�Ƿ����˲���90��....
	for i=0, NearTeamSize-1 do
		local PlayerId = GetNearTeamMember( sceneId, selfId, i )
		if GetLevel( sceneId, PlayerId ) < 14 then
			Humanlist[nHumanNum] = GetName( sceneId, PlayerId )
			nHumanNum = nHumanNum + 1
		end
	end

	if nHumanNum > 0 then

		local msg = "    ���鵱�е�"
		for i=0, nHumanNum-2 do
			msg = msg .. Humanlist[i] .. "��"
		end
		msg = msg .. Humanlist[nHumanNum-1] .. "����Ϊ��ǳ������80�������ǲ�ҪȥΪ�"
		return 0, msg

	end

	--�Ƿ����˽�������3����....����3.6�޸� ��ֹû�н�ȥ�ĵ��ӳ������
	nHumanNum = 0
	local CurDayTime = GetDayTime()
	for i=0, NearTeamSize-1 do

		local PlayerId = GetNearTeamMember( sceneId, selfId, i )
		local lastTime = GetMissionData( sceneId, PlayerId, MD_CHUNJIE_BIANPAO_DAYTIME )
		local lastDayTime = floor( lastTime / 100 )
		local lastDayCount = mod( lastTime, 100 )
	
		if CurDayTime > lastDayTime then
			lastDayTime = CurDayTime
			lastDayCount = 0
		end

		if lastDayCount >= 3 then
			Humanlist[nHumanNum] = GetName( sceneId, PlayerId )
			nHumanNum = nHumanNum + 1
		end

	end

	if nHumanNum > 0 then

		local msg = "    "
		for i=0, nHumanNum-2 do
			msg = msg .. Humanlist[i] .. "��"
		end
		msg = msg .. Humanlist[nHumanNum-1] .. "�����Ѿ���ս��3��ɱ���ˡ�"
		return 0, msg

	end

	return	1
end

--**********************************
--����
--**********************************
function x454545_OnAccept( sceneId, selfId, targetId )
	
end

--**********************************
--����
--**********************************
function x454545_OnAbandon( sceneId, selfId )
	
end

--**********************************
--��������
--**********************************
function x454545_MakeCopyScene( sceneId, selfId, nearmembercount )

	local mylevel = 120
	local iniLevel=120

	leaderguid=LuaFnObjId2Guid(sceneId,selfId)
	LuaFnSetSceneLoad_Map(sceneId, "gusu.nav"); --��ͼ�Ǳ���ѡȡ�ģ����ұ�����Config/SceneInfo.ini�����ú�
	LuaFnSetCopySceneData_TeamLeader(sceneId, leaderguid);
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId, x454545_g_NoUserTime*1000);
	LuaFnSetCopySceneData_Timer(sceneId, x454545_g_TickTime*1000);
	LuaFnSetCopySceneData_Param(sceneId, 0, x454545_g_CopySceneType);--���ø������ݣ����ｫ0����������������Ϊ999�����ڱ�ʾ������999(�����Զ���)
	LuaFnSetCopySceneData_Param(sceneId, 1, x454545_g_ScriptId);--��1����������Ϊ���������¼��ű���
	LuaFnSetCopySceneData_Param(sceneId, 2, 0);--���ö�ʱ�����ô���
	LuaFnSetCopySceneData_Param(sceneId, 3, -1);--���ø�����ڳ�����, ��ʼ��
	LuaFnSetCopySceneData_Param(sceneId, 4, 0);--���ø����رձ�־, 0���ţ�1�ر�
	LuaFnSetCopySceneData_Param(sceneId, 5, 0);--�����뿪����ʱ����
	LuaFnSetCopySceneData_Param(sceneId, 6, GetTeamId(sceneId,selfId)); --��������
	LuaFnSetCopySceneData_Param(sceneId, 7, 0) ;--ɱ��Boss������
	LuaFnSetCopySceneData_PvpRuler( sceneId, 9 )

	local x,z = GetWorldPos( sceneId, selfId )		

	LuaFnSetSceneLoad_Monster( sceneId, "shengsileitai_monster2.ini" )
	
    	local CopyScene_LevelGap = 31
	LuaFnSetCopySceneData_Param(sceneId, CopyScene_LevelGap, mylevel - iniLevel) --����CopyScene_LevelGap �� scene.lua �и�ֵ

	local bRetSceneID = LuaFnCreateCopyScene(sceneId); --��ʼ����ɺ���ô�����������
	BeginEvent(sceneId)
		if bRetSceneID>0 then
			AddText(sceneId,"���������ɹ���");
		else
			AddText(sceneId,"���������Ѵ����ޣ����Ժ����ԣ�");
		end
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
end

--**********************************
--����
--**********************************
function x454545_OnContinue( sceneId, selfId, targetId )
	
end

--**********************************
--����Ƿ�����ύ
--**********************************
function x454545_CheckSubmit( sceneId, selfId )
	
end

--**********************************
--�ύ
--**********************************
function x454545_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
end
--**********************************
--��������
--**********************************
function x454545_OnDie(sceneId, objId, killerId)
    --PrintStr( "x454545_OnDie [objId]"..objId.." [killerId]"..killerId.."[sceneId]"..sceneId )
    local DataID = GetMonsterDataID( sceneId, objId )
    x454545_OnKillObject( sceneId, killerId, DataID, objId )
end
--**********************************
--ɱ����������
--**********************************
function x454545_OnKillObject( sceneId, selfId, objdataId ,objId )
	local temp = random(2)
		if temp==1 then
			AddMonsterDropItem( sceneId, objId, selfId, 30900001 )
		end
end

--**********************************
--���������¼�
--**********************************
function x454545_OnEnterZone( sceneId, selfId, zoneId )
	
end

--**********************************
--���߸ı�
--**********************************
function x454545_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--�����¼�
--**********************************
function x454545_OnCopySceneReady( sceneId, destsceneId )

	LuaFnSetCopySceneData_Param(destsceneId, 3, sceneId);--���ø�����ڳ�����
	leaderguid  = LuaFnGetCopySceneData_TeamLeader(destsceneId) ;
	leaderObjId = LuaFnGuid2ObjId(sceneId,leaderguid);
	NewWorld( sceneId,leaderObjId, destsceneId, x454545_g_Fuben_X, x454545_g_Fuben_Z)
	local nearmembercount	= GetNearTeamCount( sceneId, leaderObjId )
	local member
	local misIndex
	for	i=0, nearmembercount-1 do
		member = GetNearTeamMember( sceneId, leaderObjId, i )
		if LuaFnIsCanDoScriptLogic( sceneId, member ) == 1 then
		NewWorld( sceneId, member, destsceneId, x454545_g_Fuben_X, x454545_g_Fuben_Z )
		end
	end
end

--**********************************
--����ҽ��븱���¼�
--**********************************
function x454545_OnPlayerEnter( sceneId, selfId )

--���������󸴻��λ��
	SetPlayerDefaultReliveInfo( sceneId, selfId, "%10", -1, "0", sceneId, x454545_g_Fuben_X, x454545_g_Fuben_Z );
	--SetUnitCampID(sceneId, selfId, selfId, 109)

	local lastTime = GetMissionData( sceneId, selfId, MD_CHUNJIE_BIANPAO_DAYTIME )
	local lastDayTime = floor( lastTime / 100 )
	local lastDayCount = mod( lastTime, 100 )
	local CurDayTime = GetDayTime()

	if CurDayTime > lastDayTime then
		lastDayTime = CurDayTime
		lastDayCount = 0
	end

	lastDayCount = lastDayCount + 1
	lastTime = lastDayTime * 100 + lastDayCount
	SetMissionData( sceneId, selfId, MD_CHUNJIE_BIANPAO_DAYTIME, lastTime )

end

--**********************************
--������ڸ����������¼�
--**********************************
function x454545_OnHumanDie( sceneId, selfId, killerId )
	
end

--**********************************
--����������ʱ���¼�
--**********************************
function x454545_OnCopySceneTimer( sceneId, nowTime )
	--����ʱ�Ӷ�ȡ������
	TickCount = LuaFnGetCopySceneData_Param(sceneId, 2) ;--ȡ���Ѿ�ִ�еĶ�ʱ����
	TickCount = TickCount+1 ;
	LuaFnSetCopySceneData_Param(sceneId, 2, TickCount);--�����µĶ�ʱ�����ô���

	--�����رձ�־
	leaveFlag = LuaFnGetCopySceneData_Param(sceneId, 4) ;

	if leaveFlag == 1 then --��Ҫ�뿪

		--�뿪����ʱ��Ķ�ȡ������
		leaveTickCount = LuaFnGetCopySceneData_Param(sceneId, 5) ;
		leaveTickCount = leaveTickCount+1 ;
		LuaFnSetCopySceneData_Param(sceneId, 5, leaveTickCount) ;

		if leaveTickCount == x454545_g_CloseTick then --����ʱ�䵽����Ҷ���ȥ��

			oldsceneId = LuaFnGetCopySceneData_Param(sceneId, 3) ;--ȡ�ø�����ڳ�����

			--����ǰ����������������˴��ͻ�ԭ������ʱ��ĳ���
			local membercount = LuaFnGetCopyScene_HumanCount(sceneId)
			local mems = {}
			for	i=0,membercount-1 do
				mems[i] = LuaFnGetCopyScene_HumanObjId(sceneId,i)
				NewWorld( sceneId, mems[i], oldsceneId, x454545_g_Back_X, x454545_g_Back_Z )
			end

		elseif leaveTickCount<x454545_g_CloseTick then

			oldsceneId = LuaFnGetCopySceneData_Param(sceneId, 3) ;--ȡ�ø�����ڳ�����

			--֪ͨ��ǰ����������������ˣ������رյ���ʱ��
			local membercount = LuaFnGetCopyScene_HumanCount(sceneId)
			local mems = {}
			for	i=0,membercount-1 do
				mems[i] = LuaFnGetCopyScene_HumanObjId(sceneId,i)
	  			BeginEvent(sceneId)
	  				strText = format("�㽫��%d����뿪����!", (x454545_g_CloseTick-leaveTickCount)*x454545_g_TickTime )
	  				AddText(sceneId,strText);
	  			EndEvent(sceneId)
	  			DispatchMissionTips(sceneId,mems[i])
			end
		end
	elseif TickCount == x454545_g_LimitTimeSuccess then
		--�˴�������ʱ�����Ƶ�������ɴ���
		local membercount = LuaFnGetCopyScene_HumanCount(sceneId)
		local mems = {}
		for	i=0,membercount-1 do
			mems[i] = LuaFnGetCopyScene_HumanObjId(sceneId,i)

  			BeginEvent(sceneId)
  				AddText(sceneId,"����ʱ�䵽�����!");
  			EndEvent(sceneId)
  			DispatchMissionTips(sceneId,mems[i])
			misIndex = GetMissionIndexByID(sceneId,mems[i],x454545_g_MissionId)--ȡ��������������ֵ
			--������ĵ�1����������Ϊ1,��ʾ��ɵ�����
			SetMissionByIndex(sceneId,mems[i],misIndex,x454545_g_Param_ok,1)--������������
			--��ɸ�������ʱ��
			SetMissionByIndex(sceneId,mems[i],misIndex,x454545_g_Param_time,TickCount*x454545_g_TickTime)--������������
		end

		--���ø����رձ�־
		LuaFnSetCopySceneData_Param(sceneId, 4, 1) ;

	elseif TickCount == x454545_g_LimitTotalHoldTime then --������ʱ�����Ƶ���
		--�˴����ø���������ʱ�����Ƶ��������ʱ�䵽����...
		local membercount = LuaFnGetCopyScene_HumanCount(sceneId)
		local mems = {}
		for	i=0,membercount-1 do
			mems[i] = LuaFnGetCopyScene_HumanObjId(sceneId,i)
			DelMission( sceneId, mems[i], x454545_g_MissionId );--����ʧ��,ɾ��֮

  			BeginEvent(sceneId)
  				AddText(sceneId,"����ʧ�ܣ���ʱ!");
  			EndEvent(sceneId)
  			DispatchMissionTips(sceneId,mems[i])
		end

		--���ø����رձ�־
		LuaFnSetCopySceneData_Param(sceneId, 4, 1) ;

	end
end
--**********************************
--��ĳ��Ҵ��ͳ�����,�ص�����ʱ��λ��
--**********************************
function x454545_KickOut( sceneId, objId )
    local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )	--ȡ�ø�����ڳ�����
	local x = 158 --����ʱ������X
	local z = 130 --����ʱ������Z
	
	if LuaFnIsObjValid( sceneId, objId ) == 1 then
	    NewWorld( sceneId, objId, oldsceneId, x, z )
	end
	
end
--**********************************
-- �Ի�������Ϣ��ʾ
--**********************************
function x454545_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
-- ��Ļ�м���Ϣ��ʾ
--**********************************
function x454545_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
--**********************************
-- ��⿪��ʱ��
--**********************************
function x454545_IsActivityOpen(sceneId)
	local nHour = GetHour();
	local nMinute = GetMinute();
	local nCurTempTime = nHour * 60 + nMinute;
	if nCurTempTime >= 20 * 60 and nCurTempTime < 21 * 60 + 20 then
		return 1;
	end
	return 0;
--	return 1
end
--**********************************
-- ��⿪��ʱ��2
--**********************************
function x454545_IsActivityOpen2(sceneId)
	local nHour = GetHour();
	local nMinute = GetMinute();
	local nCurTempTime = nHour * 60 + nMinute;
	if nCurTempTime >= 21 * 60 + 20 and nCurTempTime < 21 * 50 then
		return 1;
	end
	return 0;
--	return 1
end
--**********************************
-- ��ֵ
--**********************************
function x454545_ToMax( sceneId, selfId, killerId ,guildName,maxCount )
	PK_MAXCOUNTGUILD=guildName
	PK_MAXCOUNT=maxCount
end
--**********************************
-- ȫ��ͨ��
--**********************************
function x454545_GlobalCountNews( sceneId, selfId, targetId,str )
	BeginEvent( sceneId )
        	AddGlobalCountNews( sceneId, str )
        EndEvent( sceneId )
        DispatchEventList( sceneId, selfId, targetId )
end