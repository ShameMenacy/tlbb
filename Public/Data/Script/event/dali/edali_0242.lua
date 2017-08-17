--NPC Ho�t еng

x210242_g_ScriptId = 210242

x210242_g_ItemId = {30505114,30505115,30505116,30505117,30505118,30505119,30505120,}

x210242_g_PetEggId = 30505121
	
--**********************************--
--*        On Default Event        *--
--**********************************--
function x210242_OnDefaultEvent( sceneId, selfId, targetId )
	
	if GetNumText() == 1   then
		BeginEvent(sceneId)
			AddText(sceneId, "#Yбi X� Nga" );
			AddText(sceneId, "Trong c�i n�ng c�a m�a H�, c�c h� c� mu�n 1 t� gi� kh�ng ? C� mu�n 1 ly th�c u�ng l�nh kh�ng ? C� mu�n 1 t� thanh th�n s�n kho�i kh�ng?" );
			AddText(sceneId, "Ch� c�n c� �� b� 7 mi�ng m�nh v�n, l� c� th� ��t ���c r�i!" );
			AddText(sceneId, "M�t v� kh�ng bi�t t�n, �� d�ng s� m�nh v�n n�y mang �n cho th� gi�i Thi�n Long B�t B� c�ng th�m tho�i m�i, � l�m qu� t�ng, ng߶i c�n nh� ta t�ng cho nh�ng ng߶i thu th�p �� m�nh v�n th�t tinh 1 m�n qu�!" );
			AddText(sceneId, "M�t con X� Nga ��ng y�u!" );
			AddText(sceneId, "C�c h� x�c nh�n mu�n �i tr�ng X� Nga kh�ng?" );
			AddNumText(sceneId, x210242_g_ScriptId,"X�c nh�n", 8,3);
			AddNumText(sceneId, x210242_g_ScriptId,"H�y b�", 8,4);
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	if GetNumText() == 4   then
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)
		return
	end
	
	if GetNumText() == 3   then
		
		local HaveAllItem = 1
		for i, ItemId in x210242_g_ItemId  do
			if GetItemCount(sceneId, selfId, ItemId) < 1   then
				HaveAllItem = 0
			end
			if GetItemCount(sceneId, selfId, ItemId) == 1   then
				BagHavePos = 1
			end
		end
		
		if HaveAllItem == 0  then
			BeginEvent(sceneId)
				AddText(sceneId, "бi Tr�ng X� Nga c�n Kim, M�c, Th�y, H�a, Th�, Nh�t, Nguy�t 7 lo�i m�nh v�n m�i th� 1 c�i, tr�n ng߶i c�c h� kh�ng �� m�nh v�n n�n kh�ng th� ti�n h�nh �i." );
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		
		local AllItemCanDelete = 1
		for i, ItemId in x210242_g_ItemId  do
			if LuaFnGetAvailableItemCount(sceneId, selfId, ItemId) < 1   then
				AllItemCanDelete = 0
				break;
			end
		end
		
		if AllItemCanDelete == 0  then
			BeginEvent(sceneId)
				AddText(sceneId, "Kh�u tr� v�t ph�m tr�n ng߶i c�c h� th�t b�i, xin ki�m tra l�i ph�i ch�ng v�t ph�m �� b� kh�a ho�c v�t ph�m �ang trong tr�ng th�i giao d�ch." );
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
	 	BeginAddItem(sceneId)
			AddItem( sceneId, x210242_g_PetEggId, 1 )
		local ret = EndAddItem(sceneId,selfId)
		
		local delret = 1
		if ret == 1  then
			for i, ItemId in x210242_g_ItemId  do
				if LuaFnDelAvailableItem(sceneId, selfId, ItemId, 1) == 0   then
					delret = 0
					break
				end
			end
			
			if delret == 1  then
				AddItemListToHuman(sceneId,selfId)
				local transfer = GetItemTransfer(sceneId,selfId,0)
				local str = format("#P #{_INFOUSR%s} tr�i qua nh�ng n� l�c, cu�i c�ng c�ng thu ���c �� b� Kim Tinh, M�c Tinh, Th�y Tinh, H�a Tinh, Th� Tinh, M�t Tr�ng v� M�t Tr�i 7 b�y mi�ng m�nh v�n. Ь �n ��p, C�ng Th�i V�n � ��i L� �� t�ng cho 1 vi�n #{_INFOMSG%s}.",GetName(sceneId,selfId), transfer)
				BroadMsgByChatPipe(sceneId, selfId, str, 4)
				LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,18,1000)

				BeginUICommand(sceneId)
				EndUICommand(sceneId)
				DispatchUICommand(sceneId,selfId, 1000)
			end
		end
		return

	end
	
	if GetNumText() == 2   then
		BeginEvent(sceneId)
			AddText(sceneId, "#Y бi X� Nga" );
			AddText(sceneId, "#{duihuanqie_shuoming}" );
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
end
--**********************************--
--*          On Enumerate          *--
--**********************************--
function x210242_OnEnumerate( sceneId, selfId, targetId )
	
	AddNumText(sceneId, x210242_g_ScriptId,"Ta mu�n �i Tr�ng X� Nga", 6, 1);
	AddNumText(sceneId, x210242_g_ScriptId,"Li�n quan �i Tr�ng X� Nga", 0, 2);

