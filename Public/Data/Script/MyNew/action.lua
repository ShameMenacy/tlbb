--V�ng quay may m�n
--Author: Kenvin S�i

--*********************--
x930038_g_scriptId = 930038
--********************--
x930038_g_Need_Item = 30504583
--********************--

--**********************************--
--*            On Update           *--
--**********************************--
function x930038_OnUpdate(sceneId,selfId,Request,Param_1,Param_2)

	--*********************--
	if Request==0 then
		x930038_ChooseGift(sceneId,selfId)
	end
	--*********************--
	if Request==1 then
		x930038_ChangeItemList(sceneId,selfId)
	end
	--*********************--
	if Request==2 then
		x930038_RecieveGift(sceneId,selfId,Param_1,Param_2)
	end
	--*********************--
	
end
--**********************************--
--*          Choose Gift           *--
--**********************************--
function x930038_ChooseGift(sceneId,selfId)

	--*********************--
	if GetMissionData(sceneId,selfId,LUCKY_GIFT)==1 then
		BeginEvent(sceneId)
			AddText(sceneId,"C�c h� c� ph�n th߷ng ch�a nh�n!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId,-1)
		return
	end
	--*********************--
	if LuaFnGetAvailableItemCount(sceneId, selfId, x930038_g_Need_Item)<1 then
		BeginEvent(sceneId)
			AddText(sceneId,"C�c h� kh�ng c� H�nh V�n Qu�!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId,-1)
		return
	end
	--*********************--
	local nRandom=random(24)
	--*********************--
	SetMissionData(sceneId,selfId,LUCKY_GIFT,1)
	--*********************--
	BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,nRandom)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId,2012816)
	--*********************--
	
end
--**********************************--
--*        Change Item List        *--
--**********************************--
function x930038_ChangeItemList(sceneId,selfId)

	--*********************--
	if GetMissionData(sceneId,selfId,LUCKY_GIFT)==1 then
		BeginEvent(sceneId)
			AddText(sceneId,"C�c h� c� ph�n th߷ng ch�a nh�n!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId,-1)
		return
	end
	--*********************--
	BeginEvent(sceneId)
		AddText(sceneId,"L�m m�i v�t ph�m th�nh c�ng!")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId,-1)
	--*********************--
	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId,20120817)
	--*********************--
	
end
--**********************************--
--*          Recieve Gift          *--
--**********************************--
function x930038_RecieveGift(sceneId,selfId,Item_ID,Item_Number)

	--*********************--
	if GetMissionData(sceneId,selfId,LUCKY_GIFT)~=1 then
		BeginEvent(sceneId)
			AddText(sceneId,"C�c h� kh�ng c� ph�n th߷ng c� th� nh�n!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId,-1)
		return
	elseif TryRecieveItem(sceneId,selfId,Item_ID,1)<=0 then
		BeginEvent(sceneId)
			AddText(sceneId,"H�y s�p x�p l�i m�t kho�ng tr�ng trong tay n�i!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId,-1)
		return
	end
	--*********************--
	for i=1,Item_Number-1 do
		TryRecieveItem(sceneId,selfId,Item_ID,1)
	end
	LuaFnDelAvailableItem(sceneId,selfId,x930038_g_Need_Item,1)
	--*********************--
	BeginEvent(sceneId)
		AddText(sceneId,"Nh�n ph�n th߷ng th�nh c�ng!")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId,-1)
	--*********************--
	SetMissionData(sceneId,selfId,LUCKY_GIFT,0)
	--*********************--
	
end