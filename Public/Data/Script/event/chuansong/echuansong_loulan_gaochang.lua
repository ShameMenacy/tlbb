--所拥有的事件ID列表
x400942_g_Transport = 400900

--玩家进入一个 area 时触发
function x400942_OnEnterArea( sceneId, selfId )
        if GetLevel( sceneId, selfId ) < 90 then 
		BeginEvent( sceneId )
			AddText( sceneId, "N絠 n鄖 v� c鵱g nguy hi琺, sau khi 鹫t c 90 tr� l阯 m緄 c� th� 皙n n絠 n鄖! Ng呓i h銀 餴 tu luy畁 th阭 餴..." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, -1 )
	else 
		CallScriptFunction((x400942_g_Transport), "TransferFunc",sceneId, selfId, 424, 27, 37, 90, 1000)
	end
	
end

--玩家在一个 area 呆了一段时间没走则定时触发
function x400942_OnTimer( sceneId, selfId )
	-- 毫秒，看在这个 area 停留多久了
	StandingTime = QueryAreaStandingTime( sceneId, selfId )
	-- 5秒后仍未传送
	if StandingTime >= 5000 then
		x400942_OnEnterArea( sceneId, selfId )
		ResetAreaStandingTime( sceneId, selfId, 0 )
	end
end

--玩家离开一个 area 时触发
function x400942_OnLeaveArea( sceneId, selfId )
end
