--苏州NPC
--颜查散
--一般

--**********************************
--事件交互入口
--**********************************
function x001033_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Cu礳 thi l n鄖, hi玭 t鄆 kh c醕 n絠 t trung v� T� Ch鈛, th s� ta ch苙g c� ch鷗 n ch ph thg trong tay n鄌 c�.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