end
--**********************************--
--*          Check Accept          *--
--**********************************--
function x210242_CheckAccept( sceneId, selfId )
end
--**********************************--
--*           On Accrpt            *--
--**********************************--
function x210242_OnAccept( sceneId, selfId, targetId )
end
--**********************************--
--*           On Abandon           *--
--**********************************--
function x210242_OnAbandon( sceneId, selfId )
end
--**********************************--
--*          Check Submit          *--
--**********************************--
function x210242_CheckSubmit( sceneId, selfId )
end

--**********************************--
--*            On Submit           *--
--**********************************--
function x210242_OnSubmit( sceneId, selfId, targetId, selectRadioId )
end
--**********************************--
--*          On Enter Zone         *--
--**********************************--
function x210242_OnEnterZone( sceneId, selfId, zoneId )
end
--**********************************--
--*          Pick Up Item          *--
--**********************************--
function x210242_PickupItem( sceneId, selfId, itemId, bagidx )

	local transfer = GetBagItemTransfer(sceneId, selfId, bagidx)
	local str = format("#P #{_INFOUSR%s} l�m ra 1 vi�n ��, sau khi mang �i r�a s�ch s�, th� m�i ph�t hi�n ra l� #{_INFOMSG%s}.",GetName(sceneId,selfId), transfer)
	BroadMsgByChatPipe(sceneId, selfId, str, 4)
	
end
--**********************************--
--*        Check Percent OK        *--
--**********************************--
function x210242_CheckPercentOK( numerator, denominator )

  local roll = random( denominator )
  if roll <= numerator then
      return 1
  end
  return 0
  
end
--**********************************--
--*        Drop Stone List         *--
--**********************************--
function x210242_DropStoneList(sceneId, LongzhuIndex) 
  
  if 1 == LongzhuIndex then
      local CheckOK = x210242_CheckPercentOK( 667, 100000 )--0.00667
      if 1 == CheckOK then
          return 30505114
      end
  end
  
  if 2 == LongzhuIndex then
      local CheckOK = x210242_CheckPercentOK( 167, 100000 )
      if 1 == CheckOK then
          return 30505115
      end
  end
  
  if 3 == LongzhuIndex then
      local CheckOK = x210242_CheckPercentOK( 67, 100000 )
      if 1 == CheckOK then
          return 30505116
      end
  end
  
  if 4 == LongzhuIndex then
      local CheckOK = x210242_CheckPercentOK( 37, 100000 )
      if 1 == CheckOK then
          return 30505117
      end
  end
  
  if 5 == LongzhuIndex then
      local CheckOK = x210242_CheckPercentOK( 23, 100000 )
      if 1 == CheckOK then
          return 30505118
      end
  end
  
  if 6 == LongzhuIndex then
      local CheckOK = x210242_CheckPercentOK( 13, 100000 )
      if 1 == CheckOK then
          return 30505119
      end
  end
  
  if 7 == LongzhuIndex then
      local CheckOK = x210242_CheckPercentOK( 7, 100000 )
      if 1 == CheckOK then
          return 30505120
      end
  end
  
  return -1
    
end
