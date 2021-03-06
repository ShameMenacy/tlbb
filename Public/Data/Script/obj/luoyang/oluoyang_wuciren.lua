--NPC
--
--脚本号
x000149_g_scriptId = 000149

--所拥有的事件ID列表
x000149_g_eventList={500600}

--普通

--**********************************
--事件交互入口
--**********************************
function x000149_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)

--**********************************
--NPC对话
--**********************************
		AddText(sceneId,"Nh鎛g anh h鵱g b鬾 t tr阯 giang h� c n阯 l遳 �, vi甤 quan h� v緄 nh鎛g bg h鎢 kh醕 tr阯 giang h� l� 餴玼 kh鬾g th� thi猽, nh鎛g bg h鎢 n鄌 疸 t譶g k猼 b醝 kim lang, ho t呓ng 鸢ng m鬾 ph醝, tr阯 giang h� lo課 l誧 n鄖 r hi猰 khi c醕 h� t靘 疬㧟.")
		
		for i, eventId in x000149_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
		
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--事件列表选中一项
--**********************************
function x000149_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x000149_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--接受此NPC的任务
--**********************************
function x000149_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000149_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId, targetId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId, targetId, missionScriptId )
			end
			return
		end
	end
end

--**********************************
--拒绝此NPC的任务
--**********************************
function x000149_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--拒绝之后，要返回NPC的事件列表
	for i, findId in x000149_g_eventList do
		if missionScriptId == findId then
			x000149_OnDefaultEvent( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--继续（已经接了任务）
--**********************************
function x000149_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000149_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--提交已做完的任务
--**********************************
function x000149_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x000149_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--死亡事件
--**********************************
function x000149_OnDie( sceneId, selfId, killerId )
end
