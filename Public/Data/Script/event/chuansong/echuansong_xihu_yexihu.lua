x400926_g_ScriptId = 400926

x400926_left 	=91.0000
x400926_right	=95.0000

x400926_top  	=42.0000
x400926_bottom	=46.0000


--��ҽ���һ�� area ʱ����
function x400926_OnEnterArea( sceneId, selfId )

BeginUICommand(sceneId)
		UICommand_AddInt(sceneId, x400926_g_ScriptId);
		UICommand_AddString(sceneId, "GotoYexihu");
		UICommand_AddString(sceneId, "D� T�y H� l� khu v�c kh�ng t�ng s�t kh�, c�c h� x�c nh�n ti�n v�o?");
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 24)
	--CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 121,84,48)
end

--�����һ�� area ����һ��ʱ��û����ʱ����
function x400926_OnTimer( sceneId, selfId )
	-- ���룬������� area ͣ�������
	StandingTime = QueryAreaStandingTime( sceneId, selfId )
	-- 5�����δ����
	if StandingTime >= 5000 then
		x400926_OnEnterArea( sceneId, selfId )
		ResetAreaStandingTime( sceneId, selfId, 0 )
	end
end

--����뿪һ�� area ʱ����
function x400926_OnLeaveArea( sceneId, selfId )
end

--**********************************
--������ں���
--**********************************
function x400926_GotoYexihu( sceneId, selfId, targetId )	--����������ִ�д˽ű�
	
	-- �������ǲ��ǻ��������Χ��
	if sceneId ~= 30   then
		--C�n � ��ng �i�m truy�n t�ng!
		BeginEvent(sceneId)
			AddText(sceneId,"C�n � ��ng �i�m truy�n t�ng!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	local targetX, targetZ = GetWorldPos(sceneId, selfId)
	
	if 	targetX < x400926_left or
			targetX > x400926_right or
			targetZ < x400926_top  or
			targetZ > x400926_bottom   then
		
		BeginEvent(sceneId)
			AddText(sceneId,"C�n � ��ng �i�m truy�n t�ng!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
			
	end
	
	CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 121,84,48)
		
end