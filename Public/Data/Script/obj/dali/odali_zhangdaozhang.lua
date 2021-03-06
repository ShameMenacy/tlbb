--大理NPC
--张道长
--普通

x002075_g_ScriptId	= 002075

--咫尺天涯(技能编号、技能名称、消耗金钱)
x002075_g_Ability				= {}
x002075_g_Ability["aid"]= 39
x002075_g_Ability["nam"]= "Ch� X韈h Thi阯 Nhai"
x002075_g_Ability["gld"]= 300000		--30G
x002075_g_LevMax				= 3					--可H鱟 的最高等级

--操作集
x002075_g_Key				= {}
x002075_g_Key["nul"]= 0		--啥都没做
x002075_g_Key["stu"]= 1		--H鱟 技能
x002075_g_Key["sty"]= 101	--确定H鱟 
x002075_g_Key["stn"]= 100	--放弃H鱟 
x002075_g_Key["lup"]= 2		--Th錸g c k� n錸g
x002075_g_Key["upy"]= 201	--确定升级
x002075_g_Key["upn"]= 200	--放弃升级
x002075_g_Key["des"]= 3		--Gi緄 thi畊 懈nh V� Ph�


--**********************************
--事件交互入口
--**********************************
function x002075_OnDefaultEvent( sceneId, selfId, targetId )
	local	lev	= QueryHumanAbilityLevel( sceneId, selfId, x002075_g_Ability["aid"] )
	BeginEvent( sceneId )
		AddText( sceneId, "Ta c� th� truy玭 th� cho ng呓i m祎 lo読 k� n錸g th k�, c� th� ghi l読 v� tr�, th鬾g tin, r thu ti畁 khi ng呓i tr� l読 n絠 n鄖." )
		AddText( sceneId, "Ch� �: Ph� c鄋g cao c, k� hi畊 s� d鴑g c鄋g nhi玼." )
		if GetLevel( sceneId, selfId ) >= 30 then
			if lev <= 0 then
				AddNumText( sceneId, x002075_g_ScriptId, "H鱟 "..x002075_g_Ability["nam"], 6, x002075_g_Key["stu"] )
			else
				AddNumText( sceneId, x002075_g_ScriptId, "Th錸g c k� n錸g", 6, x002075_g_Key["lup"] )
			end			
			AddNumText( sceneId, x002075_g_ScriptId, "C醝 g� c鹡g kh鬾g l鄊...", -1, x002075_g_Key["nul"] )
		end
		AddNumText( sceneId, x002075_g_ScriptId, "Gi緄 thi畊 懈nh V� Ph�", 11, x002075_g_Key["des"] )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--事件列表选中一项
