--事件
--传送到洛阳

--脚本号
x400919_g_ScriptId = 400919

--任务文本描述
x400919_g_MissionName="Tr� v� L誧 D呓ng"
x400919_g_MissionInfo="Ta l� ng叨i v chuy琻 l呓ng th馽 v� kinh th鄋h 姓i Li陁. Tr阯 疬秐g 餴 c� r nhi玼 Th鋙 Nguy阯 Lang, h銀 餴 ti陁 di畉 ch鷑g, ta m緄 c� th� ti猵 t鴆 v chuy琻 疬㧟..."  --任务描述
x400919_g_MissionTarget="Gi猼 ch猼 5 con Th鋙 Nguy阯 Lang"		--任务目标
x400919_g_ContinueInfo="H銀 gi猼 ch猼 5 con Th鋙 Nguy阯 Lang. Th鋙 Nguy阯 ph韆 nam c� r nhi玼 Th鋙 Nguy阯 Lang, c th nha."		--未完成任务的npc对话
x400919_g_MissionComplete="C鋗 t� c醕 h�, cu痠 c鵱g th� ta c鹡g ti猵 t鴆 v chuy琻 l呓ng th馽 疬㧟 r癷."					--完成任务npc说话的话

--**********************************
--入口函数
--**********************************
function x400919_OnDefaultEvent( sceneId, selfId, targetId )	--点击该任务后执行此脚本
	CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 0, 159, 240)
end

--**********************************
--列举事件
--**********************************
function x400919_OnEnumerate( sceneId, selfId, targetId )
		AddNumText(sceneId,x400919_g_ScriptId,x400919_g_MissionName)
end
