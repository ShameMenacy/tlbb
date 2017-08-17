--装备强化
--脚本号
x809262_g_ScriptId = 809262

x809262_g_QianghualuId = 30900045

x809262_g_QianghualuTime = 11
gem_index = 30900045
--装备强化UI 1002

--**********************************
--列举事件
--**********************************
function x809262_OnEnumerate( sceneId, selfId, targetId )

end


--**********************************
--装备强化检查
--**********************************
function x809262_FinishEnhance( sceneId, selfId, itemidx1, itemidx2 )
	local ret = LuaFnIsItemLocked( sceneId, selfId, itemidx1 )
	
	if ret ~= 0 then
		BeginEvent(sceneId)
		AddText(sceneId,"Trang b� n鄖 kh鬾g th� c叨ng h骯");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	ret = LuaFnIsItemAvailable( sceneId, selfId, itemidx2 )
	if ret ~= 1 then
		BeginEvent(sceneId)
		--AddText(sceneId,"该强化精华不可用。");
		AddText(sceneId,"C叨ng h骯 trang b� c c� 懈a S醫 C叨ng H骯 Tinh Hoa ( trang b� d呔i c 40 ) v� Thi阯 Cang C叨ng H骯 Tinh Hoa ( trang b� tr阯 c 40 )");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	equip_level = GetBagItemLevel( sceneId, selfId, itemidx1 )
	gem_index = LuaFnGetItemTableIndexByIndex( sceneId, selfId, itemidx2 )
	if equip_level < 40 then
	
		if gem_index ~= 30900005 then
			--低级强化精华
			str	= format( "Mu痭 c叨ng h骯 trang b� c %s ", GetItemName( sceneId, 30900005 ) )
			BeginEvent(sceneId)
			AddText(sceneId,str);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		end
	else

		if gem_index ~= 30900006 and gem_index ~= x809262_g_QianghualuId then
			--高级强化精华
			str	= format( "Mu痭 c叨ng h骯 trang b� c %s或%s ", GetItemName( sceneId, 30900006 ), GetItemName( sceneId, x809262_g_QianghualuId ) )
			BeginEvent(sceneId)
			AddText(sceneId,str);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		end
	end

	--检查是否能够强化 
	ret, arg0 = LuaFnEquipEnhanceCheck( sceneId, selfId, itemidx1, itemidx2 )
	local text="C叨ng h骯 trang b� th鄋h c鬾g!"
	-- zchw
	equip_index = tonumber(LuaFnGetItemTableIndexByIndex( sceneId, selfId, itemidx1 )); 
	if (equip_index ==10423024) or (equip_index == 10422016) then --重楼玉，重楼戒
		if tonumber(gem_index) == 30900006 then --强化精华
			bindStatus = tonumber(LuaFnGetItemBindStatus(sceneId, selfId, itemidx2));
			if bindStatus == 1 then --绑定
				text = "C叨ng h骯 trang b� th鄋h c鬾g!";
				BeginEvent(sceneId);
				AddText(sceneId,text);
				EndEvent(sceneId);
				DispatchMissionTips(sceneId,selfId);
				return
			end
		end
	end
	if ret == 0 then
		--强化消耗检查成功
		x809262_DoFinishEnhance( sceneId, selfId, itemidx1*1000+itemidx2)
		return
	end
	
	if ret == -1 then
		text="Thao t醕 b� l瞚"
	end
	
	if ret == -2 then
		text="Trang b� n鄖 kh鬾g th� c叨ng h骯"
	end
	
	if ret == -3 then
		--text="强化精华不可用。"
		text="姓o c� c叨ng h骯 kh鬾g th� s� d鴑g"
	end
	
	if ret == -4 then
		text="Trang b� n鄖 疸 疬㧟 c叨ng h骯 l阯 m裞 th唼ng h課"
	end

	if ret == -5 then
		text="C叨ng h骯 trang b� c #{_EXCHG%d}, ng鈔 l唼ng tr阯 ng叨i c醕 h� kh鬾g 瘘." --zchw
		text=format( text, arg0 )
	end
	
	if ret == -7 then
		text="Trang b� n鄖 kh鬾g c叨ng h骯 疬㧟"
	end

	if ret == -6 then
		--需要确认界面
		--text="强化失败之后，强化等级将会变成"..tostring(arg0).."，是否继续强化？"
		--BeginUICommand(sceneId)
			--UICommand_AddInt(sceneId,x809262_g_ScriptId);
			--UICommand_AddInt(sceneId,targetId);
			--UICommand_AddInt(sceneId,itemidx1*1000+itemidx2);
			--UICommand_AddString(sceneId,"DoFinishEnhance");
			--UICommand_AddString(sceneId,text);
			--EndUICommand(sceneId)
		--DispatchUICommand(sceneId,selfId, 24)
		x809262_DoFinishEnhance( sceneId, selfId, itemidx1*1000+itemidx2)
		return
	end
	
	BeginEvent(sceneId)
	AddText(sceneId,text)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
