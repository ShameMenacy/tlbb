-- 领奖NPC

x894068_g_scriptId = 894068

--**********************************
--事件交互入口
--**********************************
function x894068_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"C醕 ng呓i s� ph鋓 tr� gi� cho t礽 l瞚 c醕 ng呓i 疸 g鈟 ra...")
		AddNumText( sceneId, x894068_g_scriptId, "#c00ff00Chi猲 黏u", 10, 200)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
--**********************************
--事件列表选中一项
--**********************************
function x894068_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 200 then
		BeginEvent(sceneId)
			AddText(sceneId,"Huynh 甬 鸢ng t鈓. M祎 khi ch鷑g ta 疸 h䅟 s裞 th� c醕 ng呓i ch� c� 疬秐g ch猼 m� th鬷!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
end
