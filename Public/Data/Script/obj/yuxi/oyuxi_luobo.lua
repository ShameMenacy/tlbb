--玉溪NPC
--萝卜
--普通

--**********************************
--事件交互入口
--**********************************
function x027003_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Xin ch鄌. #r#rTa l� La B痗. #r#rCha ta l� T� M鐄 La, #r#rM� ta l� C� L� L誴. #rMu礽 ta l� Y Na. #r...#rX� l� xong.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
