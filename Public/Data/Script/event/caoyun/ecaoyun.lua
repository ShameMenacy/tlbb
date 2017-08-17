--MisDescBegin

x311010_g_MissionId = 4021

x311010_g_ScriptId = 311010
--MisDescEnd
-- 漕运使对话UI 	0
-- 交易UI					1

--任务变量
--第一位存的是(卖)热销的值  						第0位		Price_Up
--第二位存的是(买)杀价的值							第1位		Price_Down
--第三位存的是身上盐、铁、米的数量			第2位   盐*100+铁*10+米
--			第四位存的是热销的CD上次使用时间			第3位		
--			第五位存的是杀价的CD上次使用时间			第4位		
--第四位存的是玩家当前的状态，表示进行到的步骤，走到的流程!		第3位
--第五位存的是玩家当前的特殊状态，如高价漕货等				第4位
--第六位存的是官票上的面额  						第5位		Balance
--第七位存的是漕运使的TargetId，1:代表洛阳的漕运使，2:代表苏州，3代表大理，4代表可以出售漕货的		第6位 TransNPC
--第八位存的是货商上次发生事件的时间，一定的时间内，只能执行一次货商的特殊事件!
--
--官票的物品编号40002109
--g_CashItem={{id=40002109,num=1}}
x311010_g_CashItem_id = 40002109
x311010_g_CashItem_count = 1
x311010_g_EludeItem = {{id=20108157,num=1},{id=20108169,num=2}}
x311010_g_ChopItem = {{id=30308020,num=1} }
x311010_g_CertificateItem ={ {id=30308020,num=1} }
x311010_g_Accommodate_Distinction = {};
x311010_g_Acclimatize_Distinction = {};
x311010_g_Traverse_Region = {3,4,5,6,7,8}
--x311010_g_Title_Times_Confine = {0,100,1000,3000,7500,20000,50000}
x311010_g_Title_Times_Confine = {50000,20000,7500,3000,1000,100,0}
--x311010_g_Title_Confine 			= {124,125,126,127,128,129,130}
x311010_g_Title_Confine 			= {130,129,128,127,126,125,124}
--x311010_g_Title_Name_Confine	= {"漕运商","漕运走卒","漕运押解官","漕运统领","漕运调度副使","漕运调度使","漕运总提调"}
x311010_g_Title_Name_Confine	= {"T鄌 V T眓g 鞋 衖玼","T鄌 V 衖玼 械 S�","T鄌 V 衖玼 械 Ph� S�","T鄌 V Th痭g L頽h","T鄌 V 羛 Gi鋓 Quan","T鄌 V T T痶","T鄌 V Doanh"}


x311010_g_Reward_Medicine_HP = {30001001,30001002,30001003,30001004,30001005,30001006,30001007,30001008,30001009,30001010}
x311010_g_Reward_Medicine_MP = {30002001,30002002,30002003,30002004,30002005,30002006,30002007,30002008,30002009,30002010}

x311010_g_Accommodate_Distinction[1] = 3530
x311010_g_Accommodate_Distinction[2] = 3531
x311010_g_Accommodate_Distinction[3] = 3532
x311010_g_Accommodate_Distinction[4] = 3533
x311010_g_Accommodate_Distinction[5] = 3534
x311010_g_Accommodate_Distinction[6] = 3535
x311010_g_Accommodate_Distinction[7] = 3536
x311010_g_Accommodate_Distinction[8] = 3537
x311010_g_Accommodate_Distinction[9] = 3538
x311010_g_Accommodate_Distinction[10] =3539
                               
x311010_g_Acclimatize_Distinction[1] = 3540
x311010_g_Acclimatize_Distinction[2] = 3541
x311010_g_Acclimatize_Distinction[3] = 3542
x311010_g_Acclimatize_Distinction[4] = 3543
x311010_g_Acclimatize_Distinction[5] = 3544
x311010_g_Acclimatize_Distinction[6] = 3545
x311010_g_Acclimatize_Distinction[7] = 3546
x311010_g_Acclimatize_Distinction[8] = 3547
x311010_g_Acclimatize_Distinction[9] = 3548
x311010_g_Acclimatize_Distinction[10] = 3549

-- add by zchw for caoyun
x311010_g_Accommodate_Distinction[11] = 33530
x311010_g_Accommodate_Distinction[12] = 33531
x311010_g_Accommodate_Distinction[13] = 33532
x311010_g_Accommodate_Distinction[14] = 33533
x311010_g_Accommodate_Distinction[15] = 33534
x311010_g_Accommodate_Distinction[16] = 33535
x311010_g_Accommodate_Distinction[17] = 33536
x311010_g_Accommodate_Distinction[18] = 33537
x311010_g_Accommodate_Distinction[19] = 33538
x311010_g_Accommodate_Distinction[20] =33539

x311010_g_Acclimatize_Distinction[11] = 33540
x311010_g_Acclimatize_Distinction[12] = 33541
x311010_g_Acclimatize_Distinction[13] = 33542
x311010_g_Acclimatize_Distinction[14] = 33543
x311010_g_Acclimatize_Distinction[15] = 33544
x311010_g_Acclimatize_Distinction[16] = 33545
x311010_g_Acclimatize_Distinction[17] = 33546
x311010_g_Acclimatize_Distinction[18] = 33547
x311010_g_Acclimatize_Distinction[19] = 33548
x311010_g_Acclimatize_Distinction[10] = 33549
x311010_g_TitleTableOfMonster = {
		{part1="C呔p Ti玭", part2="Hung 邪"},
		{part1="朽o Ng鴆", part2="羉 Nh鈔"},
		{part1="Tr鱪g 羘", part2="C叨ng 鹫o"},
		{part1="Gi猼 Ng叨i", part2="K� Gian"},
		{part1="械c Th�", part2="羉 Gi"},
		{part1="S醫 t鈓", part2="Th韈h Kh醕h"},
		{part1="Ti畉 Ti陁", part2="羉 B�"},
		}
						
x311010_g_NameTableOfMonster = {
	{part1="Tri畊", part2="V錸", part3="B�"},
	{part1="Ti玭", part2="Nguy阯", part3="Th醝"},
	{part1="T鬾", part2="Th鄋h", part3="Li畉"},
	{part1="L�", part2="Chi", part3="H醕h"},
	{part1="Ch鈛", part2="B�", part3="H�"},
	{part1="Ng�", part2="T錸g", part3="S醤g"},
	{part1="Tr竛h", part2="Nh鈔", part3="L鉵g"},
	{part1="V呓ng", part2="耼", part3="C�"},
	}
x311010_g_Transportation_Exit = {}
x311010_g_Transportation_Exit[8] = {
	Scene_Name = "恤n Ho鄋g",
	[1] = { Exit_Name="恤n Ho鄋g 皙n L誧 D呓ng", Exit_Reply_Number = 5, Exit_Position = {x=276,y=145} } ,
	[2] = { Exit_Name="恤n Ho鄋g 皙n Ki猰 C醕", Exit_Reply_Number = 6, Exit_Position = {x=230,y=270} } ,
	}
x311010_g_Transportation_Exit[7] = {
	Scene_Name = "Ki猰 C醕",
	[1] = { Exit_Name="Ki猰 C醕 皙n 姓i L�", Exit_Reply_Number = 7, Exit_Position = {x=40,y=278} } ,
	[2] = { Exit_Name="Ki猰 C醕 皙n 恤n Ho鄋g", Exit_Reply_Number = 8, Exit_Position = {x=106,y=47} } ,
	}
x311010_g_Transportation_Exit[6] = {
	Scene_Name = "V� L唼ng S絥",
	[1] = { Exit_Name="V� L唼ng S絥 皙n K韓h H�", Exit_Reply_Number = 9, Exit_Position = {x=276,y=80} } ,
	[2] = { Exit_Name="V� L唼ng S絥 皙n 姓i L�", Exit_Reply_Number = 10, Exit_Position = {x=43,y=172} } ,
	}
x311010_g_Transportation_Exit[5] = {
	Scene_Name = "K韓h H�",
	[1] = { Exit_Name="K韓h H� 皙n V� L唼ng S絥", Exit_Reply_Number = 11, Exit_Position = {x=46,y=278} } ,
	[2] = { Exit_Name="K韓h H� 皙n T� Ch鈛",   Exit_Reply_Number = 12, Exit_Position = {x=277,y=46} } ,
	}
x311010_g_Transportation_Exit[4] = {
	Scene_Name = "Th醝 H� ",
	[1] = { Exit_Name="Th醝 H� 皙n Tung S絥",   Exit_Reply_Number = 13, Exit_Position = {x=88,y=35} } ,
	[2] = { Exit_Name="Th醝 H� 皙n T� Ch鈛",   Exit_Reply_Number = 14, Exit_Position = {x=218,y=271} } ,
	}
x311010_g_Transportation_Exit[3] = {
	Scene_Name = "Tung S絥",
	[1] = { Exit_Name="Tung S絥 皙n L誧 D呓ng",   Exit_Reply_Number = 15, Exit_Position = {x=42,y=54} } ,
	[2] = { Exit_Name="Tung S絥 皙n Th醝 H�",   Exit_Reply_Number = 16, Exit_Position = {x=281,y=25} } ,
	}
	
x311010_g_Transportation_City = {}
x311010_g_Transportation_City[0] = {
	Scene_Name = "L誧 D呓ng",
	Reply_Number = 17,
	[0] = {x=160,y=278},
	[1] = {x=282,y=133},
	[2] = {x=37,y=134},
}
x311010_g_Transportation_City[1] = {
	Scene_Name = "T� Ch鈛",
	Reply_Number = 18,
	[0] = {x=182,y=265},
	[1] = {x=64,y=163},
	[2] = {x=183,y=53},
}
x311010_g_Transportation_City[2] = {
	Scene_Name = "姓i L�",
	Reply_Number = 19,
	[0] = {x=160,y=277},
	[1] = {x=280,y=152},
	[2] = {x=39,y=152},
}

x311010_g_Transportation_Legate = {}
x311010_g_Transportation_Legate[0] = {
	Scene_Name = "L誧 D呓ng",
	Reply_Number = 20,
	Position = {x=222,y=179},
}

x311010_g_Transportation_Legate[1] = {
	Scene_Name = "T� Ch鈛",
	Reply_Number = 21,
	Position = {x=234,y=86},
}

x311010_g_Transportation_Legate[2] = {
	Scene_Name = "姓i L�",
	Reply_Number = 22,
	Position = {x=54,y=185},
}

x311010_g_SpecialImpact = {}
x311010_g_SpecialImpact[23] = {
	Impact_Name = "T錸g ngo読 c鬾g",
	Impact_ID = {115,116,117,118,119,30115,30116,30117,30118,30119},
	}

x311010_g_SpecialImpact[24] = {
	Impact_Name = "T錸g ngo読 th�",
	Impact_ID = {120,121,122,123,124,30120,30121,30122,30123,30124},
	}
	
x311010_g_SpecialImpact[25] = {
	Impact_Name = "T錸g n礽 c鬾g",
	Impact_ID = {125,126,127,128,129,30125,30126,30127,30128,30129},
	}
	
x311010_g_SpecialImpact[26] = {
	Impact_Name = "T錸g n礽 th�",
	Impact_ID = {130,131,132,133,134,30130,30131,30132,30133,30134},
	}
x311010_g_IncreaseSpeed_Impact = {}
x311010_g_IncreaseSpeed_Impact[27] = {
	Impact_ID = 135,
	}

--**********************************
--任务入口函数
--**********************************
function x311010_OnDefaultEvent( sceneId, selfId, BagIndex )	--点击该任务后执行此脚本
	--投机取巧的方法，只此一次，勿推广!

  local misIndex = GetMissionIndexByID(sceneId,selfId,x311010_g_MissionId)
--	SetMissionByIndex(sceneId,selfId,misIndex,6,-1)
	SetMissionByIndex(sceneId,selfId,misIndex,3,0)
	
	local New_Time = LuaFnGetCurrentTime()
	local HaggleUp = 600 - New_Time + GetMissionData(sceneId,selfId,MD_CAOYUN_BARGAINUP)
	local HaggleDown = 900 - New_Time + GetMissionData(sceneId,selfId,MD_CAOYUN_BARGAINDOWN)
	local	circle	 = GetMissionData(sceneId,selfId,MD_CAOYUN_HUAN)
	
	if(HaggleUp <0 ) then
		HaggleUp = 0
	end

	if(HaggleDown <0 ) then
		HaggleDown = 0
	end
	--begin modified by zhangguoxin 090207
	--local iDayCount=GetMissionData(sceneId,selfId,MD_CAOYUN_DAYCOUNT)
	--local iTime = mod(iDayCount,100000)
	--local iDayTime = floor(iTime/100)	--上一次交任务的时间(天数)
	--local iQuarterTime = mod(iTime,100)	--上一次交任务的时间(刻)
	--local iDayHuan = floor(iDayCount/100000) --当天内完成的任务次数
	iDayHuan = GetMissionData(sceneId,selfId,MD_CAOYUN_DAYCOUNT);
	--end  modified by zhangguoxin 090207
	
	local Quotiety = x311010_Calculate_Modulus( sceneId, selfId )
	Quotiety = 1
	local Price_Sell = 15000 * Quotiety

	BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,5)
		UICommand_AddInt(sceneId,12)
		UICommand_AddInt(sceneId,HaggleUp)
		UICommand_AddInt(sceneId,HaggleDown)
		UICommand_AddInt(sceneId,circle)
		UICommand_AddInt(sceneId,misIndex)
		UICommand_AddInt(sceneId,iDayHuan)
		UICommand_AddInt(sceneId,Price_Sell)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 0)
	