end

--**********************************
--装备强化
--**********************************
function x809262_DoFinishEnhance( sceneId, selfId, index )
	local itemidx1 = floor(index / 1000)
	local itemidx2 = mod(index , 1000)
	local text="C叨ng h骯 trang b� th鄋h c鬾g!"

	--强化
	local ret,arg0 = LuaFnEquipEnhance( sceneId, selfId, itemidx1, itemidx2 )

	if ret == 0 then
		if arg0 >= 2 then
			local	szTranItm1	= GetBagItemTransfer( sceneId, selfId, itemidx1 )
			local	szTranItm2	= GetBagItemTransfer( sceneId, selfId, itemidx2 )
			local	szMsg				= format( "#W#{_INFOUSR%s}#{EQ_1}#{_INFOMSG%s}#{EQ_2}%d#{EQ_3}#{_INFOMSG%s}#{EQ_4}",
														LuaFnGetName( sceneId, selfId ), szTranItm2, arg0, szTranItm1 )
			--公告精简，小于5级的强化，不发公告
			if (arg0 >= 250) then
				AddGlobalCountNews( sceneId, szMsg )
			end
		end
		
		gem_index = LuaFnGetItemTableIndexByIndex( sceneId, selfId, itemidx2 )
		
		if x809262_g_QianghualuId == gem_index then
			local r, t = LuaFnEraseItemTimes( sceneId, selfId, itemidx2, x809262_g_QianghualuTime )
			--PrintNum(r);
			--PrintNum(t)
			
			BeginEvent(sceneId)
			--local str = "天罡强化露剩余使用次数%d"
			local	szMsg				= format( "T su % c叨ng h骯 c騨 l読 %d/%d",
														tonumber(t), tonumber(x809262_g_QianghualuTime) );
			AddText(sceneId,szMsg);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		else
			LuaFnEraseItem( sceneId, selfId, itemidx2 )
		end
		
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 49, 0);
	end

	if ret == -1 then
		text="Thao t醕 b� l瞚"
	end
	
	if ret == -2 then
		text="Trang b� n鄖 kh鬾g th� c叨ng h骯"
	end
	
	if ret == -3 then
		text="姓o c� c叨ng h骯 kh鬾g th� s� d鴑g"
	end
	
	if ret == -4 then
		text="Trang b� n鄖 疸 疬㧟 c叨ng h骯 皙n m裞 th唼ng h課"
	end

	if ret == -5 then
		text="C叨ng h骯 trang b� c #{_EXCHG%d}, ng鈔 l唼ng tr阯 ng叨i c醕 h� kh鬾g 瘘" --zchw
		text=format( text, arg0 )
	end

	if ret == -6 then
		text="C叨ng h骯 th b読!"
		
		if x809262_g_QianghualuId == gem_index then
			local r, t = LuaFnEraseItemTimes( sceneId, selfId, itemidx2, x809262_g_QianghualuTime )
			--PrintNum(r);
			--PrintNum(t)
			
			BeginEvent(sceneId)
			local	szMsg				= format( "T su % c叨ng h骯 c騨 l読 %d/%d",
														tonumber(t), tonumber(x809262_g_QianghualuTime) );
			AddText(sceneId,szMsg);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
	
		else
			LuaFnEraseItem( sceneId, selfId, itemidx2 )
		end
		--LuaFnEraseItem( sceneId, selfId, itemidx2 )
	end

	BeginEvent(sceneId)
	AddText(sceneId,text);
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
end
