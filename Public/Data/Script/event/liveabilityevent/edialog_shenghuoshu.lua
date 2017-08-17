--对话事件 npc白颖明

--脚本号
x713612_g_ScriptId = 713512

--对话内容
x713612_g_dialog = {"#{event_liveabilityevent_0013}",
			"C鈛 h鰅 th� 2",
			"Ch� c c醕 h� h鱟 疬㧟 ph呓ng ph醦 Th醤h H鯽 Thu, l� c� th� ch� ra c醕 lo読 餫n d唼c r癷",
			"T nhi阯, n� c騨 ph� thu礳 v鄌 鹌ng c k� n錸g n鎍. 衅ng c k� n錸g c鄋g cao, 餫n d唼c ch� ra s裞 m課h c鄋g l緉",
			"#{event_liveabilityevent_0014}"}
x713612_g_button = {"N骾 v� th馽 t� ch鷗 餴",
			"L鄊 th� n鄌 瓞 ch� 餫n d唼c?",
			"Sau 痼 ra sao?",
			"K猼 qu� th� n鄌?",
			}

--**********************************
--任务入口函数
--**********************************
function x713612_OnDefaultEvent( sceneId, selfId, targetId, MessageNum )	--MessageNum是对话编号，用于调用不同对话
		BeginEvent(sceneId)
			AddText(sceneId, x713612_g_dialog[MessageNum])
			if MessageNum ~= 5 then
				AddNumText(sceneId,MessageNum, x713612_g_button[MessageNum],11,-1)
			end
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
end

--**********************************
--列举事件
--**********************************
function x713612_OnEnumerate( sceneId, selfId, targetId )
		AddNumText(sceneId,x713612_g_ScriptId,"T靘 hi瑄 Th醤h H鯽 Thu",11,-1)
end

--**********************************
--检测接受条件
--**********************************
function x713612_CheckAccept( sceneId, selfId )
end

--**********************************
--接受
--**********************************
function x713612_OnAccept( sceneId, selfId, AbilityId )
end
