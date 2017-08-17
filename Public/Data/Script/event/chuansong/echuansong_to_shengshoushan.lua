--created by WTT 2009.3.2

--�¼������͵�ʥ��ɽ

--�ű���
x400963_g_ScriptId = 400963

--�����ı�����
x400963_g_MissionName="#{QSSS_090302_1}"		-- ȥʥ��ɽ
x400963_g_MissionInfo="�i Th�nh Th� S�n"  		-- ��������
x400963_g_MissionTarget="�i Th�nh Th� S�n"		-- ����Ŀ��
x400963_g_ContinueInfo="�i Th�nh Th� S�n"			-- δ��������npc�Ի�
x400963_g_MissionComplete="�i Th�nh Th� S�n"	-- �������npc˵���Ļ�

--**********************************
--��ں���
--**********************************
function x400963_OnDefaultEvent( sceneId, selfId, targetId )	--����������ִ�д˽ű�
	
	-- �����������ǲ����С���Ʊ������������оͲ���ʹ������Ĺ���
	if GetItemCount(sceneId, selfId, 40002000) >= 1 then
		BeginEvent( sceneId )
			AddText( sceneId, "  Ng߽i tr�n ng߶i c� ng�n phi�u, ta kh�ng th� gi�p g� ���c." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
  
	--�������
	if GetTeamId(sceneId,selfId)>=0 and 
		IsTeamFollow(sceneId, selfId)==1 and
		LuaFnIsTeamLeader(sceneId,selfId)==1 then
		num=LuaFnGetFollowedMembersCount( sceneId, selfId)
		local mems = {}
		for	i=0,num-1 do
			mems[i] = GetFollowedMember(sceneId, selfId, i)
			if mems[i] == -1 then
				return
			end
			if IsHaveMission(sceneId,mems[i],4021) > 0 then
				BeginEvent( sceneId )
					AddText( sceneId, "  Trong �i ng� c� th�nh vi�n �ang trong tr�ng th�i T�o V�n, kh�ng th� d�ch chuy�n." )
				EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
				return
			end
		end
	end
  
	if IsHaveMission(sceneId,selfId,4021) > 0 then
		BeginEvent( sceneId )
			AddText( sceneId, "  Ng߽i �ang trong tr�ng th�i T�o V�n, kh�ng th� d�ch chuy�n." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
	
	-- ���ϼ���ͨ��	
	BeginUICommand(sceneId)
			UICommand_AddInt(sceneId, x400963_g_ScriptId);			
			UICommand_AddInt(sceneId, targetId);
			UICommand_AddString(sceneId, "GotoShengShouShan");
			UICommand_AddString(sceneId, "#{QSSS_090302_2}");		-- ��ʥ��ɽΪ����ɱ����������ע�ⰲȫ����ȷ��Ҫ�����𣿡�
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 24)
	
end

--**********************************
--�о��¼�
--**********************************
function x400963_OnEnumerate( sceneId, selfId, targetId )
	
	AddNumText(sceneId,x400963_g_ScriptId,x400963_g_MissionName, 9, 1)	
	
end

--**********************************
--������ʥ��ɽ
--**********************************
function x400963_GotoShengShouShan( sceneId, selfId, targetId )

	CallScriptFunction((400900), "TransferFuncFromNpc", sceneId, selfId, 158, 233, 225, 21 );
	return
	
end