--**********************************
function x002075_OnEventRequest( sceneId, selfId, targetId, eventId )
	local	key	= GetNumText()
	local	lev	= QueryHumanAbilityLevel( sceneId, selfId, x002075_g_Ability["aid"] )
	local exp = GetAbilityExp( sceneId, selfId, x002075_g_Ability["aid"] )	--熟练度
	local ret, demandMoney, _, limitAbilityExp, limitAbilityExpShow, _, limitLevel
		= LuaFnGetAbilityLevelUpConfig( x002075_g_Ability["aid"], lev + 1 )

	--Gi緄 thi畊 懈nh V� Ph�
	if key == x002075_g_Key["des"]	then

		x002075_MsgBox( sceneId, selfId, targetId, "#{function_help_020}" )

	--H鱟 技能
	elseif key == x002075_g_Key["stu"]	then
	
		if GetLevel( sceneId, selfId ) < 30 then--非法情况走到这里，也不需要提示了
			return 0
		end

		x002075_OnAsk( sceneId, selfId, targetId, x002075_g_Key["stu"], "H鱟 t k� n錸g n鄖 c ti陁 hao #{_EXCHG" .. demandMoney .. "} tinh l馽, ti猵 t鴆?" )
	
	--确定H鱟 
	elseif key == x002075_g_Key["sty"] then
	
		if GetLevel( sceneId, selfId ) < 30 then--非法情况走到这里，也不需要提示了
			return 0
		end

		if lev > 0 then
			x002075_MsgBox( sceneId, selfId, targetId, "Ng呓i 疸 h鱟 t k� n錸g n鄖!" )
			return 0
		end

		if LuaFnGetMoney( sceneId, selfId )+GetMoneyJZ( sceneId, selfId ) < demandMoney then
			x002075_MsgBox( sceneId, selfId, targetId, "S� ti玭 kh鬾g 瘘, kh鬾g th� h鱟 t!" )
			return 0
		end

		LuaFnCostMoneyWithPriority( sceneId, selfId, demandMoney )
		SetHumanAbilityLevel( sceneId, selfId, x002075_g_Ability["aid"], 1 )
		x002075_SetMyPrescription( sceneId, selfId, 1 )
		x002075_MsgBox( sceneId, selfId, targetId, "Ch鷆 m譶g ng呓i 疸 h鱟 疬㧟 "..x002075_g_Ability["nam"]..", h銀 ch� t誳 th nhi玼 瓞 th錸g c k� n錸g!" )

	--Th錸g c k� n錸g
	elseif key == x002075_g_Key["lup"] then
		if GetLevel( sceneId, selfId ) < 30 then--非法情况走到这里，也不需要提示了
			return 0
		end
		
		if lev >= x002075_g_LevMax then
			x002075_MsgBox( sceneId, selfId, targetId, "秀 瘘 c 鸬, kh鬾g c th錸g c." )
			return 0
		end
		x002075_OnAsk( sceneId, selfId, targetId, x002075_g_Key["lup"], "Th錸g c k� n錸g c #{_EXCHG" .. demandMoney .. "}, ti猵 t鴆?" )

	--确定升级
	elseif key == x002075_g_Key["upy"] then
		if ret ~= 1 then
			return 0
		end
		
		if GetLevel( sceneId, selfId ) < 30 then--非法情况走到这里，也不需要提示了
			return 0
		end

		if lev < 1 then
			x002075_MsgBox( sceneId, selfId, targetId, "Ng呓i c騨 ch遖 h鱟 "..x002075_g_Ability["nam"]..", tr呔c ti阯 h銀 h鱟 k� n錸g n鄖 r癷 m緄 皙n t靘 ta th錸g c." )
			return 0
		end

		if lev >= x002075_g_LevMax then
			x002075_MsgBox( sceneId, selfId, targetId, "秀 瘘 c 鸬, kh鬾g c th錸g c." )
			return 0
		end

		if exp < limitAbilityExp then
			x002075_MsgBox( sceneId, selfId, targetId, "C" .. limitAbilityExpShow .. " 餴琺 thu th鴆 瓞 ti猲 h鄋h th錸g c." )
			return 0
		end

		if LuaFnGetMoney( sceneId, selfId )+GetMoneyJZ( sceneId, selfId ) < demandMoney then
			x002075_MsgBox( sceneId, selfId, targetId, "C#{_EXCHG" .. demandMoney .. "} 瓞 th錸g c." )
			return 0
		end

		--升级此技能
		LuaFnCostMoneyWithPriority( sceneId, selfId, demandMoney )
		SetHumanAbilityLevel( sceneId, selfId, x002075_g_Ability["aid"], lev+1 )
		x002075_SetMyPrescription( sceneId, selfId, lev+1 )
		x002075_MsgBox( sceneId, selfId, targetId, "Th錸g c th鄋h c鬾g, ng呓i c� th� ch� t誳 ph� ch� cao c r癷!" )

	else
		
		--关闭界面		
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )

	end

	return 1
end

--**********************************
--设置相应等级的配方
--**********************************
function x002075_SetMyPrescription( sceneId, selfId, lev )
	--每个等级对应6种配方：红色、蓝色、白色、绿色、黄色、紫色
	for i=0, 5 do
		SetPrescription( sceneId, selfId, 510+(lev-1)*6+i, 1 )
	end
end

--**********************************
--询问是否这样做
--**********************************
function x002075_OnAsk( sceneId, selfId, targetId, key, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
		AddNumText( sceneId, x002075_g_ScriptId, "Th�", -1, key*100+1 )
		AddNumText( sceneId, x002075_g_ScriptId, "Ph�", -1, key*100 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--事件列表选中一项
--**********************************
function x002075_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
