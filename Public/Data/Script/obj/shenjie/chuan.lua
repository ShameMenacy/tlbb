 -- ������̨�������͵�

x009990_g_ScriptId = 009990
x009990_g_ChallengeScriptId = 806014

-- ��ҽ��봫�͵�
function x009990_OnEnterArea( sceneId, selfId )
	CallScriptFunction(x009990_g_ChallengeScriptId, "LeaveScene", sceneId, selfId )
end

-- ���ͣ���ڴ��͵�
function x009990_OnTimer( sceneId, selfId )
	-- ���룬������� area ͣ�������
	StandingTime = QueryAreaStandingTime( sceneId, selfId )
	-- 5�����δ����
	if StandingTime >= 5000 then
		x009990_OnEnterArea( sceneId, selfId )
		ResetAreaStandingTime( sceneId, selfId, 0 )
	end
end

-- ����뿪���͵�
function x009990_OnLeaveArea( sceneId, selfId )
CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 2, 241, 138 )
	return
end