end

--**********************************
--列举事件
--**********************************
function x311010_OnEnumerate( sceneId, selfId, targetId )
--如果玩家完成过这个任务

	  if IsMissionHaveDone(sceneId,selfId,x311010_g_MissionId) > 0 then
	   	return 
		end

    --如果已接此任务
    if IsHaveMission(sceneId,selfId,x311010_g_MissionId) > 0 then

			local TransNPC = x311010_TransPortNPC(sceneId,targetId)
			
			if TransNPC == -1 then
				return
			end
			
			if TransNPC == 4 then
			
				local ItemNum = GetItemCount(sceneId,selfId,x311010_g_CashItem_id)
				if ItemNum < x311010_g_CashItem_count then
					BeginUICommand(sceneId)
						UICommand_AddInt(sceneId,5)
						UICommand_AddInt(sceneId,6)
					EndUICommand(sceneId)
					DispatchUICommand(sceneId,selfId, 0)
					return
				end
				
				if targetId == GetMissionData(sceneId,selfId,MD_CAOYUN_TARGETID) then
				-----------------------------------------------------------------
					local msg = "Xin l瞚, ta 疸 ph鴆 v� c醕 h� r癷"
			 		local cmsg = "R秈 kh鰅"
					x311010_Client_Show_Message( sceneId, selfId, targetId, msg, cmsg,0)
					return
				end

				if TRAFFICKER_CLICK_TIMES >= 30 then
					local msg = "H鬽 nay ta r m畉, kh鬾g mu痭 ph鴆 v� th阭 ai n鎍 c�. Hy v鱪g s� 疬㧟 gi鷓 疝 c醕 h� l sau"
			 		local cmsg = "Th kh鬾g may..."
					x311010_Client_Show_Message( sceneId, selfId, targetId, msg, cmsg,0)
					return
				end

				SetMissionData(sceneId,selfId,MD_CAOYUN_TARGETID,targetId)
				local  PlayerSex=GetSex(sceneId,selfId)
				if PlayerSex == 0 then
					PlayerSex = "C� n呓ng "
				else
					PlayerSex = "Thi猽 hi畃 "
				end
				
				BeginEvent(sceneId)
		
					AddText(sceneId,PlayerSex.."Ta l� m祎 #GH Th� Th呓ng Nh鈔#W n眎 ti猲g, g 疬㧟 ta xem nh� l� duy阯 s� c黙 c醕 h�. 喧ng d竝 h鬽 nay ta r vui, c� th� ph鴆 v� 疬㧟 c醕 h�, c� mu痭 th� v may c黙 m靚h kh鬾g?")
					AddNumText(sceneId,x311010_g_ScriptId,"Ta mu痭 th� v may",-1,28)
					AddNumText(sceneId,x311010_g_ScriptId,"Hay l� th鬷 餴...",-1,0)
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)

				return
			
			end
			
			local misIndex = GetMissionIndexByID(sceneId,selfId,x311010_g_MissionId)
			SetMissionData(sceneId,selfId,MD_CAOYUN_TARGETID,targetId)
			SetMissionByIndex(sceneId,selfId,misIndex,0,0)
			SetMissionByIndex(sceneId,selfId,misIndex,1,0)
			
			local Caoyun_Times =  GetMissionData(sceneId,selfId,MD_CAOYUN_SUMTIME)	
			local find = -1
			local msg,cmsg
			for i, times in x311010_g_Title_Times_Confine do
				if times <= Caoyun_Times then
					find = i
					break
				end
			end
--屏蔽称号部分
--			find = -1
--增加一个查询玩家是否已得到该称号的接口，孙雨
			local New_Title = x311010_g_Title_Confine[find]
--			PrintNum(GetTitle( sceneId, selfId,5 ))
--			PrintNum(New_Title)
			if GetTitle( sceneId, selfId,5 ) ~= New_Title and find >= 0 then
				LuaFnAwardTitle( sceneId, selfId,  5, New_Title)
				SetCurTitle(sceneId, selfId,  5, New_Title)
				LuaFnDispatchAllTitle(sceneId, selfId)
				if Caoyun_Times < 20000 then
					if Caoyun_Times == x311010_g_Title_Times_Confine[find] then
						msg = "Ch鷆 m譶g c醕 h� 鹫t 疬㧟 "..x311010_g_Title_Name_Confine[find].."C醕h g鱥 c黙..., hy v鱪g c醕 h� c� th� ti猵 t鴆 c痭g hi猲 cho T鄌 V"
		 				cmsg = "C醡 絥.."
		 				x311010_Client_Show_Message( sceneId, selfId, targetId, msg, cmsg,2)
						return
		 			end
				else
					if Caoyun_Times == x311010_g_Title_Times_Confine[find] then
						msg = "V� c醕 h� 疸 c� nhi玼 c痭g hi猲 穑c bi畉 cho T鄌 V, tri玼 痨nh 疸 nh� ta chuy琻 l秈 皙n c醕 h� rg c醕 h� 疸 疬㧟 phong l鄊 "..x311010_g_Title_Name_Confine[find]..". Hy v鱪g l sau c醕 h� c� th� d靧 d ti瑄 nh鈔"
		 				cmsg = ", bi猼 r癷"
	 					x311010_Client_Show_Message( sceneId, selfId, targetId, msg, cmsg,2)
						return
					end
				end
							
			end
			--client 要在UI 上显示"买卖漕货"和"兑换官票"这2个button
			--并且把NPC的ID传给client，以备下一步调用!
			
			BeginUICommand(sceneId)
				UICommand_AddInt(sceneId,3)
				UICommand_AddInt(sceneId,targetId)
			EndUICommand(sceneId)
			DispatchUICommand(sceneId,selfId, 0)

    --满足任务接收条件

    elseif 1 > 0 then
	    local TransNPC = x311010_TransPortNPC(sceneId,targetId)

			if TransNPC == 4 then
				BeginUICommand(sceneId)
					UICommand_AddInt(sceneId,5)
					UICommand_AddInt(sceneId,10)
				EndUICommand(sceneId)
				DispatchUICommand(sceneId,selfId, 0)
				return
			end

			--client 要在UI 上显示"获得官票"这个button
			--并且把NPC的ID传给client，以备下一步调用!
			BeginUICommand(sceneId)
				UICommand_AddInt(sceneId,4)
				UICommand_AddInt(sceneId,targetId)
				UICommand_AddInt(sceneId,TransNPC)
			EndUICommand(sceneId)
			DispatchUICommand(sceneId,selfId, 0)
			SetMissionData(sceneId,selfId,MD_CAOYUN_TARGETID,targetId)
--			PrintStr("target  Id="..targetId)

    end
end 


--**********************************
--检测接受条件
--**********************************
function x311010_CheckAccept( sceneId, selfId )
	--需要1级才能接
	local Quotiety = x311010_Calculate_Modulus( sceneId, selfId )
	Quotiety = 2
	local Corpus = 10000 * Quotiety
	if IsTeamFollow( sceneId, selfId ) == 1 then
		BeginEvent(sceneId)
			strText = format("C醕 h� 餫ng � trong t靚h tr課g b� qu鈔 鸬i gi醡 s醫, kh鬾g th� nh nhi甿 v�")
			AddText(sceneId,strText)
 		EndEvent(sceneId)
 		DispatchMissionTips(sceneId,selfId)
		return 0
	elseif GetLevel( sceneId, selfId ) < 40 then

		local targetId = GetMissionData(sceneId,selfId,MD_CAOYUN_TARGETID)
		local msg = "c b c黙 c醕 h� v鏽 ch遖 皙n 40, h銀 瘙i 皙n khi 鹫t 疬㧟 c 40 r癷 h苙 皙n t靘 ta nh�"
 		local cmsg = "Ta s� l阯 c 40 nhanh th鬷"
		x311010_Client_Show_Message( sceneId, selfId, targetId, msg, cmsg,0)

		return 0
--以后策划改主意了就把这段打开!
	elseif GetMoney(sceneId,selfId)+GetMoneyJZ(sceneId, selfId) < Corpus then
		BeginEvent(sceneId)
			AddText(sceneId,"C醕 h� kh鬾g 瘘 ng鈔 l唼ng.");
			EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return 0
	elseif x311010_OnAccept_Necessary(sceneId,selfId) < 0 then
		return 0
	end

	return 1

end

function x311010_Calculate_Modulus( sceneId, selfId )
	if GetLevel( sceneId, selfId ) >= 70 then
		return 3
	elseif GetLevel( sceneId, selfId ) >= 50 then
		return 2
	elseif GetLevel( sceneId, selfId ) >= 35 then
		return 2
	elseif GetLevel( sceneId, selfId ) >= 15 then
		return 1
	end
	return 1
end

function x311010_Calculate_Double( sceneId, selfId )

	local ret = 1

	local Orientation_Article = 1
	local Article_Quantity
	for i, item in x311010_g_CertificateItem do
		Article_Quantity = GetItemCount( sceneId, selfId, item.id )
		if Article_Quantity < item.num then
			Orientation_Article = 0
		end
	end
	
	if Orientation_Article == 1 then
		local HaveChop = DelItem( sceneId, selfId, x311010_g_CertificateItem[1].id, x311010_g_CertificateItem[1].num )
		if HaveChop > 0 then
			ret = ret * 2
		end
	end

	return ret
end

function x311010_Calculate_Calender( sceneId, selfId )
	local ret = 1

	local nWeek = GetTodayWeek()
	if (nWeek==0) == 1  then
		ret = ret * 2
		Msg2Player( sceneId,selfId,"V� h鬽 nay l� ng鄖 v chuy琻, do 痼 l b醤 ra n鄖 c黙 c醕 h� thu nh t錸g g b礽.",MSG2PLAYER_PARA)
		BeginEvent(sceneId)
			AddText(sceneId,"V� h鬽 nay l� ng鄖 v chuy琻, do 痼 l b醤 ra n鄖 c黙 c醕 h� thu nh t錸g g b礽.");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId, selfId)
	end

	return ret
end

function x311010_Calculate_Margin( sceneId, selfId, now_balance )

	local Level = GetLevel( sceneId, selfId )
	local new_balance = (now_balance-10000) * (0.625+0.02*(Level-30)/2) + 10000
	
	return new_balance
	
end

function x311010_OnHaggleUp( sceneId, selfId )	--点击该任务"热销"后执行此脚本

--判断他是否可热销
--比如时间的判断，判断这次和上次之间时间的差距
--should add some code

--取任务变量的值
	local misIndex = GetMissionIndexByID(sceneId,selfId,x311010_g_MissionId)
	Price_Up = GetMissionParam(sceneId,selfId,misIndex,0)
	Pre_Time = GetMissionData(sceneId,selfId,MD_CAOYUN_BARGAINUP)
--	targetId = GetMissionParam(sceneId,selfId,misIndex,6)
	local targetId = GetMissionData(sceneId,selfId,MD_CAOYUN_TARGETID)
	TransNpc =x311010_TransPortNPC(sceneId,targetId)
	
	local Now_Time = LuaFnGetCurrentTime();
--当前时间怎么取?
	if Now_Time - Pre_Time < 10*60 then
			BeginUICommand(sceneId)
				UICommand_AddInt(sceneId,5)
				UICommand_AddInt(sceneId,9)
				UICommand_AddInt(sceneId,Pre_Time + 10*60 - Now_Time)
			EndUICommand(sceneId)
			DispatchUICommand(sceneId,selfId, 0)
			return
			
	end
	if TransNpc <= 0 then
		return
	end

--经计算改变此Price_Up
--****
--should add some code

--热销后价格变为18000
	local Quotiety = x311010_Calculate_Modulus( sceneId, selfId )
	Quotiety = 1
	Price_Up = 18000 * Quotiety
	Price_Up = x311010_Calculate_Margin( sceneId, selfId, Price_Up )
	--设置成新的值

	SetMissionByIndex(sceneId,selfId,misIndex,0,Price_Up)	

--还需要存储这时的时间
--当前时间怎么取?
	local New_Time = LuaFnGetCurrentTime();
