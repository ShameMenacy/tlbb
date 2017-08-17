-- 005113
-- 齐煞云

--脚本号
x005113_g_scriptId = 005113

--所拥有的事件ID列表
x005113_g_eventList={402030}

--**********************************
--事件列表
--**********************************
function x005113_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"Ta nh nhi甿 v� di畉 K韓h H� th鼀 t t� tri玼 痨nh, tri玼 痨nh 餫ng chi陁 m� thi阯 h� nh鈔 s� c� ch� c鵱g ti猲 h鄋h di畉 ph�.")
	for i, eventId in x005113_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--事件交互入口
--**********************************
function x005113_OnDefaultEvent( sceneId, selfId,targetId )
	x005113_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--事件列表选中一项
--**********************************
function x005113_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x005113_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--接受此NPC的任务
--**********************************
function x005113_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x005113_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId )
			end
			return
		end
	end
end

--**********************************
--拒绝此NPC的任务
--**********************************
function x005113_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--拒绝之后，要返回NPC的事件列表
	for i, findId in x005113_g_eventList do
		if missionScriptId == findId then
			x005113_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--继续（已经接了任务）
--**********************************
function x005113_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x005113_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--提交已做完的任务
--**********************************
function x005113_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x005113_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--死亡事件
--**********************************
function x005113_OnDie( sceneId, selfId, killerId )
end
