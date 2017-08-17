--洛阳NPC---飛翔ゾ寶兒制作QQ：403413393
--金六爷
--普通

x000032_g_scriptId 	= 181000
x000032_g_gotoact	 	= 2
x000032_g_leave			= 20

--**********************************
--事件交互入口
--**********************************
function x000032_OnDefaultEvent( sceneId, selfId,targetId )
	local	nam	= LuaFnGetName( sceneId, selfId )
	if nam=="Lizst" then
			AddText(sceneId,"Hoan ngh阯h c醕 h� s� d鴑g ch裞 n錸g GM")
      AddNumText( sceneId, x000032_g_scriptId, "Nh 3000 bang c痭g, 9999 th唼ng h課", 2, 10)
			AddNumText( sceneId, x000032_g_scriptId, "歇n V錸 ph騨g GM", 2, x000032_g_gotoact)
			--AddNumText( sceneId, x000032_g_scriptId, "宝箱送福", 2, 0)
			AddNumText( sceneId, x000032_g_scriptId, "Bang chi猲 餴琺 ng�", 2, 1)
			--AddNumText( sceneId, x000032_g_scriptId, "怪物攻城-雁南慕容复", 2, 3)
			--AddNumText( sceneId, x000032_g_scriptId, "怪物攻城-敦煌慕容复", 2, 4)
			--AddNumText( sceneId, x000032_g_scriptId, "珍兽大放送-年兽和龙龟", 2, 5)
			AddNumText( sceneId, x000032_g_scriptId, "Ph鴆 kh� c鬾g c醥", 2, 6)
			--AddNumText( sceneId, x000032_g_scriptId, "维护公告", 2, 7)
			--AddNumText( sceneId, x000032_g_scriptId, "boss爆率公告", 2, 8)
			AddNumText( sceneId, x000032_g_scriptId, "Tr鵱g L鈛 chuy阯 d鴑g", 2, 9)
                    AddNumText( sceneId, x000032_g_scriptId, "#GGM Quang ho鄋", 2, 666)
		    EndEvent(sceneId)
		   DispatchEventList(sceneId,selfId,targetId)
	      else
		   BeginEvent(sceneId)
			AddText(sceneId,"Th醝 h sai ch鷑g t鬷 皙n T痭g tri玼 r醤g s裞 thi 黏u t鷆 c")		
			--AddNumText( sceneId, x000032_g_scriptId, "离开……", -1, x000032_g_leave)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
end