--	SetMissionByIndex(sceneId,selfId,misIndex,3,New_Time)	
	SetMissionData(sceneId,selfId,MD_CAOYUN_BARGAINUP,New_Time)

	BeginEvent(sceneId)
		strText = "Ti陁 th� th鄋h c鬾g, gi� s鋘 ph t錸g l阯 m裞 #{_EXCHG"..Price_Up.."}"			
		AddText(sceneId,strText);
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	
	BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,4)
--热销后价格变为Price_Up
			UICommand_AddInt(sceneId,misIndex)
--此时热销的冷却时间变为10分钟，并告知client
	
--第2位表示当前还剩的PriceUp时间
			Pre_Time = GetMissionData(sceneId,selfId,MD_CAOYUN_BARGAINUP)
			Now_Time = LuaFnGetCurrentTime();
			if Now_Time - Pre_Time < 10*60 then
				UICommand_AddInt(sceneId,Pre_Time + 10*60 - Now_Time)
			else
				UICommand_AddInt(sceneId,0)
			end
			--第3位表示当前还剩的PriceDown时间
			Pre_Time = GetMissionData(sceneId,selfId,MD_CAOYUN_BARGAINDOWN)
			if Now_Time - Pre_Time < 15*60 then
				UICommand_AddInt(sceneId,Pre_Time + 15*60 - Now_Time)
			else
				UICommand_AddInt(sceneId,0)
			end
			UICommand_AddInt(sceneId,TransNpc)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1)
end


function x311010_OnHaggleDown( sceneId, selfId )	--点击该任务"杀价"后执行此脚本

--判断他是否可杀价
--比如时间的判断，判断这次和上次之间时间的差距
--取任务变量的值
	local misIndex = GetMissionIndexByID(sceneId,selfId,x311010_g_MissionId)
	Price_Down = GetMissionParam(sceneId,selfId,misIndex,1)
	Pre_Time = GetMissionData(sceneId,selfId,MD_CAOYUN_BARGAINDOWN)
--	targetId = GetMissionParam(sceneId,selfId,misIndex,6)
	local targetId = GetMissionData(sceneId,selfId,MD_CAOYUN_TARGETID)
	
	TransNpc =x311010_TransPortNPC(sceneId,targetId)
	

--当前时间怎么取?
	Now_Time = LuaFnGetCurrentTime();
	if Now_Time - Pre_Time < 15*60 then

			BeginUICommand(sceneId)
				UICommand_AddInt(sceneId,5)
				UICommand_AddInt(sceneId,9)
				UICommand_AddInt(sceneId,Pre_Time + 15*60 - Now_Time)
			EndUICommand(sceneId)
			DispatchUICommand(sceneId,selfId, 0)
			return
			
	end
	
	if TransNpc <= 0 then
		return
	end

--经计算改变此Price_Up
--*****


--杀价后价格变为X000
	local Quotiety = x311010_Calculate_Modulus( sceneId, selfId )
	Quotiety = 1
	Price_Down = 8000 * Quotiety
--设置成新的值

	SetMissionByIndex(sceneId,selfId,misIndex,1,Price_Down)

	
--还需要存储这时的时间
--当前时间怎么取?
	local New_Time = LuaFnGetCurrentTime();
--	SetMissionByIndex(sceneId,selfId,misIndex,4,New_Time)	
	SetMissionData(sceneId,selfId,MD_CAOYUN_BARGAINDOWN,New_Time)

	BeginEvent(sceneId)
		strText = "Tr� gi� th鄋h c鬾g, gi� s鋘 ph xu痭g m裞 #{_EXCHG"..Price_Down.."}"			
		AddText(sceneId,strText);
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)

	BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,5)
--杀价后价格变为Price_Down
			UICommand_AddInt(sceneId,misIndex)
--			UICommand_AddInt(sceneId,15*60)
--此时杀价的冷却时间变为15分钟，并告知client
--第2位表示当前还剩的PriceUp时间
		Pre_Time =  GetMissionData(sceneId,selfId,MD_CAOYUN_BARGAINUP)
		Now_Time = LuaFnGetCurrentTime();
		if Now_Time - Pre_Time < 10*60 then
			UICommand_AddInt(sceneId,Pre_Time + 10*60 - Now_Time)
		else
			UICommand_AddInt(sceneId,0)
		end
--第3位表示当前还剩的PriceDown时间
		Pre_Time =  GetMissionData(sceneId,selfId,MD_CAOYUN_BARGAINDOWN)
		if Now_Time - Pre_Time < 15*60 then
			UICommand_AddInt(sceneId,Pre_Time + 15*60 - Now_Time)
		else
			UICommand_AddInt(sceneId,0)
		end
		UICommand_AddInt(sceneId,TransNpc)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 1)

end

--**********************************
--杀死怪物或玩家
--**********************************
function x311010_OnKillObject( sceneId, selfId, objdataId, objId )
	local monsterName = GetMonsterNamebyDataId(objdataId)
	if monsterName=="T鄌 V Ti瑄 Qu醝" or monsterName=="T鄌 V 姓i Qu醝"   then
		-- 掉书
		if random(1000) < 25 then
			AddMonsterDropItem( sceneId, objId, selfId, 30501035 )
		end
		-- 给BUFF
		if random(1000) < 25 then
			LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,135,0)
		end
	end
end

--**********************************
--进入区域事件
--**********************************
function x311010_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--道具改变
--**********************************
function x311010_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--接这个任务
--也就是点了“获得官票”
--**********************************
function x311010_OnAcceptMission( sceneId, selfId )

  --如果已接此任务
  if IsHaveMission(sceneId,selfId,x311010_g_MissionId) > 0 then
  		return
  end
  
  local strText = "";
  --金钱是否够 优先扣除交子 zchw
  --金钱是否够
  local HumanMoney = LuaFnGetMoney( sceneId, selfId )
  local HumanMoneyJZ = GetMoneyJZ( sceneId, selfId );
  
  local checkmoney = 20000
  if HumanMoney + HumanMoneyJZ  <  checkmoney then
  		BeginEvent(sceneId)
			AddText(sceneId,"Kh鬾g 瘘 ng鈔 l唼ng.");
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return 0
  end
  
  --是否在漕运
	local haveImpact = LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 113)
	if haveImpact == 1 then
		BeginEvent(sceneId)
			strText = "Xin l瞚, c醕 h� 餫ng � tr課g th醝 v chuy琻 kh鬾g th� nh ng鈔 phi猽."
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	local ItemNum = GetItemCount(sceneId,selfId,x311010_g_CashItem_id)
	local Quotiety = x311010_Calculate_Modulus( sceneId, selfId )
	Quotiety = 2
	local Corpus = 10000 * Quotiety
	
	--begin modified by zhangguoxin 090207
	--local iDayCount = GetMissionData(sceneId,selfId,MD_CAOYUN_DAYCOUNT)/100000
	local iDayCount = GetMissionData(sceneId,selfId,MD_CAOYUN_DAYCOUNT);
	--end modified by zhangguoxin 090207
	
	if ItemNum >= x311010_g_CashItem_count then
		if x311010_OnAccept_Necessary( sceneId, selfId ) <= 0 then
			return 0
		end
		local ret = AddMission( sceneId,selfId, x311010_g_MissionId, x311010_g_ScriptId, 0, 0, 0 )
		
		if ret < 1  then
--			BeginEvent(sceneId)
--				strText = "#Y你的任务日志已经满了，无法进行漕运!"
--				AddText(sceneId,strText);
--			EndEvent(sceneId)
--			DispatchMissionTips(sceneId,selfId)
			return
		end
		
		local misIndex = GetMissionIndexByID(sceneId,selfId,x311010_g_MissionId)			--得到任务的序列号
		SetMissionByIndex(sceneId,selfId,misIndex,0,0)						--根据序列号把任务变量的第0位置0 (任务完成情况)
		SetMissionByIndex(sceneId,selfId,misIndex,1,0)
		SetMissionByIndex(sceneId,selfId,misIndex,2,0)
		SetMissionByIndex(sceneId,selfId,misIndex,3,0)
		SetMissionByIndex(sceneId,selfId,misIndex,4,0)
		
		--计算到底该给他多少钱
		--以后策划改主意了就把这段打开
		--优先扣除交子 zchw
		
		local nDelJZ, nDelMoney = LuaFnCostMoneyWithPriority(sceneId, selfId, 20000);
		if (nDelJZ == -1) then
			BeginEvent(sceneId)
			AddText(sceneId,"C醕 h� 疸 th� ch #{_EXCHG"..Corpus.."}, l 疬㧟 m祎 t� quan phi猽 T鄌 V!");  
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return 0;
		end
		
		if (nDelMoney <= 0) then
			BeginEvent(sceneId)
				AddText(sceneId,"C醕 h� 疸 th� ch #{_EXCHG"..nDelJZ.."}, l 疬㧟 m祎 t� quan phi猽 T鄌 V!");
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		elseif (nDelJZ <= 0) then
			BeginEvent(sceneId)
				AddText(sceneId,"C醕 h� 疸 th� ch #{_MONEY"..nDelMoney.."}, l 疬㧟 m祎 t� quan phi猽 T鄌 V!" );
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		else
			BeginEvent(sceneId)
					AddText(sceneId,"C醕 h� 疸 th� ch #{_EXCHG"..nDelJZ.."}");
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			BeginEvent(sceneId)
				AddText(sceneId,"C醕 h� 疸 th� ch #{_MONEY"..nDelMoney.."}, l 疬㧟 m祎 t� quan phi猽 T鄌 V!");
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		end
		
		--统计数据记录
		LuaFnAuditCaoYun(sceneId, selfId, iDayCount, 1, Corpus)

		SetMissionByIndex(sceneId,selfId,misIndex,5,Corpus)
		SetMissionByIndex(sceneId,selfId,misIndex,6,0)
		SetMissionByIndex(sceneId,selfId,misIndex,7,0)
		--并且增加一个称号“漕运商” 孙雨
--		LuaFnAwardTitle( sceneId, selfId,  5, 124)
--		SetCurTitle(sceneId, selfId,  5, 124)
--		LuaFnDispatchAllTitle(sceneId, selfId)
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,113,0)
		if ret > 0 then
--			AddItemListToHuman(sceneId,selfId)
			BeginUICommand(sceneId)
				UICommand_AddInt(sceneId,5)
				UICommand_AddInt(sceneId,2)
			EndUICommand(sceneId)
			DispatchUICommand(sceneId,selfId, 0)
		end
	elseif x311010_CheckAccept(sceneId,selfId) > 0 then

		local ret = AddMission( sceneId,selfId, x311010_g_MissionId, x311010_g_ScriptId, 0, 0, 0 )

		if ret < 1  then
			return
		end
		
		ret = TryRecieveItem( sceneId, selfId, x311010_g_CashItem_id, QUALITY_MUST_BE_CHANGE)
		if ret > 0 then 	

			local misIndex = GetMissionIndexByID(sceneId,selfId,x311010_g_MissionId)			--得到任务的序列号
			SetMissionByIndex(sceneId,selfId,misIndex,0,0)						--根据序列号把任务变量的第0位置0 (任务完成情况)
			SetMissionByIndex(sceneId,selfId,misIndex,1,0)
			SetMissionByIndex(sceneId,selfId,misIndex,2,0)
			SetMissionByIndex(sceneId,selfId,misIndex,3,0)
			SetMissionByIndex(sceneId,selfId,misIndex,4,0)

			-- 玩家关心杀怪
			SetMissionEvent( sceneId,selfId,x311010_g_MissionId, 0 )

			--计算到底该给他多少钱
			--以后策划改主意了就把这段打开
			--优先扣除交子 zchw
	
			local nDelJZ, nDelMoney = LuaFnCostMoneyWithPriority(sceneId, selfId, 20000);
			if (nDelJZ == -1) then
				BeginEvent(sceneId)
				AddText(sceneId,"C醕 h� 疸 th� ch #{_EXCHG"..Corpus.."}, l 疬㧟 m祎 t� quan phi猽 T鄌 V!");  
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
				return 0;
			end
			
			if (nDelMoney <= 0) then
				BeginEvent(sceneId)
					AddText(sceneId,"C醕 h� 疸 th� ch #{_EXCHG"..nDelJZ.."}, l 疬㧟 m祎 t� quan phi猽 T鄌 V!");
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
			elseif (nDelJZ <= 0) then
				BeginEvent(sceneId)
					AddText(sceneId,"C醕 h� 疸 th� ch #{_MONEY"..nDelMoney.."}, l 疬㧟 m祎 t� quan phi猽 T鄌 V!" );
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
			else
				BeginEvent(sceneId)
					AddText(sceneId,"C醕 h� 疸 th� ch #{_EXCHG"..nDelJZ.."}");
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
				BeginEvent(sceneId)
					AddText(sceneId,"C醕 h� 疸 th� ch #{_MONEY"..nDelMoney.."}, l 疬㧟 m祎 t� quan phi猽 T鄌 V!");
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
			end

			--统计数据记录
			LuaFnAuditCaoYun(sceneId, selfId, iDayCount, 1, Corpus)

			LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,113,0)
			SetMissionByIndex(sceneId,selfId,misIndex,5,Corpus)
			SetMissionByIndex(sceneId,selfId,misIndex,6,0)
			SetMissionByIndex(sceneId,selfId,misIndex,7,0)
			
