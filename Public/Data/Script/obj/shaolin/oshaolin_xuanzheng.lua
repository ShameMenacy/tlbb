--少林NPC
--玄证
--普通

x009035_g_scriptId = 009035

--**********************************
--事件交互入口
--**********************************
function x009035_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Kh鬾g bi猼 t読 sao, m礳 nh鈔 trong M礳 Nh鈔 H課g nh th秈 kh鬾g 餴玼 khi琻 疬㧟, hi畁 ch誽 kh ch鵤, xem th� ch� h靚h dong l呓ng thi畁, cho th� ch� c� h礽 r鑞 luy畁, th� ch� c� mu痭 kh鬾g?")
		AddNumText(sceneId,x009035_g_scriptId,"Luy畁 t 疳nh m礳 nh鈔",10,0)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--事件列表选中一项
--**********************************
function x009035_OnEventRequest( sceneId, selfId, targetId, eventId )
	if	GetNumText()==0	then
		if	GetLevel( sceneId, selfId)<41  then	
			BeginEvent( sceneId )
			local strText = "M礳 nh鈔 c黙 b眓 t� tuy d� 疳nh, nh遪g 鹌ng c th� ch� ch遖 t緄 41, e 裯g ph� kh鬾g n眎, theo � l鉶 t錸g 瘙i 1 th秈 gian n鎍 h莕g t緄"
			AddText( sceneId, strText )
			EndEvent( sceneId )
			DispatchEventList(sceneId,selfId,targetId)
		else
			CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 139,95,141)
		end
	end
end
