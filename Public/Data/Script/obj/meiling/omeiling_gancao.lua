--梅岭NPC
--甘草
--普通

--**********************************
--事件交互入口
--**********************************
function x033004_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Kinh C鷆 鹫i h� ph醦 n骾 r ph鋓, Mai L頽h m鱥 chuy畁 l緉 b� kh鬾g c� g� n ngo鄆 t韓h to醤 c黙 鹫i h� ph醦. Ch鷑g ta c� l鄊 theo � c黙 姓i h� ph醦, cho d� ch猼 h鄋g v課 l c鹡g sung s呔ng h絥 s痭g m� h� m� qu醤g.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
