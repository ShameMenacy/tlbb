--嵩山 索琳

--脚本号
--g_scriptId = 003008

--所拥有的事件ID列表
x003008_g_eventList={}--210808} --212603,212606,210807

--**********************************
--事件列表
--**********************************
function x003008_UpdateEventList( sceneId, selfId,targetId )
    BeginEvent(sceneId)
	local  PlayerName=GetName(sceneId,selfId)
    AddText(sceneId,"锈y l� Tung S絥 r癷, c醕 h� c� bi猼 T鵱g D呓ng th� vi畁 n � 疴u kh鬾g?")

	for i, eventId in x003008_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--事件交互入口
--**********************************
function x003008_OnDefaultEvent( sceneId, selfId,targetId )
	x003008_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--事件列表选中一项
--**********************************
function x003008_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x003008_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--接受此NPC的任务
--**********************************
function x003008_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x003008_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId, targetId )
			end
			return
		end
	end
end

--**********************************
--拒绝此NPC的任务
--**********************************
function x003008_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--拒绝之后，要返回NPC的事件列表
	for i, findId in x003008_g_eventList do
		if missionScriptId == findId then
			x003008_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--继续（已经接了任务）
--**********************************
function x003008_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x003008_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--提交已做完的任务
--**********************************
function x003008_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x003008_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--死亡事件
--**********************************
function x003008_OnDie( sceneId, selfId, killerId )
end
