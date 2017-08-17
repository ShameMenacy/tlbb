--鲁平


--脚本号
x031003_g_scriptId = 031003

--所拥有的事件ID列表
x031003_g_eventList={212119}

--**********************************
--事件列表
--**********************************
function x031003_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"Khi tr呔c tu眎 nh� kh鬾g suy ngh�, c� ng� ch� c th韈h l� n阯 c� d鄋h l, ch苙g h� ngh� s� g鈟 sai l. #r#rNh� ca v� t醕 th鄋h cho ta m� ph鋓 xu gia, A Thanh v� nh� ca m� su痶 鸲i th� ph, ta, ta, ta th馽 l� c� t礽!")
	for i, eventId in x031003_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--事件交互入口
--**********************************
function x031003_OnDefaultEvent( sceneId, selfId,targetId )
	x031003_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--事件列表选中一项
--**********************************
function x031003_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x031003_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--接受此NPC的任务
--**********************************
function x031003_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x031003_g_eventList do
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
function x031003_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--拒绝之后，要返回NPC的事件列表
	for i, findId in x031003_g_eventList do
		if missionScriptId == findId then
			x031003_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--继续（已经接了任务）
--**********************************
function x031003_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x031003_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--提交已做完的任务
--**********************************
function x031003_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x031003_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--死亡事件
--**********************************
function x031003_OnDie( sceneId, selfId, killerId )
end

