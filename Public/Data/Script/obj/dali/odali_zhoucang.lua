--大理NPC
--周仓
--普通

x002091_g_ScriptId	= 2091

--操作集
x002091_g_Key				=
{
		["do"]					= 100,	--确定
		["undo"]				= 101,	--取消
		["del"]					= 103,	--我决定退出江湖
}

--**********************************
--事件交互入口
--**********************************
function x002091_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "Ta chuy阯 ch� tr� kim b皀 nghi th裞. N猽 ng呓i mu痭 r豠 tay g醕 ki猰, h銀 皙n t靘 ta." )
		AddNumText( sceneId, x002091_g_ScriptId, "X醕 nh", -1, x002091_g_Key["do"] )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

function x002091_OnEventRequest( sceneId, selfId, targetId, eventId )
	local	key	= GetNumText()

	if key == x002091_g_Key["do"] then
		--1,		//请求成功，可以删除
		--2,		//在帮派中不可以自杀
		--3,		//结婚状态
		--4,		//物品上锁不能删除
		--5,		//拥有玩家商店
		--6,		//拥有结拜兄弟
		--7,		//拥有师徒关系
		BeginEvent(sceneId)
			local result = QueryDeleteCharState(sceneId,selfId)
			if result == 1 then
				AddText(sceneId,"Th飊h c th鄋h c鬾g, c� th� x骯 b� nh鈔 v.")
				AddNumText(sceneId,x002091_g_ScriptId,"X醕 nh x骯 b� nh鈔 v",6,x002091_g_Key["del"])
			end
			if result == 2 then
				AddText(sceneId,"H銀 r秈 kh鰅 bang ph醝 sau 痼 m緄 ti猲 h鄋h thao t醕 n鄖.")
			end
			if result == 3 then
				AddText(sceneId,"Ng呓i 餫ng c� quan h� phu th�, kh鬾g th� x骯 b� nh鈔 v.")
			end
			if result == 4 then
				AddText(sceneId,"Tr阯 ng叨i ng呓i c� v ph kh骯, kh鬾g th� x骯 b� nh鈔 v.")
			end
			if result == 5 then
				AddText(sceneId,"Ng呓i c騨 c� c豠 h鄋g � C豼 Ch鈛 Th呓ng H礽, kh鬾g th� x骯 b� nh鈔 v.")
			end
			if result == 6 then
				AddText(sceneId,"Ng呓i v鏽 c騨 h鋙 h鎢 kim lan, kh鬾g th� x骯 b� nh鈔 v.")
			end
			if result == 7 then
				AddText(sceneId,"Ng呓i c騨 c� quan h� s� 鸢, kh鬾g th� x骯 b� nh鈔 v.")
			end
			if result == 8 then
					local lefttime = GetLeftDeleteTime(sceneId,selfId)-7
					if lefttime > 0 then
						AddText(sceneId,"Nh鈔 v n鄖 c� th� x骯.")
					else
						AddText(sceneId,"X骯 b� nh鈔 v!");
					end
			end
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif key == x002091_g_Key["del"] then
		--ExecuteDeleteChar(sceneId, selfId)
		x002091_OpenClientAcceptUI( sceneId, selfId, targetId, eventId )
	end
end

function x002091_OpenClientAcceptUI( sceneId, selfId, targetId, eventId )    
    BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,x002091_g_ScriptId);
		UICommand_AddInt(sceneId,targetId);
		UICommand_AddInt(sceneId,eventId)
		UICommand_AddString(sceneId,"OnMsgAccept");
		local str = format("Th s� mu痭 x骯 b� nh鈔 v?")
		UICommand_AddString(sceneId,str);
	EndUICommand(sceneId)
	
	DispatchUICommand(sceneId,selfId, 24)
end

function x002091_OnMsgAccept( sceneId, selfId, targetId, eventId )
    local result = QueryDeleteCharState(sceneId,selfId)
    
    if( 1 == result ) then        
        ExecuteDeleteChar(sceneId, selfId)
    end
    
end
