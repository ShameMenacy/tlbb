--大理NPC
--天仙妹妹
--普通

--**********************************
--事件交互入口
--**********************************
function x714008_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Y猽 huy畉 c黙 t鷆 d呓ng minh v� kinh bao g癿:  b誧h, 鹫i 痿, th醝 b誧h, c鬾g t鬾, th呓ng kh鈛, tam 鈓 giao, l c痗, huy猼 h鋓, ki m鬾, x鬾g m鬾, 鹫i ho鄋h, thi阯 kh�, 鹫i bao.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
