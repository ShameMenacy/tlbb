-- 300042 
-- 姓i T T鼀 衋n
-- 使用之后可以将所有的已分配点数变为潜能。


-- 脚本号
x300042_g_scriptId = 300042
x300042_g_ItemId = 30008004  -- 药水ID

x300042_g_UseScriptId = 300052
--**********************************
-- 事件交互入口
--**********************************
function x300042_OnDefaultEvent( sceneId, selfId )
	BeginEvent(sceneId)
		AddText(sceneId, "#Y姓i T T鼀 衋n")
		AddText(sceneId, "Sau khi s� d鴑g c� th� mang t c� c醕 餴琺 s� 疸 ph鈔 ph痠 bi猲 th鄋h ti玬 n錸g.")
			AddNumText(sceneId, x300042_g_UseScriptId,"B鈟 gi� t読 h� mu痭 ch飊h 餴琺", 0, 1)
			AddNumText(sceneId, x300042_g_UseScriptId,"Sau n鄖 h銀 t韓h", 0, 2)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,-1)
	
end

--**********************************
-- 
--**********************************
function x300042_IsSkillLikeScript( sceneId, selfId)
	return 0
end
