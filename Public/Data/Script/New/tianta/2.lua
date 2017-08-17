-- 领奖NPC

x100012_g_scriptId = 100012

--**********************************
--事件交互入口
--**********************************
function x100012_OnDefaultEvent( sceneId, selfId, targetId )
		local	lev	= GetLevel( sceneId, selfId )
		if lev < 99 then
			BeginEvent(sceneId)
	   			AddText( sceneId, " 您好！您的等于不足100级！" )
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		else 
			BeginEvent(sceneId)
		   		--AddText( sceneId, "    #Y闯天塔活动可获得大量宝物，10万赠点票.高级宝石.高级合成.玫瑰花.重楼材料.时装坐骑材料等等!" )	
		   		AddText( sceneId, "  #G注意#Y:#cFF0000通天塔二层：#G开启时间为#cFF0000[19：30]。" )
		   		AddNumText( sceneId, x100012_g_ScriptId, "#e0ba4b6传送通天塔二层", 6, 30 )
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
end
--**********************************
--事件列表选中一项
--**********************************
function x100012_OnEventRequest( sceneId, selfId, targetId, eventId )

	if GetNumText() == 30 then
      
       local nQuarter = mod(GetQuarterTime(),100);
             if nQuarter < 78 or nQuarter >= 80  then
            BeginEvent(sceneId)
		AddText(sceneId,"通天塔二层开启时间为(19:30），暂时无法传送!" )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return 0
	end

     CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 546, 255, 367,10 )--传送
    end
end

--**********************************
-- 对话窗口信息提示
--**********************************
function x100012_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
-- 屏幕中间信息提示
--**********************************
function x100012_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
--**********************************
--消息提示
--**********************************
function x100012_MsgBox( sceneId, selfId, str )	
	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
--对话提示
--**********************************
function x100012_TalkMsg( sceneId, selfId, targetId, str )	
	BeginEvent(sceneId)
      AddText(sceneId, str)      
  EndEvent(sceneId)
  DispatchEventList(sceneId,selfId,targetId)    
end