--并且增加一个称号“漕运商” 孙雨
--			LuaFnAwardTitle( sceneId, selfId,  5, 124)
--			SetCurTitle(sceneId, selfId,  5, 124)
--			LuaFnDispatchAllTitle(sceneId, selfId)


			local Caoyun_Times =  GetMissionData(sceneId,selfId,MD_CAOYUN_SUMTIME)	
--			PrintStr("times="..Caoyun_Times)

			if Caoyun_Times == 0 then
				
				local targetId = GetMissionData(sceneId,selfId,MD_CAOYUN_TARGETID)
				local msg = "Xem ra 疴y l� l 馥u ti阯 c醕 h� tham gia T鄌 V, T鄌 V qu� th馽 l� m祎 m祎 ng鄋h ngh� c� th� thu 疬㧟 l㱮 nhu r l緉, theo c 鸬 th錸g ti猲, h鄋g ng鄖 kh鬾g nh鎛g c� th� gia t錸g s� l唼ng T鄌 V m� c騨 c� th� gia t錸g l㱮 nhu thu 疬㧟 trong m瞚 l T鄌 V"
				local msg2 = "Nh遪g m� T鄌 V kh鬾g ph裞 t誴 nh� c醕 h� t叻ng t唼ng 疴u, ch� c nh v鄌 n鷗 l quan phi猽 tr阯 m鄋 h靚h th� 疸 c� th� mua h鄋g h骯 T鄌 V r癷, sau 痼 餰m nh鎛g h鄋g h骯 鸠i 裯g 皙n th鄋h ph� c� s� d鴑g T鄌 V kh羉 B醤 ra l� 疬㧟"
				local msg3 = "Nh� l� trong khi T鄌 V th� kh鬾g 疬㧟 s� d鴑g ng叨i chuy琻 h鄋g c黙 tr誱 d竎h hay c黙 m鬾 ph醝 瓞 v chuy琻 h鄋g"
 				local cmsg = "C醡 絥 gi鋓 th韈h c黙 c醕 h�.."
				BeginEvent(sceneId)

					AddText(sceneId,msg)
					AddText(sceneId,msg2)
					AddText(sceneId,msg3)
					AddNumText(sceneId,x311010_g_ScriptId,cmsg,-1,1)

				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
--				x311010_Client_Show_Message( sceneId, selfId, targetId, msg, cmsg, 1)
--第一次时给予漕运商的称号
				LuaFnAwardTitle( sceneId, selfId,  5, 124)
				SetCurTitle(sceneId, selfId,  5, 124)
				LuaFnDispatchAllTitle(sceneId, selfId)

			elseif ret > 0 then
--				AddItemListToHuman(sceneId,selfId)
				BeginUICommand(sceneId)
					UICommand_AddInt(sceneId,5)
					UICommand_AddInt(sceneId,2)
				EndUICommand(sceneId)
				DispatchUICommand(sceneId,selfId, 0)
			end
			
		else
			--把前面加的任务删掉，add by hukai#39191
			DelMission( sceneId, selfId, x311010_g_MissionId )
			
			BeginEvent(sceneId)
				strText = "Kh鬾g th� thu 疬㧟 v ph, kh鬾g th� ti猵 nh nhi甿 v�."
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			
		end
			
	end

end

--**********************************
--弹出交易界面
--就是在漕运使处点击了“买卖漕货”或者点击货商，并随机弹出了交易界面
--**********************************
function x311010_OnPopupBargainingUI( sceneId, selfId )

	  if IsMissionHaveDone(sceneId,selfId,x311010_g_MissionId) > 0 then
	   	return 
		end
		
--如果已接此任务
    if IsHaveMission(sceneId,selfId,x311010_g_MissionId) > 0 then
  	  local ItemNum = GetItemCount(sceneId,selfId,x311010_g_CashItem_id)

			if ItemNum < x311010_g_CashItem_count then
				BeginUICommand(sceneId)
					UICommand_AddInt(sceneId,5)
					UICommand_AddInt(sceneId,6)
				EndUICommand(sceneId)
				DispatchUICommand(sceneId,selfId, 0)
				x311010_OnAbandon( sceneId, selfId )
				return
			end
--fix here

    	local Mission_Round =	GetMissionData(sceneId,selfId,MD_CAOYUN_HUAN)
			BeginUICommand(sceneId)
				--第1位表示这个UI具体是哪步!
				UICommand_AddInt(sceneId,3)
				
				local misIndex = GetMissionIndexByID(sceneId,selfId,x311010_g_MissionId)

				local targetId = GetMissionData(sceneId,selfId,MD_CAOYUN_TARGETID)
				local TransNpc = x311010_TransPortNPC(sceneId,targetId)
--				PrintStr("targetId="..targetId.." TransNpc="..TransNpc)
				if TransNpc == 0 or TransNpc == -1 then
					return
				end
				
				--第2位表示这个任务索引号!
				UICommand_AddInt(sceneId,misIndex)

				local Quotiety = x311010_Calculate_Modulus( sceneId, selfId )
				Quotiety = 1
				local Price_Buy = 10000 * Quotiety
				local Price_Sell = Price_Buy * 150 / 100

				Price_Sell = x311010_Calculate_Margin( sceneId, selfId, Price_Sell )
				--第3位表示买的价格
				UICommand_AddInt(sceneId,Price_Buy)

				--第4位表示卖的价格
				UICommand_AddInt(sceneId,Price_Sell)

				--第5位表示任务脚本的ID
				UICommand_AddInt(sceneId,x311010_g_ScriptId)

				--第6位表示货商不收哪种商品
				UICommand_AddInt(sceneId,1)
				
				--第7位表示当前还剩的PriceUp时间
				Pre_Time = GetMissionData(sceneId,selfId,MD_CAOYUN_BARGAINUP)
				Now_Time = LuaFnGetCurrentTime();
				if Now_Time - Pre_Time < 10*60 then
					UICommand_AddInt(sceneId,Pre_Time + 10*60 - Now_Time)
				else
					UICommand_AddInt(sceneId,0)
				end
				
				--第8位表示当前还剩的PriceDown时间
				Pre_Time = GetMissionData(sceneId,selfId,MD_CAOYUN_BARGAINDOWN)
				if Now_Time - Pre_Time < 15*60 then
					UICommand_AddInt(sceneId,Pre_Time + 15*60 - Now_Time)
				else
					UICommand_AddInt(sceneId,0)
				end

--client 要显示出交易界面，根据上面的第一个参数，来放盐、铁、米的button和显示杀价热销button
				UICommand_AddInt(sceneId,TransNpc)
				
			EndUICommand(sceneId)
			DispatchUICommand(sceneId,selfId, 1)
			

		end

end

--**********************************
--购买或卖出某个盐，铁，米
--Client\Interface\Carriage\Carriage.lua
--Carriage_Action_Clicked()调用
--**********************************
function x311010_OnTrade( sceneId, selfId, ManipulateID )

	if LuaFnIsCanDoScriptLogic(sceneId, selfId) < 1 then
		return
	end
	
  if IsHaveMission(sceneId,selfId,x311010_g_MissionId) < 1   then
  	return
  end
	
--判断他是否可以操作这步
--should add some code

			local misIndex = GetMissionIndexByID(sceneId,selfId,x311010_g_MissionId)
--			local TransNPC = GetMissionParam(sceneId,selfId,misIndex,6)
			local targetId = GetMissionData(sceneId,selfId,MD_CAOYUN_TARGETID)
			local TransNPC = x311010_TransPortNPC(sceneId,targetId)
			local trade = 0;

			if TransNPC == 0 or TransNPC == -1 then
				return
			end

	-- hongyu  
	-- 如果玩家传过来一个无关的值，直接丢弃
	if ManipulateID~=1 and ManipulateID~=2 and ManipulateID~=3  then
		return
	end
	-- 客户端发过来的 ManipulateID 有1，2，3这3个值，分别表示
	--  		1		盐	洛阳	0
	-- 			2		铁	大理	2
	--			3		米	苏州	1
	--
	
	local nData = GetMissionParam(sceneId,selfId,misIndex,2)
	nData = mod(nData,1000)
	local nData1 = floor(nData/100)
	local nData2 = floor((nData-nData1*100)/10)
	local nData3 = floor(nData - nData1*100 - nData2*10)
	-- 盐
	if ManipulateID == 1  then
		if sceneId == 0   then
			if nData1~=0  then
				return
			end
		else
			-- 玩家请求执行买入操作，检测玩家是不是已经买过了这个东西
			if nData1==0  then
				return
			end
		end
	end
	-- 铁
	if ManipulateID == 2  then
		if sceneId == 2   then
			-- 玩家请求执行卖出操作，检测玩家是不是有东西可卖出
			if nData2~=0  then
				return
			end
		else
			-- 玩家请求执行买入操作，检测玩家是不是已经买过了这个东西
			if nData2==0  then
				return
			end
		end
	end
	-- 米
	if ManipulateID == 3  then
		if sceneId == 1   then
			-- 玩家请求执行买入操作，检测玩家是不是有空间可买入
			if nData3~=0  then
				return
			end
		else
			-- 玩家请求执行买入操作，检测玩家是不是已经买过了这个东西
			if nData3==0  then
				return
			end
		end
	end
	-- hongyu end.


--cargo
--1 对盐操作
--2	对铁操作
--3	对米操作

--trade
--0	买
--1 卖
--不用这位判断了!

--根据这个NPC和Player身上的情况来判断，对盐，铁，米这个东西是买还是卖
			if ManipulateID == TransNPC then

--这时是购买盐
--先判断这个Player是否已经购买了盐
					
					
					local misIndex = GetMissionIndexByID(sceneId,selfId,x311010_g_MissionId)
					Price_Down = GetMissionParam(sceneId,selfId,misIndex,1)
					Cargo			= GetMissionParam(sceneId,selfId,misIndex,2)
					local Cargo_Standard = 0;
					local purchased = 0;

--先判断这个Player是否已经购买了盐
					if TransNPC == 1 then
						Cargo_Standard = 100;
						if mod(Cargo,1000) >= Cargo_Standard then
							purchased = 1;							
						end
					elseif TransNPC == 2 then
						Cargo_Standard = 10;
						if mod(Cargo,100) >= Cargo_Standard then
							purchased = 1;
						end
					elseif TransNPC == 3 then
						Cargo_Standard = 1;
						if mod(Cargo,10) >= Cargo_Standard then
							purchased = 1;
						end
					elseif TransNPC == 4 then
						Cargo_Standard = 1000;
						if mod(Cargo,10000) >= Cargo_Standard then
							purchased = 1;
						end
					end
						
					if purchased > 0 then
					
						BeginUICommand(sceneId)
							UICommand_AddInt(sceneId,5)
							UICommand_AddInt(sceneId,7)
							UICommand_AddInt(sceneId,ManipulateID)
						EndUICommand(sceneId)
						DispatchUICommand(sceneId,selfId, 0)
				
						return
					end
--should add some code
--					local Mission_Round =	GetMissionData(sceneId,selfId,MD_CAOYUN_HUAN)
--					if Mission_Round >= 20 then
--						BeginEvent(sceneId)
--							strText="你快去兑换官票吧，本次交易已经超限!"
--							AddText(sceneId,strText);
--						EndEvent(sceneId)
--						DispatchMissionTips(sceneId,selfId)
--						return
--					end


					if Price_Down == 0 then
