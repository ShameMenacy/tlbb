--逍遥NPC
--公治子长
--普通

x014035_g_scriptId = 014035

--**********************************
--事件交互入口
--**********************************
function x014035_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"G 疴y trong l鷆 v� � ta 疸 t靘 疬㧟 X鋙 t唼ng K� th� n鄖, l鄊 theo trong s醕h, qu� nhi阯 疸 t誳 ra Thi阯 C� Kh鬷 L瞚. T韓h n錸g c黙 ch鷑g phi th叨ng, d叨ng nh� c� th� suy ngh�, c� mu痭 th� ki猲 th裞 kh鬾g?")
		AddNumText(sceneId,x014035_g_scriptId,"Thi阯 C� Kh鬷 L瞚",10,0)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--事件列表选中一项
--**********************************
function x014035_OnEventRequest( sceneId, selfId, targetId, eventId )
	if	GetNumText()==0	then
		if	GetLevel( sceneId, selfId)<81  then	
			BeginEvent( sceneId )
			local strText = "不要太小看我公冶子长的技艺，等级达不到81级，我是不会让你见天机傀儡的。"
			AddText( sceneId, strText )
			EndEvent( sceneId )
			DispatchEventList(sceneId,selfId,targetId)
		else
			CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 144,51,129)
		end
	end
end
