--逍遥NPC
--问路
--脚本号
x014034_g_scriptId = 014034

--所拥有的事件ID列表
x014034_g_eventList={500069}	

--**********************************
--事件列表
--**********************************
function x014034_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		local  PlayerName=GetName(sceneId,selfId)
		local  PlayerSex=GetSex(sceneId,selfId)
		if PlayerSex == 0 then
			PlayerSex = " c� n呓ng "
		else
			PlayerSex = " thi猽 hi畃 "
		end
		AddText(sceneId,"L錸g Ba 械ng ch補 r nhi玼 c� quan nguy hi琺, quanh l� v馽 th苖. N猽 kh� kh錸, t読 h� c� th� ch� 疬秐g cho c醕 h�.")
		for i, eventId in x014034_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--事件交互入口
--**********************************
function x014034_OnDefaultEvent( sceneId, selfId,targetId )
	x014034_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--事件列表选中一项
--**********************************
function x014034_OnEventRequest( sceneId, selfId, targetId, eventId )
	CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
	return
end

--**********************************
--接受此NPC的任务
--**********************************
function x014034_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x014034_g_eventList do
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
function x014034_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--拒绝之后，要返回NPC的事件列表
	for i, findId in x014034_g_eventList do
		if missionScriptId == findId then
			x014034_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--继续（已经接了任务）
--**********************************
function x014034_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x014034_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--提交已做完的任务
--**********************************
function x014034_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x014034_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--死亡事件
--**********************************
function x014034_OnDie( sceneId, selfId, killerId )
end
