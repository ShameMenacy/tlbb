--峨嵋NPC
--孙二娘
--普通

x015014_g_ScriptId = 15014

--**********************************
--事件交互入口
--**********************************
function x015014_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ta c� th� truy玭 th� cho khinh c鬾g 穑c bi畉 c黙 b眓 ph醝, c� 餴玼 c t痭 1#-15")
		AddNumText(sceneId, x015014_g_ScriptId, "H鱟 khinh c鬾g ph醝 Nga My",12,0)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--事件列表选中一项
--**********************************
function x015014_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText()==0	then
		
		if GetMenPai(sceneId, selfId) == 4 then
			if	HaveSkill( sceneId, selfId, 27)<0	then
				-- 扣钱
				if GetMoney(sceneId, selfId)+GetMoneyJZ(sceneId, selfId) < STUDY_MENPAI_QINGGONG_SPEND  then
					BeginEvent(sceneId)
						AddText(sceneId,"Ng鈔 l唼ng tr阯 ng叨i c醕 h� kh鬾g 瘘 1#-15, v� v kh鬾g th� h鱟 khinh c鬾g b眓 m鬾")
					EndEvent(sceneId)
					DispatchEventList(sceneId,selfId,targetId)
					return
				end
				-- 扣钱
				LuaFnCostMoneyWithPriority(sceneId,selfId,STUDY_MENPAI_QINGGONG_SPEND)
				
				AddSkill( sceneId, selfId, 27 )
				DelSkill( sceneId, selfId, 34 )
				BeginEvent(sceneId)
					AddText(sceneId,"Ch鷆 m譶g ng呓i 疸 h鱟 疬㧟 khinh c鬾g c黙 b眓 m鬾, hy v鱪g ng呓i ti猵 t鴆 n� l馽 瓞 ph醫 huy danh ti猲g b眓 m鬾")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
			else
				BeginEvent(sceneId)
					AddText(sceneId,"Ch苙g ph鋓 ng呓i 疸 h鱟 r癷 sao?")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
			end
		elseif GetMenPai(sceneId, selfId) == 9 then
			BeginEvent(sceneId)
				AddText(sceneId,"H鱟 khinh c鬾g Nga My tr呔c ti阯 c gia nh ph醝 Nga My!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		else
			BeginEvent(sceneId)
				AddText(sceneId,"Ng呓i kh鬾g ph鋓 l� 甬 t� c黙 b眓 ph醝, ta kh鬾g th� d誽 ng呓i khinh c鬾g c黙 Nga My")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
	end	
end

--**********************************
--接受此NPC的任务
--**********************************
function x015014_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
end

--**********************************
--拒绝此NPC的任务
--**********************************
function x015014_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--拒绝之后，要返回NPC的事件列表
end

--**********************************
--继续（已经接了任务）
--**********************************
function x015014_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
end

--**********************************
--提交已做完的任务
--**********************************
function x015014_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
end

--**********************************
--死亡事件
--**********************************
function x015014_OnDie( sceneId, selfId, killerId )
end