--没有经过杀价，这里要重新计算到底该多少钱购买
--should add some code
--***					--和上面某部分相同就可以
						local Quotiety = x311010_Calculate_Modulus( sceneId, selfId )
						Quotiety = 1
						Price_Down = 10000 * Quotiety
						Pre_Time = GetMissionData(sceneId,selfId,MD_CAOYUN_BARGAINDOWN)
						Now_Time = LuaFnGetCurrentTime();
						
						--取随机数
						--随机给玩家个东东
						local nMoney = GetMoney(sceneId,selfId)
						local nLevel = GetLevel( sceneId, selfId )
						if (Now_Time - Pre_Time >= 15*60) and floor(mod(nMoney / 31 * 17 + 73 + nLevel,21596+Quotiety)) == 15982 then
							BeginAddItem(sceneId)
							AddItem( sceneId,30103001, 1 )
							ret = EndAddItem(sceneId,selfId)
							if ret > 0 then
								AddItemListToHuman(sceneId,selfId)
								BeginEvent(sceneId)
									strText = "C醕 h� kh鬾g tr� gi�, v may t痶, m祎 c醝 D呓ng S鈓 Th� r絠 t� tr阯 tr秈 v鄌 t鷌 c黙 c醕 h�!"
									AddText(sceneId,strText);
								EndEvent(sceneId)
								DispatchMissionTips(sceneId,selfId)
							else
							--奖励物品没有加成功
								BeginEvent(sceneId)
									strText = "T鷌 x醕h 疸 馥y, kh鬾g th� l th阭 v ph tg th叻ng."
									AddText(sceneId,strText);
								EndEvent(sceneId)
								DispatchMissionTips(sceneId,selfId)
							end
						end
					end

					Balance = GetMissionParam(sceneId,selfId,misIndex,5)
					
					if Balance < Price_Down then
						BeginEvent(sceneId)
							strText = "S� v痭 l遳 鸬ng T鄌 V kh鬾g 瘘 瓞 mua m髇 h鄋g n鄖."
							AddText(sceneId,strText)
						EndEvent(sceneId)
						DispatchMissionTips(sceneId,selfId)
						return
					end
					
					if x311010_OnAdd_CaoyunTime( sceneId, selfId ) <= 0 then
						return 0
					end
					
					Balance = Balance - Price_Down;
					SetMissionByIndex(sceneId,selfId,misIndex,5,Balance)
					SetMissionByIndex(sceneId,selfId,misIndex,1,0)
					Cargo = Cargo + Cargo_Standard
					SetMissionByIndex(sceneId,selfId,misIndex,2,Cargo)
						BeginEvent(sceneId)
							if (ManipulateID ==1) then
								strText = "C醕 h� 疸 mua th鄋h c鬾g m祎 ph mu痠"
							elseif ( ManipulateID == 2) then
								strText = "C醕 h� 疸 mua th鄋h c鬾g m祎 ph s"
							elseif( ManipulateID ==3) then
								strText = "C醕 h� 疸 mua th鄋h c鬾g m祎 ph g誳"
							elseif( ManipulateID ==4) then
								strText = "C醕 h� 疸 mua th鄋h c鬾g m祎 ph mu痠 ri阯g"
							end
							AddText(sceneId,strText);
						EndEvent(sceneId)
						DispatchMissionTips(sceneId,selfId)
					--并把身上的标记位置为买入了盐
					--告诉client在UI上我的货舱内，显示盐
					BeginUICommand(sceneId)
							UICommand_AddInt(sceneId,5)
							UICommand_AddInt(sceneId,11)
							UICommand_AddInt(sceneId,Price_Down)
					EndUICommand(sceneId)
					DispatchUICommand(sceneId,selfId, 0)
					SetMissionByIndex(sceneId,selfId,misIndex,3,ManipulateID)
					--记录下玩家刚刚买过的漕运物品!
				else
					--if TransNPC == 2 or TransNPC == 3 or TransNPC ==4 then
					--这时是出售盐
					misIndex = GetMissionIndexByID(sceneId,selfId,x311010_g_MissionId)
					Price_Up = GetMissionParam(sceneId,selfId,misIndex,0)
					
					local bUp = 0
					if Price_Up == 0  then
						bUp = 0
					else
						bUp = 1
					end
					
					if bUp == 0  then
						Price_Up = 15000
					else
						Price_Up = 18000
					end
										
					Cargo			= GetMissionParam(sceneId,selfId,misIndex,2)
	
					--先判断这个Player是否已经购买了盐
					--should add some code
					
					local Cargo_Standard=0
					local purchased = 0;
					
					--先判断这个Player是否已经购买了盐
					if ManipulateID == 1 then
						Cargo_Standard = 100
						if mod(Cargo,1000) < Cargo_Standard then
							purchased = 1;
						end
					elseif ManipulateID == 2 then
						Cargo_Standard = 10
						if mod(Cargo,100) < Cargo_Standard then
							purchased = 1;
						end
					elseif ManipulateID == 3 then
						Cargo_Standard = 1
						if mod(Cargo,10) < Cargo_Standard then
							purchased = 1;
						end
					elseif ManipulateID == 4 then
						Cargo_Standard = 1000
						if mod(Cargo,10000) < Cargo_Standard then
							purchased = 1;
						end
					end
					
					if purchased > 0 then
						BeginUICommand(sceneId)
							UICommand_AddInt(sceneId,5)
							UICommand_AddInt(sceneId,8)
							UICommand_AddInt(sceneId,ManipulateID)
						EndUICommand(sceneId)
						DispatchUICommand(sceneId,selfId, 0)
						
						return
					end
					
					local HaveChop = x311010_Calculate_Double( sceneId, selfId )
					local Quotiety = x311010_Calculate_Modulus( sceneId, selfId )
					Quotiety = 1
					if HaveChop == 2 then
						--if bUp == 0 then
						--	Price_Up = 20000 * Quotiety
						--else
						--	Price_Up = 26000 * Quotiety
						--end
						
						Price_Up = (Price_Up-10000) * 2 + 10000
						
						BeginEvent(sceneId)
							strText = format("Do 疬秐g T鄌 V m� 餰m l読 l㱮 nhu cho c醕 h� 鹫t l緉 h絥 g b礽!")
							AddText(sceneId,strText)
		 				EndEvent(sceneId)                                                                                                                                                                                                                                          
	 					DispatchMissionTips(sceneId,selfId)
	 					Msg2Player( sceneId,selfId,"Do 疬秐g T鄌 V m� 餰m l読 l㱮 nhu cho c醕 h� 鹫t l緉 h絥 g b礽!",MSG2PLAYER_PARA)

					end

					--if Price_Up == 0 then
					----没有经过热销，这里要重新计算到底该多少钱购买
					--	Quotiety = 1
					--	Price_Up = 15000 * Quotiety
					--end
					
					local SpecialDay = x311010_Calculate_Calender( sceneId, selfId )
					
					if SpecialDay == 2 then
						Price_Up = (Price_Up-10000) * 2 + 10000
					end
					
					if GetMissionParam(sceneId,selfId,misIndex,4) == ManipulateID then
						Price_Up = floor(Price_Up * 110 / 100)
						SetMissionByIndex(sceneId,selfId,misIndex,4,0)
					end
					
	
					
					Price_Up = x311010_Calculate_Margin( sceneId, selfId, Price_Up )
					Balance = GetMissionParam(sceneId,selfId,misIndex,5)
					INP = 10000;
					--***INP要根据时间变化
--王一川给的公式
--					Balance = Balance + Price_Up + INP * 10 * mod( GetMissionData(sceneId,selfId,2) , 10 ) / 100;
--韦青说不乘INP
					Balance = Balance + Price_Up
					SetMissionByIndex(sceneId,selfId,misIndex,5,Balance)
					SetMissionByIndex(sceneId,selfId,misIndex,0,0)
					--并把身上的标记为置为卖出了货物

					Cargo = Cargo - Cargo_Standard

					SetMissionByIndex(sceneId,selfId,misIndex,2,Cargo)
					trade = 1
				--end

		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,5)
			UICommand_AddInt(sceneId,11)
			UICommand_AddInt(sceneId,Price_Up)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 0)
		
--并取人物身上这个价格数据来执行操作!
--卖就是结束这环，环数要改变
		if trade == 1 then
--环数+1
			misIndex = GetMissionIndexByID(sceneId,selfId,x311010_g_MissionId)
			local Mission_Round =	GetMissionData(sceneId,selfId,MD_CAOYUN_HUAN)
--missiondata中第2位记录的是漕运的环数
			SetMissionData(sceneId,selfId,MD_CAOYUN_HUAN,Mission_Round + 1)
			BeginEvent(sceneId)
				if (ManipulateID == 1) then
					strText = "C醕 h� 疸 b醤 th鄋h c鬾g m祎 ph mu痠"
				elseif ( ManipulateID == 2) then
					strText = "C醕 h� 疸 b醤 th鄋h c鬾g m祎 ph s"
				elseif ( ManipulateID ==3 ) then
					strText = "C醕 h� 疸 b醤 th鄋h c鬾g m祎 ph g誳"
				elseif ( ManipulateID ==4 ) then
					strText = "C醕 h� 疸 b醤 th鄋h c鬾g m祎 ph mu痠 ri阯g"						
				end
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			
			BeginEvent(sceneId)
				strText = format("T鄌 V l n鄖 l� v騨g th� ", (Mission_Round + 1))
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)

			-- 记录玩家完成一次漕运的日志
			LuaFnAuditCaoyunDone(sceneId,selfId)
			
			--总的漕运次数+1

			Sum_Time = GetMissionData(sceneId,selfId,MD_CAOYUN_SUMTIME)			

			SetMissionData(sceneId,selfId,MD_CAOYUN_SUMTIME,Sum_Time+1)
				
			if random(100) <= 5 then
				local my_level = GetLevel( sceneId, selfId )
				local reward_item 

				local medicine_level = floor(my_level/10)
			
				if medicine_level < 1 then
					medicine_level = 1
				elseif medicine_level > 10 then
					medicine_level = 10
				end
				
				if random(100) <= 50 then
					reward_item = x311010_g_Reward_Medicine_HP[medicine_level]
				else
					reward_item = x311010_g_Reward_Medicine_MP[medicine_level]
				end
				ret = TryRecieveItem( sceneId, selfId, reward_item, QUALITY_MUST_BE_CHANGE)
				if ret > 0 then
					BeginEvent(sceneId)
						strText = format("C醕 h� 鹫t 疬㧟 #{_ITEM%d}!", reward_item)
						AddText(sceneId,strText);
					EndEvent(sceneId)
					DispatchMissionTips(sceneId,selfId)
				else
					SetMissionByIndex(sceneId,selfId,misIndex,3,4)
					--记录下玩家应该拿到奖励而没有拿到!
					local targetId = GetMissionData(sceneId,selfId,MD_CAOYUN_TARGETID)
					BeginEvent(sceneId)
						AddText(sceneId,"鞋 kh韈h l� cho nh鎛g c痭g hi猲 c黙 c醕 h� 鸠i v緄 T鄌 V, ta 穑c bi畉 chu b� cho c醕 h� m祎 ph #{_ITEM"..reward_item.."}, nh遪g t鷌 x醕h c黙 c醕 h� 疸 馥y r癷, kh鬾g th� cho v鄌 th阭 疬㧟, h銀 thu d鱪 t鷌 x醕h xong r癷 th鬾g b醥 cho ta bi猼!")
						AddNumText(sceneId,x311010_g_ScriptId,"T鷌 x醕h c黙 ta 疸 thu d鱪 xong",-1,3)
						AddNumText(sceneId,x311010_g_ScriptId,"B� 餴, ta kh鬾g c n鎍",-1,0)
					EndEvent(sceneId)
					DispatchEventList(sceneId,selfId,targetId)
					
				end
					

			end
--			local Mission_Round =	GetMissionData(sceneId,selfId,MD_CAOYUN_HUAN)
--			if Mission_Round >= 22 then
--				BeginEvent(sceneId)
--					strText="你快去兑换官票吧，本次交易已经超限!"
--					AddText(sceneId,strText);
--				EndEvent(sceneId)
--				DispatchMissionTips(sceneId,selfId)
--			end




-----------------------------------------------------------
--			x311010_OnPopupBargainingUI( sceneId, selfId )
-----------------------------------------------------------
		end
		end
	
end

--**********************************
--兑换官票
--**********************************
function x311010_OnRedeemUI( sceneId, selfId )

	if LuaFnIsCanDoScriptLogic(sceneId, selfId) < 1 then
		return
	end

	  if IsMissionHaveDone(sceneId,selfId,x311010_g_MissionId) > 0 then
	   	return 
		end

    --如果已接此任务
    if IsHaveMission(sceneId,selfId,x311010_g_MissionId) > 0 then
				
				local ItemNum = GetItemCount(sceneId,selfId,x311010_g_CashItem_id)
				
				if ItemNum < x311010_g_CashItem_count then
					BeginUICommand(sceneId)
						UICommand_AddInt(sceneId,5)
						UICommand_AddInt(sceneId,4)
					EndUICommand(sceneId)
					DispatchUICommand(sceneId,selfId, 0)
					return
				end
				local misIndex = GetMissionIndexByID(sceneId,selfId,x311010_g_MissionId)
				local Cargo	= GetMissionParam(sceneId,selfId,misIndex,2)
				if Cargo > 0 then
					BeginEvent(sceneId)	
						strText = format("L鄊 s誧h khoang xong m緄 疬㧟 鸨i quan phi猽!")
						AddText(sceneId,strText);
					EndEvent(sceneId)
					DispatchMissionTips(sceneId,selfId)
					return
				end
			--结束此任务，并根据官票上的面额来给予相关奖励
			--钱和经验等
			--可能奖励还跟环数有关系
			--begin modified by zhangguoxin 090207
			--GetMissionData(sceneId,selfId,MD_CAOYUN_HUAN) 
			--local iDayCount = GetMissionData(sceneId,selfId,MD_CAOYUN_DAYCOUNT)/100000
			local iDayCount = GetMissionData(sceneId,selfId,MD_CAOYUN_DAYCOUNT);
			--end modified by zhangguoxin 090207
			
			BeginUICommand(sceneId)
				UICommand_AddInt(sceneId,5)
				UICommand_AddInt(sceneId,3)
			EndUICommand(sceneId)
			DispatchUICommand(sceneId,selfId, 0)
			
			misIndex = GetMissionIndexByID(sceneId,selfId,x311010_g_MissionId)
			Balance = GetMissionParam(sceneId,selfId,misIndex,5)
