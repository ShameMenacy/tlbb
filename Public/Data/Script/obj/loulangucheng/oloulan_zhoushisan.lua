--楼兰NPC		装备修理
--周十三
--脚本号

x001106_g_ScriptId = 001106

--**********************************
--事件交互入口
--**********************************
function x001106_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"#{LLXL_081113_1}")
		AddNumText(sceneId,x001106_g_ScriptId,"Ta mu痭 s豠 ch鎍 trang b�",6,1)
		AddNumText(sceneId,x001106_g_ScriptId,"Gia t錸g s� l s豠 ch鎍", 6, 2) --zchw
		AddNumText(sceneId, x001106_g_ScriptId,"T靘 hi瑄 th阭 v� s豠 ch鎍 trang b�",11,12);
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--事件列表选中一项
--**********************************
function x001106_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 1 then
		
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		UICommand_AddInt( sceneId, -1 )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 19810313 )
	elseif GetNumText() == 2 then
		BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,targetId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1004)
		return
	end
	
	if GetNumText() == 12 then
		BeginEvent(sceneId)						
			AddText(sceneId,"#{function_help_043}#r")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end	
end
