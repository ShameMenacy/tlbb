--大理NPC
--米芾
--普通

--**********************************
--事件交互入口
--**********************************
function x002002_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Th呓ng S絥 b m ni阯 thu h鱝#rNh� H鋓 v� huy玭 v課 c� c#r#r姓i L� Qu痗 qu� l� m祎 qu痗 gia ph皀 vinh. Vua ch鷄 anh minh, mu鬾 d鈔 b痭 b� y阯  an c� l誧 nghi畃...")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