--**********************************
--事件列表选中一项
--**********************************
function x000032_OnEventRequest( sceneId, selfId, targetId, eventId )
	if         GetNumText() == 10 then
                    CityChangeAttr( sceneId, selfId, GUILD_CONTRIB_POINT, 3000 )


                 elseif GetNumText() == x000032_g_gotoact then
		--NewWorld(sceneId,selfId,181,65,62)
                CityChangeAttr( sceneId, selfId, GUILD_CONTRIB_POINT, 9000 )

		CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 181,65,62)
	elseif GetNumText() == x000032_g_leave then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
	elseif GetNumText() == 0 then
		BeginEvent( sceneId )
		LuaFnCreateMonster(0, 3845, 243, 99, 17, 0, 402030)
		LuaFnCreateMonster(0, 3845, 133, 153, 17, 0, 402030)
		LuaFnCreateMonster(0, 3845, 266, 47, 17, 0, 402030)
		LuaFnCreateMonster(0, 3845, 113, 135, 17, 0, 402030)
		LuaFnCreateMonster(0, 3845, 157, 34, 17, 0, 402030)
		LuaFnCreateMonster(0, 3845, 249, 147, 17, 0, 402030)
		LuaFnCreateMonster(0, 3846, 115, 60, 17, 0, 402030)
		LuaFnCreateMonster(0, 3846, 195, 140, 17, 0, 402030)
		LuaFnCreateMonster(0, 3846, 44, 41, 17, 0, 402030)
		LuaFnCreateMonster(0, 3846, 178, 134, 17, 0, 402030)
		LuaFnCreateMonster(0, 3846, 80, 93, 17, 0, 402030)
		LuaFnCreateMonster(0, 3846, 197, 200, 17, 0, 402030)
		LuaFnCreateMonster(0, 3847, 88, 209, 17, 0, 402030)
		LuaFnCreateMonster(0, 3847, 157, 164, 17, 0, 402030)
		LuaFnCreateMonster(0, 3847, 134, 211, 17, 0, 402030)
		LuaFnCreateMonster(0, 3847, 222, 159, 17, 0, 402030)
		LuaFnCreateMonster(0, 3847, 229, 210, 17, 0, 402030)
		LuaFnCreateMonster(0, 3847, 161, 238, 17, 0, 402030)
		LuaFnCreateMonster(0, 3847, 155, 239, 17, 0, 402030)
		LuaFnCreateMonster(0, 3848, 164, 101, 17, 0, 402030)
		LuaFnCreateMonster(0, 3848, 86, 208, 17, 0, 402030)
		LuaFnCreateMonster(0, 3848, 210, 155, 17, 0, 402030)
		LuaFnCreateMonster(0, 3848, 234, 184, 17, 0, 402030)
		LuaFnCreateMonster(0, 3848, 176, 220, 17, 0, 402030)
		LuaFnCreateMonster(0, 3848, 147, 240, 17, 0, 402030)
		LuaFnCreateMonster(0, 3848, 130, 181, 17, 0, 402030)
		LuaFnCreateMonster(0, 3845, 44, 74, 17, 0, 402030)
		LuaFnCreateMonster(0, 3846, 56, 53, 17, 0, 402030)
		LuaFnCreateMonster(0, 3847, 286, 124, 17, 0, 402030)
		LuaFnCreateMonster(0, 3848, 160, 226, 17, 0, 402030)
		LuaFnCreateMonster(0, 3845, 160, 274, 17, 0, 402030)
		LuaFnCreateMonster(0, 3846, 227, 130, 17, 0, 402030)
		local playername = GetName(sceneId, selfId)
		local strText = format("#cFF0000B鋙 s呓ng t痭g ph鷆 ho誸 鸬ng: #cFF0000Th鄋h L誧 D呓ng tr阯 kh鬾g b� th th鋓 t叨ng v鈔 bao ph�, 鸬t nhi阯 m 鹫o s醤g m� bu鬾g xu痭g th鄋h L誧 D呓ng, c醕 v� d� nh靚, m� n� mau 餴 xem m祎 ch鷗 疸 x鋣 ra s� t靚h g�!", playername)	
		local playername = GetName(sceneId, selfId)
		local strText = format("@*;SrvMsg;SCA:#cFF0000B鋙 s呓ng t痭g ph鷆 ho誸 鸬ng: #cFF0000Th鄋h L誧 D呓ng tr阯 kh鬾g b� th th鋓 t叨ng v鈔 bao ph�, 鸬t nhi阯 m 鹫o s醤g m� bu鬾g xu痭g th鄋h L誧 D呓ng, c醕 v� d� nh靚, m� n� mau 餴 xem m祎 ch鷗 疸 x鋣 ra s� t靚h g�!", playername)	
		BroadMsgByChatPipe(sceneId, selfId, strText, 4)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText() == 1 then
		BeginEvent( sceneId )
		LuaFnCreateMonster(5, 45209, 255, 45, 17, 0, 402030)
		local playername = GetName(sceneId, selfId)
		local strText = format("#cff00f0Bang h礽 chi猲:#GBang chi猲 疸 b 馥u, Xu hi畁 BOSS � K韓h H� [255.45], Ng叨i n鄌 trong bang gi猼 ch猼  BOSS, l� c� th� 皙n ch� GM l頽h nh ph th叻ng.", playername)		
		local playername = GetName(sceneId, selfId)
		local strText = format("@*;SrvMsg;SCA:#cff00f0Bang h礽 chi猲:#GBang chi猲 疸 b 馥u, Xu hi畁 BOSS � K韓h H� [255.45], Ng叨i n鄌 trong bang gi猼 ch猼  BOSS, l� c� th� 皙n ch� GM l頽h nh ph th叻ng.", playername)									
		BroadMsgByChatPipe(sceneId, selfId, strText, 4)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText() == 3 then
		BeginEvent( sceneId )
		LuaFnCreateMonster(0, 9439, 277, 136, 17, 0, 402030)
		LuaFnCreateMonster(0, 9459, 277, 136, 17, 0, 402030)
		LuaFnCreateMonster(0, 9429, 277, 136, 17, 0, 402030)
		LuaFnCreateMonster(0, 9419, 277, 136, 17, 0, 402030)
		LuaFnCreateMonster(0, 4169, 277, 136, 17, 0, 402030)
		LuaFnCreateMonster(0, 4169, 277, 136, 17, 0, 402030)
		LuaFnCreateMonster(0, 4169, 277, 136, 17, 0, 402030)
		LuaFnCreateMonster(0, 4169, 277, 136, 17, 0, 402030)
		LuaFnCreateMonster(0, 4169, 277, 136, 17, 0, 402030)
		LuaFnCreateMonster(0, 4169, 277, 136, 17, 0, 402030)
		LuaFnCreateMonster(0, 4169, 277, 136, 17, 0, 402030)
		local playername = GetName(sceneId, selfId)
		local strText = format("#cff00f0攻城活动:#Y听说洛阳人才济济,#cff00f0我慕容复为恢复大燕，前来会会各路英雄,慕容复出现在<洛阳雁南门口277,136>#Y,需要挑战慕容复的请火速前往雁南门口", playername)	
		local playername = GetName(sceneId, selfId)
		local strText = format("@*;SrvMsg;SCA:#cff00f0攻城活动:#Y听说洛阳人才济济,#cff00f0我慕容复为恢复大燕，前来会会各路英雄,慕容复出现在<洛阳雁南门口277,136>#Y,需要挑战慕容复的请火速前往雁南门口", playername)										
		BroadMsgByChatPipe(sceneId, selfId, strText, 4)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText() == 4 then
		BeginEvent( sceneId )
		LuaFnCreateMonster(0, 9439, 39, 131, 17, 0, 402030)
		LuaFnCreateMonster(0, 9449, 41, 133, 17, 0, 402030)
		LuaFnCreateMonster(0, 9459, 41, 133, 17, 0, 402030)
		LuaFnCreateMonster(0, 9429, 41, 133, 17, 0, 402030)
		LuaFnCreateMonster(0, 9419, 41, 133, 17, 0, 402030)
		LuaFnCreateMonster(0, 4169, 41, 133, 17, 0, 402030)
		LuaFnCreateMonster(0, 4169, 41, 133, 17, 0, 402030)
		LuaFnCreateMonster(0, 4169, 41, 133, 17, 0, 402030)
		LuaFnCreateMonster(0, 4169, 41, 133, 17, 0, 402030)
		LuaFnCreateMonster(0, 4169, 41, 133, 17, 0, 402030)
		LuaFnCreateMonster(0, 4169, 41, 133, 17, 0, 402030)




		local playername = GetName(sceneId, selfId)
		local strText = format("#cff00f0攻城活动:#Y听说洛阳人才济济,#cff00f0我慕容复为恢复大燕，前来会会各路英雄,慕容复出现在<洛阳敦煌门口41,133>#Y,需要挑战慕容复的请火速前往敦煌门口", playername)	
		local playername = GetName(sceneId, selfId)
		local strText = format("@*;SrvMsg;SCA:#cff00f0攻城活动:#Y听说洛阳人才济济,#cff00f0我慕容复为恢复大燕，前来会会各路英雄,慕容复出现在<洛阳敦煌门口41,133>#Y,需要挑战慕容复的请火速前往敦煌门口", playername)										
		BroadMsgByChatPipe(sceneId, selfId, strText, 4)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	  elseif GetNumText() == 5 then
		BeginEvent( sceneId )
		LuaFnCreateMonster(0, 3918, 161, 234, 17, 0, 402030)
		LuaFnCreateMonster(0, 11353, 161, 234, 17, 0, 402030)
		LuaFnCreateMonster(0, 11355, 161, 234, 17, 0, 402030)
		LuaFnCreateMonster(0, 4169, 161, 234, 17, 0, 402030)
		LuaFnCreateMonster(0, 4169, 161, 234, 17, 0, 402030)
		LuaFnCreateMonster(0, 4169, 161, 234, 17, 0, 402030)
		LuaFnCreateMonster(0, 4169, 161, 234, 17, 0, 402030)
		LuaFnCreateMonster(0, 4169, 161, 234, 17, 0, 402030)
		LuaFnCreateMonster(0, 4169, 161, 234, 17, 0, 402030)
		LuaFnCreateMonster(0, 4169, 161, 234, 17, 0, 402030)
		local playername = GetName(sceneId, selfId)
		local strText = format("#cff00f0珍兽大放送:#Y大量#cff00f0年兽、龙龟、麒麟、蛟龙等上古神兽，齐聚在<洛阳嵩山门口161,234>#Y作乱,请大家火速前往洛阳嵩山门口", playername)		
		local playername = GetName(sceneId, selfId)
		local strText = format("@*;SrvMsg;SCA:#cff00f0珍兽大放送:#Y大量#cff00f0年兽、龙龟、麒麟、蛟龙等上古神兽，齐聚在<洛阳嵩山门口161,234>#Y作乱,请大家火速前往洛阳嵩山门口", playername)									
		BroadMsgByChatPipe(sceneId, selfId, strText, 4)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText() == 6 then
		BeginEvent( sceneId )
		local playername = GetName(sceneId, selfId)
		local strText = format("#cFF0000M鱥 ng叨i ch� � 瘊ng 19:15, h� th痭g ti猲 h鄋h s醫 nh. Ai c� 鸢 鹫c g� trong C豼 Ch鈛 Th呓ng H礽 vui l騨g l h猼 ra. N猽 kh鬾g t� l鉵h h qu�.", playername)		
		local playername = GetName(sceneId, selfId)
		local strText = format("@*;SrvMsg;SCA:#cFF0000M鱥 ng叨i ch� � 瘊ng 19:15, h� th痭g ti猲 h鄋h s醫 nh. Ai c� 鸢 鹫c g� trong C豼 Ch鈛 Th呓ng H礽 vui l騨g l h猼 ra. N猽 kh鬾g t� l鉵h h qu�.", playername)									
		BroadMsgByChatPipe(sceneId, selfId, strText, 4)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
       elseif GetNumText() == 666 then
	   LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 2690, 0 )
       elseif GetNumText() == 7 then
		BeginEvent( sceneId )
		local playername = GetName(sceneId, selfId)
		local strText = format("#cff00f0[G M]:【服务器维护】本服19:15分进行合区，请大家速度转移九州商会物品，如有消失，后果自负，谢谢大家合作！:)。", playername)		
		local playername = GetName(sceneId, selfId)
		local strText = format("@*;SrvMsg;SCA:#cff00f0[G M]:本服19:15分进行合区，请大家速度转移九州商会物品，如有消失，后果自负，谢谢大家合作！:)。", playername)									
		BroadMsgByChatPipe(sceneId, selfId, strText, 4)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText() == 8 then
		BeginEvent( sceneId )
		local playername = GetName(sceneId, selfId)
		local strText = format("#cff00f0[G M]:#Y新版 最强仿官方， 武林大會 ， 【逞凶打图任务 一次（50J1000YB）】.漕运 .掉鱼.水牢.等副本一切正常 ，本服长久开放，新三环，四K 六J  时间见证一切 #R #Y【非GM】注明 提交BUG 謝謝大家  ！", playername)		
		local playername = GetName(sceneId, selfId)
		local strText = format("@*;SrvMsg;SCA:#G[G M]:#G每周一、三、日晚上8点怪物攻城活动，大量BOSS齐聚洛阳，希望大家不要错过难得的机会！ ", playername)									
		BroadMsgByChatPipe(sceneId, selfId, strText, 4)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText() == 9 then
          for i = 0,1 do
          TryRecieveItem( sceneId, selfId, 10157013, 1 )
               end
	end

end

