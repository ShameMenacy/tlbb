--苏州NPC
--李乐施
--普通

--脚本号
x001055_g_ScriptId = 001055

x001055_g_shoptableindex=104

--**********************************
--事件交互入口
--**********************************
function x001055_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"� ch� ta, ng呓i c� th� d鵱g tr� gi� thi畁 醕 鸨i l trang b� m� ng呓i c")
		AddNumText(sceneId,x001055_g_ScriptId,"D鵱g tr� gi� thi畁 醕 鸨i trang b�",7,0)
		EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x001055_OnEventRequest( sceneId, selfId, targetId, eventId )
	if	GetNumText() == 0	then
		DispatchShopItem( sceneId, selfId,targetId, x001055_g_shoptableindex )
	end
end