--			TransNPC = GetMissionParam(sceneId,selfId,misIndex,6)
			local targetId = GetMissionData(sceneId,selfId,MD_CAOYUN_TARGETID)
			TransNPC = x311010_TransPortNPC(sceneId,targetId)
			
			if TransNPC == 4 then
				return
			end
--这里不检查balance，因为所有买的地方都排除了是否会出现负数的情况
			local Quotiety = x311010_Calculate_Modulus( sceneId, selfId )
			Quotiety = 2
			local Corpus = 10000 * Quotiety
			local Margin = Balance - Corpus
			
			if x311010_OnAccomplished( sceneId, selfId ) ~= 1 then
				return
			end
			
			if	Margin > 0 then
				local Level = LuaFnGetLevel( sceneId, selfId)
--				Margin = Margin * (0.625+0.02*(Level-30)/2)
				--AddMoney(sceneId,selfId,Margin + Corpus);
				AddMoneyJZ(sceneId, selfId, 1.2*(Margin+Corpus));
				--记录统计信息
				LuaFnAuditCaoYun(sceneId, selfId, iDayCount, 0, Margin)
--				BeginEvent(sceneId)	
--					strText = format("你得到#{_MONEY"..Margin.."}的漕运花红!")
--					AddText(sceneId,strText);
--				EndEvent(sceneId)
--				DispatchMissionTips(sceneId,selfId)

				local targetId = GetMissionData(sceneId,selfId,MD_CAOYUN_TARGETID)
				--local msg = "恭喜您结束漕运，本轮漕运您获得花红#{_EXCHG"..Balance.."}，加上20%额外收益，一共为#{_EXCHG"..1.2*Balance.."}!扣除押金后，您获得花红#{_EXCHG"..1.2*Balance-Corpus.."}!"
 				local msg = "Ch鷆 m譶g c醕 h� 疸 k猼 th鷆 T鄌 V, l T鄌 V n鄖 c醕 h� 疸 鹫t 疬㧟 t眓g c祅g hoa h皀g #{_MONEY"..Balance.."}, sau khi tr� ti玭 穑t c鱟, c醕 h� nh 疬㧟 hoa h皀g#{_MONEY"..Margin.."}"
 				local cmsg = "Tham ti玭 tham ti玭.."
				x311010_Client_Show_Message( sceneId, selfId, targetId, msg, cmsg,0)

			elseif Balance > 0 then
				AddMoneyJZ(sceneId,selfId,Balance);
				--记录统计信息
				LuaFnAuditCaoYun(sceneId, selfId, iDayCount, 0, 0)
				BeginEvent(sceneId)	
					strText = format("C醕 h� kinh doanh kh鬾g l呓ng thi畁, kh鬾g nh 疬㧟 hoa h皀g, ch� nh 疬㧟 ti玭 T鄌 V l n鄖 #{_EXCHG"..Balance.."}." )
					AddText(sceneId,strText);
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
			else
				--记录统计信息
				LuaFnAuditCaoYun(sceneId, selfId, iDayCount, 0, -Corpus)
				BeginEvent(sceneId)	
					strText = format("C醕 h� kinh doanh kh鬾g l呓ng thi畁, kh鬾g nh 疬㧟 hoa h皀g, m� m lu鬾 c� v痭." )
					AddText(sceneId,strText);
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
			end
			--扣除官票
			
			--x311010_OnAccomplished( sceneId, selfId )
			
			
		end

end


--**********************************
--判断应该结束他的打压市场的cool down
--**********************************
function x311010_OnFinishHaggleDown( sceneId, selfId )

	local misIndex = GetMissionIndexByID(sceneId,selfId,x311010_g_MissionId)
	SetMissionData(sceneId,selfId,MD_CAOYUN_BARGAINDOWN,0)
			
	BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,5)
		UICommand_AddInt(sceneId,14)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 0)
	return
end

--**********************************
--判断应该结束他的哄抬物价的cool down
--**********************************
function x311010_OnFinishHaggleUp( sceneId, selfId )

	--结束他的热销CD
	local misIndex = GetMissionIndexByID(sceneId,selfId,x311010_g_MissionId)
	SetMissionData(sceneId,selfId,MD_CAOYUN_BARGAINUP,0)
		
	BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,5)
		UICommand_AddInt(sceneId,13)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 0)
	return
end

--**********************************
--放弃
--**********************************
function x311010_OnAbandon( sceneId, selfId )

	x311010_OnAccomplished( sceneId, selfId )

	x311010_OnAbandon_Necessary( sceneId, selfId )
	
end

function x311010_OnAccomplished( sceneId, selfId )

	--移去任务物品
	if DelItem( sceneId, selfId, x311010_g_CashItem_id, x311010_g_CashItem_count ) ~= 1 then 
		return 0 
	end 

--删除玩家任务列表中对应的任务
	local ret = DelMission( sceneId, selfId, x311010_g_MissionId )
	if ret > 0 then
--删除称号“漕运商” 孙雨
		SetCurTitle(sceneId, selfId,  0, 124)
		DeleteTitle( sceneId, selfId,  5)
		LuaFnDispatchAllTitle(sceneId, selfId)	
--移去任务物品
		--DelItem( sceneId, selfId, x311010_g_CashItem_id, x311010_g_CashItem_count )
		--SetMissionData(sceneId,selfId,MD_CAOYUN_HUAN,0)
		SetMissionData(sceneId,selfId,MD_CAOYUN_MONSTERTIMER,0)
	end
	LuaFnCancelSpecificImpact(sceneId,selfId,113)

	return 1
end

--**********************************
--玩家死亡
--**********************************
function x311010_OnHumanDie( sceneId, selfId, killerId )
	local misIndex = GetMissionIndexByID(sceneId,selfId,x311010_g_MissionId)
	local Balance = GetMissionParam(sceneId,selfId,misIndex,5)
	local Cargo =  GetMissionParam(sceneId,selfId,misIndex,2)
	x311010_OnAccomplished( sceneId, selfId )
	BeginEvent(sceneId)
		AddText(sceneId, "#{CYSB_081107_1}")
	EndEvent()
	DispatchMissionTips(sceneId, selfId)
	BroadMsgByChatPipe(sceneId, selfId, "#{CYSB_081107_1}", 8)
	if Balance > 1 then
		pos_x = GetHumanWorldX(sceneId,selfId)
		pos_z = GetHumanWorldZ(sceneId,selfId)
	
--		local ret = DropBoxEnterScene(	pos_x,pos_z,sceneId )
		
--		if ret > -1 then
--			AddItemToBox(sceneId,ret,QUALITY_MUST_BE_CHANGE,1,30001000)
--
--			--按照最新的计算方法计算出的掉落到银票中的金钱
--				--银票的价值＝玩家漕运证上所有的金钱×等级影响系数!
--				--等级影响系数计算规则如下：
--				--当玩家等级<=30级时，等级影响系数 = 25%
--				--当玩家等级>30级并且<=73级时，等级影响系数 = 25%*(玩家等级/30)^1.27
--				--当玩家等级>73级时，等级影响系数 = 80%
--				
--			local nLevel = GetLevel(sceneId, selfId)
--			local nQuotiety = 0
--			if nLevel <= 30  then
--				nQuotiety = 0.25
--			end
--			
--			if nLevel > 30 and nLevel <= 73  then
--				nQuotiety = 0.25 * ((nLevel/30)^1.27)
--			end
--			
--			if nLevel > 73   then
--				nQuotiety = 0.8
--			end
--			
--			local Corpus = Balance * nQuotiety
--			
--			Corpus = floor(Corpus)
--			SetBoxItemParam( sceneId, selfId, ret, 0, 0, 2, Corpus )
--		end
	end

end

--检测次数
function x311010_OnAccept_Necessary( sceneId, selfId )
	local Level =GetLevel(sceneId, selfId)
	
	local Max_Time_EveryDay = 0

	if Level >= 70 then
		Max_Time_EveryDay = 50
	elseif Level >= 50 then
		Max_Time_EveryDay = 40
	elseif Level >= 30 then
		Max_Time_EveryDay = 30
	end
	--韦青5月4日在文档里说要限制成20次
	Max_Time_EveryDay = 20
	
	--begin modified by zhangguoxin 090207
	--local iDayCount=GetMissionData(sceneId,selfId,MD_CAOYUN_DAYCOUNT)
	--local iTime = mod(iDayCount,100000)
	--local iDayTime = floor(iTime/100)	--上一次交任务的时间(天数)
	--local iQuarterTime = mod(iTime,100)	--上一次交任务的时间(刻)
	--local iDayHuan = floor(iDayCount/100000) --当天内完成的任务次数
  --
	--local CurTime = GetHourTime()		--当前时间
	--local CurDaytime = floor(CurTime/100)	--当前时间(天)
	--local CurQuarterTime = mod(CurTime,100)	--当前时间(刻)
	local iDayHuan = GetMissionData(sceneId,selfId,MD_CAOYUN_DAYCOUNT); --当天内完成的任务次数
	
	local iTime = GetMissionData(sceneId,selfId,MD_CAOYUN_DAYTIME);			--上次完成任务时间
	local iDayTime = floor(iTime/100)																		--上一次交任务的时间(天数)
	local iQuarterTime = mod(iTime,100)																	--上一次交任务的时间(刻)
		
	local CurTime = GetQuarterTime()																		--当前时间
	local CurDaytime = floor(CurTime/100)																--当前时间(天)
	local CurQuarterTime = mod(CurTime,100)															--当前时间(刻)
	--end modified by zhangguoxin 090207

	if iTime == CurTime then
		BeginEvent(sceneId)
			strText = format("Th秈 gian ch遖 皙n c醕 h� kh鬾g nh 疬㧟 nhi甿 v� T鄌 V.")
			AddText(sceneId,strText)
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return -1
	end
	

	if CurDaytime==iDayTime then 	--上次完成任务是同一天内
		if iDayHuan >= Max_Time_EveryDay then
--			BeginEvent(sceneId)
--				strText = format("这个任务一天最多做%d次!", Max_Time_EveryDay )
--				AddText(sceneId,strText)
--			EndEvent(sceneId)
--			DispatchMissionTips(sceneId,selfId)

			local targetId = GetMissionData(sceneId,selfId,MD_CAOYUN_TARGETID)
			local msg = "Xin l瞚, nhi甿 v� T鄌 V ng鄖 h鬽 nay c黙 c醕 h� 疸 馥y "..Max_Time_EveryDay.." M裞 gi緄 h課 cao nh l tr呔c, xin c醕 h� ng鄖 mai quay l読."
	 		local cmsg = "Ta bi猼 r癷.."
			x311010_Client_Show_Message( sceneId, selfId, targetId, msg, cmsg,0)

			return -1
		end
--		iDayHuan = iDayHuan+1
	else							--上次完成任务不在同一天，重置
		iDayTime = CurDaytime
		iDayHuan = 0
	end
	--begin modified by zhangguoxin 090207
	--iDayCount = iDayHuan*100000+CurDaytime*100+iQuarterTime
	----PrintStr("accept:"..iDayCount)
	--SetMissionData(sceneId,selfId,MD_CAOYUN_DAYCOUNT,iDayCount)
	local newTime = CurDaytime*100+iQuarterTime;
	SetMissionData(sceneId,selfId,MD_CAOYUN_DAYCOUNT,iDayHuan);
	SetMissionData(sceneId,selfId,MD_CAOYUN_DAYTIME,newTime);
	--end modified by zhangguoxin 090207
	return 1
	
