--洛阳NPC
--李师师
--普通

--**********************************
--事件交互入口
--**********************************
function x000027_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Hoa bi猼 l鄊 sao 疣nh r絠 r鴑g, y猲 ng� t譶g quen li畁g c醤h v�. M祎 m靚h b癷 h癷 l痠 th絤 v叨n nh�")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
