--琼州NPC
--元子衿
--普通

--**********************************
--事件交互入口
--**********************************
function x035002_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Bang ch� Ng誧 ng� bang c黙 b鱪 ta, ch韓h l� \"Nam H鋓 Ng誧 Th\" Nh誧 L鉶 Tam. L n鄖 ta ph鴑g l畁h Tam ca, 餴 L遳 C 痄o 痼n Tam t v� Qu蟦h Ch鈛. Gi� Tam t 疸 v�, ch鷑g ta ch飊h 鸠n l読 m祎 ch鷗 s� 皙n Ng誧 Ng� Bang t靘 Tam ca.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