end
--增加次数
function x311010_OnAdd_CaoyunTime( sceneId, selfId )
	local Level =GetLevel(sceneId, selfId)
	
	local Max_Time_EveryDay = 0

	if Level >= 70 then
		Max_Time_EveryDay = 50
	elseif Level >= 50 then
		Max_Time_EveryDay = 40
	elseif Level >= 30 then
		Max_Time_EveryDay = 30
	end
	--韦青5月4日在文档里说要限制成20次
	Max_Time_EveryDay = 20
	
	--begin modified by zhangguoxin 090207
	--local iDayCount=GetMissionData(sceneId,selfId,MD_CAOYUN_DAYCOUNT)
	--local iTime = mod(iDayCount,100000)
	--local iDayTime = floor(iTime/100)	--上一次交任务的时间(天数)
	--local iQuarterTime = mod(iTime,100)	--上一次交任务的时间(刻)
	--local iDayHuan = floor(iDayCount/100000) --当天内完成的任务次数
  --
	--local CurTime = GetHourTime()		--当前时间
	--local CurDaytime = floor(CurTime/100)	--当前时间(天)
	--local CurQuarterTime = mod(CurTime,100)	--当前时间(刻)
	local iDayHuan = GetMissionData(sceneId,selfId,MD_CAOYUN_DAYCOUNT); --当天内完成的任务次数
	
	local iTime = GetMissionData(sceneId,selfId,MD_CAOYUN_DAYTIME);			--上次完成任务时间
	local iDayTime = floor(iTime/100)																		--上一次交任务的时间(天数)
	local iQuarterTime = mod(iTime,100)																	--上一次交任务的时间(刻)
	
	local CurTime = GetQuarterTime()																		--当前时间
	local CurDaytime = floor(CurTime/100)																--当前时间(天)
	local CurQuarterTime = mod(CurTime,100)															--当前时间(刻)
	--end modified by zhangguoxin 090207
	
--	if iTime == CurTime then
--		BeginEvent(sceneId)
--			strText = format("时间未到，还不能接漕运任务!")
--			AddText(sceneId,strText)
--		EndEvent(sceneId)
-- 		DispatchMissionTips(sceneId,selfId)
--		return -1
--	end
	

	if CurDaytime==iDayTime then 	--上次完成任务是同一天内
		local misIndex = GetMissionIndexByID(sceneId,selfId,x311010_g_MissionId)
		local Cargo			= GetMissionParam(sceneId,selfId,misIndex,2)
		if Cargo > 0 and iDayHuan >= Max_Time_EveryDay-1 then
		
		end
		if (iDayHuan >= Max_Time_EveryDay) then
--			BeginEvent(sceneId)
--				strText = format("这个任务一天最多做%d次!", Max_Time_EveryDay )
--				AddText(sceneId,strText)
--			EndEvent(sceneId)
--			DispatchMissionTips(sceneId,selfId)
			local targetId = GetMissionData(sceneId,selfId,MD_CAOYUN_TARGETID)
--			local msg = "对不起，您今天所从事的漕运任务已经满"..Max_Time_EveryDay.."次上限，请您明天再来吧!"
			local msg = "S� l T鄌 V h鬽 nay c黙 c醕 h� 疸 鹫t m裞 gi緄 h課 20 l."
	 		local cmsg = "Ta bi猼 r癷.."
			x311010_Client_Show_Message( sceneId, selfId, targetId, msg, cmsg,0)

			return -1
		end
		iDayHuan = iDayHuan+1
	else							--上次完成任务不在同一天，重置
		iDayTime = CurDaytime
		iDayHuan = 0
	end
	
	--begin modified by zhangguoxin 090207
	--iDayCount = iDayHuan*100000+CurDaytime*100+iQuarterTime
	----PrintStr("add time:"..iDayCount)
	--SetMissionData(sceneId,selfId,MD_CAOYUN_DAYCOUNT,iDayCount)
	local newTime = CurDaytime*100+iQuarterTime;
	SetMissionData(sceneId,selfId,MD_CAOYUN_DAYCOUNT,iDayHuan);
	SetMissionData(sceneId,selfId,MD_CAOYUN_DAYTIME,newTime);
	--end modified by zhangguoxin 090207
	return 1
end

--放弃时记录时间
function x311010_OnAbandon_Necessary( sceneId, selfId )
	--begin modified by zhangguoxin 090207
	--local iDayCount=GetMissionData(sceneId,selfId,MD_CAOYUN_DAYCOUNT)
	--local iTime = mod(iDayCount,100000)
	--local iDayHuan = floor(iDayCount/100000) --当天内完成的任务次数
  --
	--local CurTime = GetHourTime()		--当前时间
	--
	--iDayCount = iDayHuan*100000+CurTime
  --
	--	
	--SetMissionData(sceneId,selfId,MD_CAOYUN_DAYCOUNT,iDayCount)
	local CurTime = GetQuarterTime()		--当前时间
	SetMissionData(sceneId,selfId,MD_CAOYUN_DAYTIME,CurTime);
	--end modified by zhangguoxin 090207
	return 1
	
end

function x311010_OnPlayerCaoyunTimer( sceneId, selfId )

	local Detect = 0
	for i, eachId in x311010_g_Traverse_Region do
		if eachId == sceneId then
			Detect = 1
		end
	end
	
	local Orientation_Article = 0
	local Article_Quantity
	for i, item in x311010_g_EludeItem do
		Article_Quantity = GetItemCount( sceneId, selfId, item.id )
		if Article_Quantity ~= item.num then
			Orientation_Article = 1
		end
	end

	if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 137) ~= 0 then
		return
	end

	if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 136) ~= 0 and random(2) == 1 then
		return
	end

	if Detect == 1 and Orientation_Article == 1 then	
		local rrr = random(100)
		if random(2) < 3 then
			local iMonsterCount=GetMissionData(sceneId,selfId,MD_CAOYUN_MONSTERTIMER)
			if iMonsterCount < 4 then
				iMonsterCount = iMonsterCount + 1
			end
			if iMonsterCount == 1 or iMonsterCount == 2 then

				SetMissionData(sceneId,selfId,MD_CAOYUN_MONSTERTIMER,iMonsterCount)
				
				-- 遇漕运怪有20%几率变为答题 hongyu ------
				if random(100) <= 20  then
					LuaFnSendGuajiQuestion(sceneId,selfId)
					return
				end
				-- hongyu end ----------------------------
				
				pos_x = GetHumanWorldX(sceneId,selfId)
				pos_z = GetHumanWorldZ(sceneId,selfId)
				
				local Level_Self = GetLevel( sceneId, selfId )
				local Adapt = floor( (Level_Self-1) / 10);	
				if Adapt < 1 then
					Adapt = 1
				elseif Adapt > 20 then   -- modify by zchw  
					Adapt = 20
				end
				local Monster_Id = x311010_g_Accommodate_Distinction[Adapt];
				npcobjid = LuaFnCreateMonster( sceneId, Monster_Id, pos_x,pos_z, 10,95, 311011 )
				x311010_Diversification( sceneId, npcobjid )
--				Msg2Player(  sceneId, selfId,"@*;npcpaopao;"..npcobjid..";15",MSG2PLAYER_PARA )
--				Msg2Player(  sceneId, selfId,"@*;npcpaopao;"..npcobjid..";16",MSG2PLAYER_PARA )
				SetLevel(sceneId, npcobjid,Level_Self-1)
				SetCharacterTimer( sceneId, npcobjid, 60000 )
				SetCharacterDieTime(sceneId, npcobjid, 60000 * 4 )
--				PaoPao(sceneId,selfId,npcobjid)
				AddPrimaryEnemy(sceneId,npcobjid,selfId)
				LuaFnSendSpecificImpactToUnit(sceneId,selfId,npcobjid,npcobjid,114,0)
				BeginEvent(sceneId)
					strText = format("Xin ch� �, n絠 n鄖 c� gi c呔p xu hi畁")
					AddText(sceneId,strText)
	 			EndEvent(sceneId)                                                                                                                                                                                                                                          
 				DispatchMissionTips(sceneId,selfId)
 				LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,37,0)
				LuaFnSendSpecificImpactToUnit(sceneId,selfId,npcobjid,npcobjid,37,0)
				LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,38,0)
				for i=1,2 do
					if ( rrr > 5 and i == 1 ) or ( rrr > 35 and i == 2) then 
						local Monster_Id =x311010_g_Acclimatize_Distinction[Adapt]
						local this_x,this_z = x311010_Random_Nativity(pos_x,pos_z,i)
						npcobjid = LuaFnCreateMonster( sceneId, Monster_Id, this_x,this_z, 10,95, 311011 )
						x311010_Diversification( sceneId, npcobjid )
	--只有怪物头目冒泡
						if i == 1 then
							Msg2Player(  sceneId, selfId,"@*;npcpaopao;"..npcobjid..";15",MSG2PLAYER_PARA )
						else
							Msg2Player(  sceneId, selfId,"@*;npcpaopao;"..npcobjid..";16",MSG2PLAYER_PARA )
						end
						SetLevel(sceneId, npcobjid,Level_Self-2)
						SetCharacterTimer( sceneId, npcobjid, 60000 )
						SetCharacterDieTime(sceneId, npcobjid, 60000 * 4)
	--					PaoPao(sceneId,selfId,npcobjid)
						AddPrimaryEnemy(sceneId,npcobjid,selfId)
						LuaFnSendSpecificImpactToUnit(sceneId,selfId,npcobjid,npcobjid,114,0)
						LuaFnSendSpecificImpactToUnit(sceneId,selfId,npcobjid,npcobjid,37,0)
	
					end
				end
			elseif iMonsterCount == 100 then
				SetMissionData(sceneId,selfId,MD_CAOYUN_MONSTERTIMER,0)
			end
		end
	else
		SetCharacterTimer( sceneId, selfId, 0 )
	end
end

function x311010_OnPlayerEnterCaoyunScene( sceneId, selfId )

	local find = 0
	for i, eachId in x311010_g_Traverse_Region do
		if eachId == sceneId then
			find = 1
		end
	end
	
	if find == 1 then	
		SetCharacterTimer( sceneId, selfId, 45000 )
		SetMissionData(sceneId,selfId,MD_CAOYUN_MONSTERTIMER,100)
		BeginEvent(sceneId)
			strText = format("Xin ch� �, n絠 n鄖 c� gi c呔p xu hi畁")
			AddText(sceneId,strText)
		EndEvent(sceneId)                                                                                                                                                                                                                                          
		DispatchMissionTips(sceneId,selfId)
	else
		SetCharacterTimer( sceneId, selfId, 0 )
	end
	return 1
end

function x311010_Diversification( sceneId, MonsterId )
	--设置monster的称号
	ret = random(7)
	local part1 = x311010_g_TitleTableOfMonster[ret].part1
	ret = random(7)
	local part2 = x311010_g_TitleTableOfMonster[ret].part2
	local str = format("%s%s", part1, part2)
	SetCharacterTitle(sceneId, MonsterId, str)
	--设置monster的name
	ret = random(8)
	local part1 = x311010_g_NameTableOfMonster[ret].part1
	ret = random(8)
	local part2 = x311010_g_NameTableOfMonster[ret].part2
	ret = random(8)
	local part3 = x311010_g_NameTableOfMonster[ret].part3
	local part4 = ""
	local rd = random(4)
	
	if rd == 1 then
		part4 = format("%s%s" , part2, part3)
	elseif rd == 2 then
		part4 = part2
	elseif rd == 3 then
		part4 = part3
	else
		part4 = format("%s%s" , part3, part2)
	end
	
	str = format("%s%s", part1, part4)
	
	SetCharacterName(sceneId, MonsterId, str)
	return 1	
end

function x311010_IsSkillLikeScript( sceneId, selfId)
	return 0;
end

function x311010_Random_Nativity(position_x,position_z,Range)
	local Variety_X,Variety_Z;
	if position_x > 2 then
		Variety_X = position_x - 1 + random(3)+random(Range+1)
	end
	
	if position_z > 2 then
		Variety_Z = position_z - 1 + random(3)+random(Range+1)
	end

	return Variety_X,Variety_Z
end

function x311010_Client_Show_Message( sceneId, selfId, targetId, Message, CloseMessage, NumText)

	BeginEvent(sceneId)

		AddText(sceneId,Message)
		AddNumText(sceneId,x311010_g_ScriptId,CloseMessage,-1,NumText)

	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
	
end

function x311010_OnHandle_QuestUI( sceneId, selfId, targetId, NumText )
--	PrintStr("NumText="..NumText)
	if NumText == 0 then
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)
	elseif NumText == 1 then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,3)
			UICommand_AddInt(sceneId,targetId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 0)
	elseif NumText == 2 then
		local Caoyun_Times =  GetMissionData(sceneId,selfId,MD_CAOYUN_SUMTIME)	
		local find = -1
		for i, times in x311010_g_Title_Times_Confine do
			if times <= Caoyun_Times then
				find = i
				break
			end
		end

