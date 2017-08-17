--大理NPC
--士兵
--普通
--脚本号
x002035_g_scriptId = 002035

--所拥有的事件ID列表
x002035_g_eventList={500040}

--**********************************
--事件列表
--**********************************
function x002035_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		local  PlayerName=GetName(sceneId,selfId)
		local  PlayerSex=GetSex(sceneId,selfId)
		if PlayerSex == 0 then
			PlayerSex = "C� n呓ng"
		else
			PlayerSex = "Thi猽 hi畃"
		end
		AddText(sceneId,"  "..PlayerName..PlayerSex.."#{OBJ_dali_0008}")
		for i, eventId in x002035_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--事件交互入口
--**********************************
function x002035_OnDefaultEvent( sceneId, selfId,targetId )
	x002035_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--事件列表选中一项
--**********************************
function x002035_OnEventRequest( sceneId, selfId, targetId, eventId )
	CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
	return
end

--**********************************
--接受此NPC的任务
--**********************************
function x002035_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002035_g_eventList do
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
function x002035_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--拒绝之后，要返回NPC的事件列表
	for i, findId in x002035_g_eventList do
		if missionScriptId == findId then
			x002035_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--继续（已经接了任务）
--**********************************
function x002035_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002035_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--提交已做完的任务
--**********************************
function x002035_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x002035_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--死亡事件
--**********************************
function x002035_OnDie( sceneId, selfId, killerId )
end