--		BeginUICommand(sceneId)
--		EndUICommand(sceneId)
--		DispatchUICommand(sceneId,selfId, 1000)
--		
--		local New_Title = x311010_g_Title_Confine[find]
--
--		LuaFnAwardTitle( sceneId, selfId,  5, New_Title)
--		SetCurTitle(sceneId, selfId,  5, New_Title)
--		LuaFnDispatchAllTitle(sceneId, selfId)
		
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,5)
			UICommand_AddInt(sceneId,2)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 0)
		
	elseif NumText == 3 then
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)
		local my_level = GetLevel( sceneId, selfId )
		local medicine_level = floor(my_level/10)
		local reward_item 
		
		if medicine_level < 1 then
			medicine_level = 1
		elseif medicine_level > 10 then
			medicine_level = 10
		end
		
		if random(100) < 50 then
			reward_item = x311010_g_Reward_Medicine_HP[medicine_level]
		else
			reward_item = x311010_g_Reward_Medicine_MP[medicine_level]
		end
		TryRecieveItem( sceneId, selfId, reward_item, QUALITY_MUST_BE_CHANGE )
	elseif NumText > 3 and NumText < 17 then
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)
		local Scene_Info = x311010_g_Transportation_Exit[sceneId]
		if Scene_Info then
			for i=1,2 do
				if Scene_Info[i].Exit_Reply_Number == NumText then
					SetPos( sceneId, selfId, Scene_Info[i].Exit_Position.x, Scene_Info[i].Exit_Position.y )
				end				
			end
		end

	elseif NumText > 16 and NumText < 20 then
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)
		local Scene_Info = x311010_g_Transportation_City[NumText-17]
		
		if Scene_Info then
			local rrr= random(3)-1
			NewWorld( sceneId, selfId, NumText-17, Scene_Info[rrr].x, Scene_Info[rrr].y )
		end
	elseif NumText > 19 and NumText < 23 then
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)
		local Scene_Info = x311010_g_Transportation_Legate[NumText-20]
		
		if Scene_Info then
			NewWorld( sceneId, selfId, NumText-20, Scene_Info.Position.x, Scene_Info.Position.y )
		end
	elseif NumText > 22 and NumText < 27 then
			BeginUICommand(sceneId)
			EndUICommand(sceneId)
			DispatchUICommand(sceneId,selfId, 1000)
			local my_level = GetLevel( sceneId, selfId )
			if my_level>=30 and my_level<40 then
				level_phase = 1
			elseif my_level>=40 and my_level<55 then
				level_phase = 2
			elseif my_level>=55 and my_level<65 then
				level_phase = 3
			elseif my_level>=65 and my_level<75 then
				level_phase = 4
			elseif my_level>=75 and my_level<85 then
				level_phase = 5
			elseif my_level>=85 and my_level<95 then
				level_phase = 6
			elseif my_level>=95 and my_level<105 then
				level_phase = 7
			elseif my_level>=105 and my_level<115 then
				level_phase = 8
			elseif my_level >= 115 then
				level_phase = 9
			end
			LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,x311010_g_SpecialImpact[NumText].Impact_ID[level_phase],0)
	elseif NumText == 27 then
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,x311010_g_IncreaseSpeed_Impact[NumText].Impact_ID,0)
	elseif NumText == 28 then
		x311010_Monger_Random(sceneId,selfId)
	end

end

function x311010_TransPortNPC(sceneId,targetId)

		local TransportNPCName=GetName(sceneId,targetId);
		
		local type = GetCharacterType(sceneId,targetId);
		
		if type ~=2 then 
			return -1
		end
		
		if TransportNPCName == "Tri畊 Minh Th鄋h" then
			return 1
		elseif TransportNPCName == "L鴆 S� Tranh" then
			return 3
		elseif TransportNPCName == "V呓ng Nh唼c V�" then
			return 2
		elseif TransportNPCName == "H Th� Th呓ng Nh鈔" then
			return 4
		else 
			return -1
		end
end

--*****************************************************
--玩家领取官票并购买本地货物后给玩家随机加三种好处
--Client\Interface\Carriage\Carriage.lua
--x311010_Close_Carriage_UI()调用
--*****************************************************
function x311010_Close_Carriage_UI( sceneId, selfId )
	
	--没有漕运任务就直接退出--add by xindefeng
	if IsHaveMission(sceneId,selfId,x311010_g_MissionId) <= 0 then
			return
  end

	local misIndex = GetMissionIndexByID(sceneId,selfId,x311010_g_MissionId)
	local Statue = GetMissionParam(sceneId,selfId,misIndex,3)
--	PrintStr("statue="..Statue)
	if Statue == 1 or Statue == 2 or Statue == 3 then
		SetMissionByIndex(sceneId,selfId,misIndex,3,0)
		local rrr = random(100)
		local strText
		if rrr <= 2 and GetMissionParam(sceneId,selfId,misIndex,4) <= 0 then
			
			if (Statue ==1) then
				strText = "Mu痠"
			elseif ( Statue == 2) then
				strText = "S"
			elseif( Statue ==3) then
				strText = " G誳"
			end
			local targetId = GetMissionData(sceneId,selfId,MD_CAOYUN_TARGETID)
			local msg = "Ch鷆 m譶g c醕 h�, h鄋g h骯 T鄌 V c黙 c醕 h� l n鄖 thu礳 c 1"..strText.."Sau l T鄌 V n鄖, l㱮 nhu c黙 c醕 h� t錸g l阯 10%."
 			local cmsg = "V may t痶 l.."

			x311010_Client_Show_Message( sceneId, selfId, targetId, msg, cmsg, 0)
			SetMissionByIndex(sceneId,selfId,misIndex,4,Statue)
			--在特殊状态位记录下当时的漕货
		elseif rrr <= 5 then
			local targetId = GetMissionData(sceneId,selfId,MD_CAOYUN_TARGETID)
			local msg = "Ch鷆 m譶g c醕 h�, l T鄌 V n鄖 c醕 h� c� 疬㧟 l韓h g醕 b鋙 v�, nh� v c醕 h� s� kh鬾g g ph鋓 t阯 c呔p h鄋g n鄌."
 			local cmsg = "V may t痶 l.."

			x311010_Client_Show_Message( sceneId, selfId, targetId, msg, cmsg, 0)
			LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,137,0)
		elseif rrr <= 10 then
			local targetId = GetMissionData(sceneId,selfId,MD_CAOYUN_TARGETID)
			local msg = "Ch鷆 m譶g c醕 h�, c醕 h� may m l, trong qu� tr靚h T鄌 V, kh� n錸g g ph鋓 c呔p c黙 c醕 h� ch� c騨 50%."
 			local cmsg = "V may t痶 l.."

			x311010_Client_Show_Message( sceneId, selfId, targetId, msg, cmsg, 0)
			LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,136,0)
		end
	end
end

function x311010_Monger_Random(sceneId,selfId)
			local targetId = GetMissionData(sceneId,selfId,MD_CAOYUN_TARGETID)
			local misIndex = GetMissionIndexByID(sceneId,selfId,x311010_g_MissionId)
			
			TRAFFICKER_CLICK_TIMES = TRAFFICKER_CLICK_TIMES + 1
			
			local  PlayerSex=GetSex(sceneId,selfId)
			if PlayerSex == 0 then
				PlayerSex = "C� n呓ng "
			else
				PlayerSex = "Thi猽 hi畃 "
			end
			
--是否出现出售漕货
			local rrr = random(100)
				
			if rrr < 0 then
--屏蔽黑市商人的私盐
						
				local msg = "Th 疳ng ti猚, v may c黙 c醕 h� kh鬾g t痶.."
 				local cmsg = "L sau ta s� 皙n.."
				x311010_Client_Show_Message( sceneId, selfId, targetId, msg, cmsg, 0)
					
--						BeginUICommand(sceneId)
--							UICommand_AddInt(sceneId,3)
--						--client 要在UI 上显示"买卖漕货"和"兑换官票"这2个button
--							UICommand_AddInt(sceneId,targetId)
--						--并且把NPC的ID传给client，以备下一步调用!
--						EndUICommand(sceneId)
--						DispatchUICommand(sceneId,selfId, 0)

			elseif rrr <= 20 then
			--传送至本地图, c豠 v鄌 c黙
				
				local City_Exit = x311010_g_Transportation_Exit[sceneId]
				if City_Exit then
					BeginEvent(sceneId)
		
						AddText(sceneId,PlayerSex..", c醕 h� c鹡g v v� qu�, ta n阯 gi鷓 c醕 h� m祎 韙, hy v鱪g l sau c醕 h� c� th� chi猽 c� 皙n chuy畁 l鄊 錸 c黙 ta h絥, ta c� th� 餰m h鄋g h骯 c黙 c醕 h� 皙n c豠 ra v鄌 ti猵 theo tr阯 b鋘 鸢, c醕 h� mu痭 餴 疴u?")
							AddNumText(sceneId,x311010_g_ScriptId,"Ta mu痭 皙n"..City_Exit[1].Exit_Name..", c豠 v鄌 c黙",-1,City_Exit[1].Exit_Reply_Number)
							AddNumText(sceneId,x311010_g_ScriptId,"Ta mu痭 皙n"..City_Exit[2].Exit_Name..", c豠 v鄌 c黙",-1,City_Exit[2].Exit_Reply_Number)
							AddNumText(sceneId,x311010_g_ScriptId,"Hay l� 瓞 ta t� 餴",-1,0)
					EndEvent(sceneId)
					DispatchEventList(sceneId,selfId,targetId)
				end
					
			elseif rrr <= 40 then
			--传送至城市的内部
				BeginEvent(sceneId)
		
					AddText(sceneId,PlayerSex..", c醕 h� c鹡g v v� qu�, ta n阯 gi鷓 c醕 h� m祎 韙, hy v鱪g l sau c醕 h� c� th� chi猽 c� 皙n chuy畁 l鄊 錸 c黙 ta h絥, ta c� th� 餰m h鄋g h骯 c黙 c醕 h� 皙n th鄋h ph� m� c醕 h� mu痭 皙n c醕 h� mu痭 餴 疴u?")
	
					for i=0,getn(x311010_g_Transportation_City) do
						AddNumText(sceneId,x311010_g_ScriptId,"Ta mu痭 餴 "..x311010_g_Transportation_City[i].Scene_Name,-1,x311010_g_Transportation_City[i].Reply_Number)
					end

					AddNumText(sceneId,x311010_g_ScriptId,"Hay l� 瓞 ta t� 餴",-1,0)
						
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
			elseif rrr <= 40 then
			--传送至漕运使处
				BeginEvent(sceneId)
		
					AddText(sceneId,PlayerSex..", c醕 h� c鹡g v v� qu�, ta n阯 gi鷓 c醕 h� m祎 韙, hy v鱪g l sau c醕 h� c� th� chi猽 c� 皙n chuy畁 l鄊 錸 c黙 ta h絥, ta c� th� 餰m h鄋g h骯 c黙 c醕 h� 皙n T鄌 V g 疴y, c醕 h� mu痭 餴 疴u?")
	
					for i=0,getn(x311010_g_Transportation_Legate) do
						AddNumText(sceneId,x311010_g_ScriptId,"Ta mu痭 餴 "..x311010_g_Transportation_Legate[i].Scene_Name.." T鄌 V c黙 ",-1,x311010_g_Transportation_Legate[i].Reply_Number)
					end

					AddNumText(sceneId,x311010_g_ScriptId,"Hay l� 瓞 ta t� 餴",-1,0)
						
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
			elseif rrr <= 48 then
					
				local find,level_phase
				if rrr < 43 then
				--增加外功攻击
					find = 23
				elseif rrr < 45 then
				--增加内功攻击
					find = 24
				elseif rrr < 47 then
				--增加外功防御
					find = 25
				elseif rrr < 49 then
				--增加内功防御
					find = 26
				end

				BeginEvent(sceneId)
		
					AddText(sceneId,"羞秐g T鄌 V r nguy hi琺, ta 疴y c� th� gi鷓 疬㧟 ch鷗 韙 cho c醕 h�, c� th� cho c醕 h� m祎 韙"..x311010_g_SpecialImpact[find].Impact_Name..", nh遪g m� l sau n猽 nh� ta c� h鄋g mu痭 b醤 ra, c醕 h� ph鋓 gi鷓 ta m緄 疬㧟")
	
					AddNumText(sceneId,x311010_g_ScriptId,"羞㧟 th鬷",-1,find)
					AddNumText(sceneId,x311010_g_ScriptId,"Hay l� 瓞 ta t� 餴",-1,0)
						
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
			else
			--增加速度
				BeginEvent(sceneId)
	
					AddText(sceneId,"羞秐g T鄌 V c騨 r d鄆, ta 疴y c� th� cho c醕 h� m祎 韙 gi鷓 疝, gi鷓 c醕 h� gia t錸g t痗 鸬 trong th秈 gian ng, nh遪g nh� l� mai n鄖 ph鋓 chi猽 c� 皙n chuy畁 l鄊 錸 c黙 ta, nh� ta gi� tr� 皤u tr鬾g nh� v鄌 ta nu鬷 s痭g h�")

					AddNumText(sceneId,x311010_g_ScriptId,"羞㧟 th鬷",-1,27)
					AddNumText(sceneId,x311010_g_ScriptId,"Hay l� 瓞 ta t� 餴",-1,0)
						
				EndEvent(sceneId)				
				DispatchEventList(sceneId,selfId,targetId)
			end
			return
end

