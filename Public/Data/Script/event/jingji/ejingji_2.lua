-- 125021
-- ������ �������ܣ��һ�����
x125021_g_ScriptId = 125021

--����֮ӡ		Buff6_1		30505143
--ͭ����		Girdle3_4		10421018
--������		Girdle3_3		10421019
--������		Girdle3_2		10421020
--�߱�����	Girdle3_1		10421021

x125021_g_StoneId = 30505143

x125021_g_Item_1 = 10421018
x125021_g_Item_2 = 10421019
x125021_g_Item_3 = 10421020
x125021_g_Item_4 = 10421021

x125021_g_Exp = 50000

--**********************************
--�о��¼�
--**********************************
function x125021_OnEnumerate( sceneId, selfId, targetId )	
	AddNumText( sceneId, x125021_g_ScriptId, "Minh ch� �ng y�u ��i �i minh ch� chi �n", 12, 1 )
	AddNumText( sceneId, x125021_g_ScriptId, "Minh ch� ng�n y�u ��i �i minh ch� chi �n", 12, 2 )
	AddNumText( sceneId, x125021_g_ScriptId, "Minh ch� kim y�u ��i �i minh ch� chi �n", 12, 3 )

	AddNumText( sceneId, x125021_g_ScriptId, "Th�ng c�p minh ch� �ng y�u ��i", 6, 7 )
	AddNumText( sceneId, x125021_g_ScriptId, "Th�ng c�p minh ch� ng�n y�u ��i", 6, 4 )
	AddNumText( sceneId, x125021_g_ScriptId, "Th�ng c�p minh ch� kim y�u ��i", 6, 5 )
	AddNumText( sceneId, x125021_g_ScriptId, "Th�ng c�p minh ch� th�t b�o y�u ��i", 6, 6 )
end

--**********************************
--������ں���
--**********************************
function x125021_OnDefaultEvent( sceneId, selfId, targetId )
	local Num = GetNumText()
	if Num == 1  then
    BeginEvent(sceneId)
      AddText(sceneId,"#BMinh ch� �ng y�u ��i �i minh ch� chi �n");
      AddText(sceneId,"  1 c�i minh ch� �ng y�u ��i c� th� �i 1 c�i minh ch� chi �n");
      AddNumText( sceneId, x125021_g_ScriptId, "X�c nh�n", 8, 10 )
      AddNumText( sceneId, x125021_g_ScriptId, "Hu� b�", 8, 20 )
    EndEvent(sceneId)
    DispatchEventList(sceneId,selfId,targetId)
	
	elseif Num == 2  then
    BeginEvent(sceneId)
      AddText(sceneId,"#BMinh ch� ng�n y�u ��i �i minh ch� chi �n");
      AddText(sceneId,"  1 c�i minh ch� ng�n y�u ��i c� th� �i 10 c�i minh ch� chi �n");
      AddNumText( sceneId, x125021_g_ScriptId, "X�c nh�n", 8, 11 )
      AddNumText( sceneId, x125021_g_ScriptId, "Hu� b�", 8, 20 )
    EndEvent(sceneId)
    DispatchEventList(sceneId,selfId,targetId)
		
	elseif Num == 3  then
    BeginEvent(sceneId)
      AddText(sceneId,"#BMinh ch� kim y�u ��i �i minh ch� chi �n");
      AddText(sceneId,"  1 c�i minh ch� kim y�u ��i c� th� �i 100 c�i minh ch� chi �n");
      AddNumText( sceneId, x125021_g_ScriptId, "X�c nh�n", 8, 12 )
      AddNumText( sceneId, x125021_g_ScriptId, "Hu� b�", 8, 20 )
    EndEvent(sceneId)
    DispatchEventList(sceneId,selfId,targetId)

	elseif Num == 4  then
    BeginEvent(sceneId)
      AddText(sceneId,"#BTh�ng c�p minh ch� ng�n y�u ��i");
      AddText(sceneId,"  Th�ng c�p tr� th�nh minh ch� ng�n y�u ��i c�n ti�u hao:#r#G    1 c�i minh ch� �ng y�u ��i#r    9 c�i minh ch� chi �n#r    ng߽i x�c �nh th�ng c�p kh�ng?");
      AddNumText( sceneId, x125021_g_ScriptId, "X�c nh�n", 8, 13 )
      AddNumText( sceneId, x125021_g_ScriptId, "Hu� b�", 8, 20 )
    EndEvent(sceneId)
    DispatchEventList(sceneId,selfId,targetId)

	elseif Num == 5  then
    BeginEvent(sceneId)
      AddText(sceneId,"#BTh�ng c�p minh ch� kim y�u ��i");
      AddText(sceneId,"  Th�ng c�p tr� th�nh minh ch� kim y�u ��i c�n ti�u hao:#r#G    1 c�i minh ch� ng�n y�u ��i#r    90 c�i minh ch� chi �n#r    #{_EXCHG"..tostring(500000).."}#W#r  ng߽i x�c �nh th�ng c�p kh�ng?");
      AddNumText( sceneId, x125021_g_ScriptId, "X�c nh�n", 8, 14 )
      AddNumText( sceneId, x125021_g_ScriptId, "Hu� b�", 8, 20 )
    EndEvent(sceneId)
    DispatchEventList(sceneId,selfId,targetId)

	elseif Num == 6  then
    BeginEvent(sceneId)
      AddText(sceneId,"#Th�ng c�p minh ch� th�t b�o y�u ��i");
      AddText(sceneId,"  Th�ng c�p tr� th�nh minh ch� th�t b�o y�u ��i c�n ti�u hao:#r#G    1 c�i minh ch� kim y�u ��i#r    400 c�i minh ch� chi �n#r    #{_EXCHG"..tostring(1000000).."}#W#r  ng߽i x�c �nh th�ng c�p kh�ng?");
      AddNumText( sceneId, x125021_g_ScriptId, "X�c nh�n", 8, 15 )
      AddNumText( sceneId, x125021_g_ScriptId, "Hu� b�", 8, 20 )
    EndEvent(sceneId)
    DispatchEventList(sceneId,selfId,targetId)

	elseif Num == 7  then
    BeginEvent(sceneId)
      AddText(sceneId,"#BTh�ng c�p minh ch� �ng y�u ��i");
      AddText(sceneId,"  Th�ng c�p tr� th�nh minh ch� �ng y�u ��i c�n ti�u hao:#r#G    40 c�i minh ch� �ng y�u ��i to�i phi�n#W#r  ng߽i x�c �nh th�ng c�p kh�ng?");
      AddNumText( sceneId, x125021_g_ScriptId, "X�c nh�n", 8, 16 )
      AddNumText( sceneId, x125021_g_ScriptId, "Hu� b�", 8, 20 )
    EndEvent(sceneId)
    DispatchEventList(sceneId,selfId,targetId)
	end
		
	if Num == 10  then
    x125021_ChangeItem( sceneId, selfId, 1 )
	elseif Num == 11  then
    x125021_ChangeItem( sceneId, selfId, 2 )
	elseif Num == 12  then
		x125021_ChangeItem( sceneId, selfId, 3 )
	end
	
	if Num == 13  then
		x125021_UpdateItem( sceneId, selfId, 1 )
	elseif Num == 14  then
		x125021_UpdateItem( sceneId, selfId, 2 )
	elseif Num == 15  then
		x125021_UpdateItem( sceneId, selfId, 3 )
	end	
	
	if Num == 16  then
		x125021_StoneToItem(sceneId, selfId)
	end
	
	if Num == 20  then
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)
	end

end

--**********************************
-- ��Ƭ������
--**********************************
function x125021_StoneToItem(sceneId, selfId)
	
	BeginAddItem(sceneId)
		AddItem( sceneId, x125021_g_Item_1, 1 )
	local ret = EndAddItem(sceneId,selfId)
	
	-- ������Ƭ��ID
	local nStoneId = 40004434
	if ret > 0  then
		if LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId)>=40 then
			LuaFnDelAvailableItem(sceneId,selfId,nStoneId,40)
			AddItemListToHuman(sceneId,selfId)
			x125021_DispatchTips(sceneId,selfId,1)
			-- ���һ���һ���־
			LuaFnAuditPlayerBehavior(sceneId, selfId, "To�i phi�n �i y�u ��i");
		else
			x125021_DispatchTips(sceneId,selfId,0)
		end
		
	else
		x125021_DispatchTips(sceneId,selfId,-2)
	end
	
	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 1000)
end

--**********************************
--x125021_UpdateItem
--**********************************
function x125021_UpdateItem( sceneId, selfId, nIndex )
	if nIndex == 1  then
	
		BeginAddItem(sceneId)
			AddItem( sceneId, x125021_g_Item_2, 1 )
		local ret = EndAddItem(sceneId,selfId)
		if ret > 0  then
			if LuaFnGetAvailableItemCount(sceneId,selfId,x125021_g_StoneId)>=9 and
				LuaFnGetAvailableItemCount(sceneId,selfId,x125021_g_Item_1)>=1  then
				
				LuaFnDelAvailableItem(sceneId,selfId,x125021_g_StoneId,9)
				LuaFnDelAvailableItem(sceneId,selfId,x125021_g_Item_1,1)
				
				AddItemListToHuman(sceneId,selfId)
				-- ���װ��������־
				LuaFnAuditPlayerBehavior(sceneId, selfId, "аng y�u ��i �i ng�n y�u ��i");

		    	x125021_DispatchTips(sceneId,selfId,1)
				return
			end
		end
		
	elseif nIndex == 2  then
		
		if GetMoney(sceneId, selfId) + GetMoneyJZ(sceneId, selfId) < 500000   then  
			x125021_DispatchTips(sceneId,selfId,-1)
			return
		end
	
		BeginAddItem(sceneId)
			AddItem( sceneId, x125021_g_Item_3, 1 )
		local ret = EndAddItem(sceneId,selfId)
		if ret > 0  then
			if LuaFnGetAvailableItemCount(sceneId,selfId,x125021_g_StoneId)>=90 and
				LuaFnGetAvailableItemCount(sceneId,selfId,x125021_g_Item_2)>=1  then
				
				LuaFnDelAvailableItem(sceneId,selfId,x125021_g_StoneId,90)
				LuaFnDelAvailableItem(sceneId,selfId,x125021_g_Item_2,1)
				
				-- ��G
				--CostMoney(sceneId,selfId,500000)
				LuaFnCostMoneyWithPriority( sceneId, selfId, 500000 )  
				
				AddItemListToHuman(sceneId,selfId)
				-- ���װ��������־
				LuaFnAuditPlayerBehavior(sceneId, selfId, "Ng�n y�u ��i �i kim y�u ��i");

		    	x125021_DispatchTips(sceneId,selfId,1)
				return
			end
		end
		
	elseif nIndex == 3  then
		
		if GetMoney(sceneId, selfId) + GetMoneyJZ(sceneId, selfId)< 1000000   then
			x125021_DispatchTips(sceneId,selfId,-1)
			return
		end
	
		BeginAddItem(sceneId)
			AddItem( sceneId, x125021_g_Item_4, 1 )
		local ret = EndAddItem(sceneId,selfId)
		if ret > 0  then
			if LuaFnGetAvailableItemCount(sceneId,selfId,x125021_g_StoneId)>=400 and
					LuaFnGetAvailableItemCount(sceneId,selfId,x125021_g_Item_3)>=1  then
				
				LuaFnDelAvailableItem(sceneId,selfId,x125021_g_StoneId,400)
				LuaFnDelAvailableItem(sceneId,selfId,x125021_g_Item_3,1)
				
				-- ��G
				--CostMoney(sceneId,selfId,1000000)
				LuaFnCostMoneyWithPriority( sceneId, selfId, 1000000 )  
				AddItemListToHuman(sceneId,selfId)
				
				
				-- ���װ��������־
				LuaFnAuditPlayerBehavior(sceneId, selfId, "Kim y�u ��i �i th�t b�o y�u ��i");
	    	x125021_DispatchTips(sceneId,selfId,1)
		    	
		    -- �������繫��
				local szTransferEquip = GetItemTransfer(sceneId,selfId,0)
		    
				local str = ""
				str = format("#PVu C�u Li�n h� to: Thi�n h� anh h�ng! Anh h�ng v� ��i #{_INFOUSR%s} nhi�u n�m qua t�i Phong Thi�n ��i ��m m�u chi�n �u h�ng h�i, cu�i c�ng th�ng ���c v� l�m minh ch� ch�nh th�c! #{_INFOMSG%s}!", GetName(sceneId,selfId), szTransferEquip)
				BroadMsgByChatPipe(sceneId, selfId, str, 4)
		    
				return
			end
		end
		
	end
	
  x125021_DispatchTips(sceneId,selfId,0)
  
end

--**********************************
--x125021_ChangeItem
--**********************************
function x125021_ChangeItem( sceneId, selfId, nIndex )
	if nIndex == 1  then
		BeginAddItem(sceneId)
			AddItem( sceneId, x125021_g_StoneId, 1 )
		local ret = EndAddItem(sceneId,selfId)
		if ret > 0  then
			if LuaFnDelAvailableItem(sceneId,selfId,x125021_g_Item_1,1) == 1  then
				AddItemListToHuman(sceneId,selfId)
				--��Ӷһ���־
				LuaFnAuditPlayerBehavior(sceneId, selfId, "аng y�u ��i �i 1 minh ch� �n");
			    x125021_DispatchTips(sceneId,selfId,1)
			    return
			end
		end
		
	elseif nIndex == 2  then
		BeginAddItem(sceneId)
			AddItem( sceneId, x125021_g_StoneId, 10 )
		local ret = EndAddItem(sceneId,selfId)
		if ret > 0  then
			if LuaFnDelAvailableItem(sceneId,selfId,x125021_g_Item_2,1) == 1  then
				AddItemListToHuman(sceneId,selfId)
				--��Ӷһ���־
				LuaFnAuditPlayerBehavior(sceneId, selfId, "Ng�n y�u ��i �i 10 minh ch� �n");
			    x125021_DispatchTips(sceneId,selfId,1)
			    return
			end
		end
		
	elseif nIndex == 3  then
		BeginAddItem(sceneId)
			AddItem( sceneId, x125021_g_StoneId, 100 )
		local ret = EndAddItem(sceneId,selfId)
		if ret > 0  then
			if LuaFnDelAvailableItem(sceneId,selfId,x125021_g_Item_3,1) == 1  then
				AddItemListToHuman(sceneId,selfId)
				--��Ӷһ���־
				LuaFnAuditPlayerBehavior(sceneId, selfId, "Kim y�u ��i �i 100 minh ch� �n");
			  	x125021_DispatchTips(sceneId,selfId,1)
			    return
			end
		end
		
	end
	
 	x125021_DispatchTips(sceneId,selfId,0)  
  return
  
end

function x125021_DispatchTips(sceneId,selfId,bOk)
	if bOk == 0  then
	  BeginEvent(sceneId)
	    AddText(sceneId,"Trao �i th�t b�i, ki�m tra v�t ph�m c� �� hay kh�ng.");
	  EndEvent(sceneId)
	  DispatchMissionTips(sceneId,selfId)
	elseif bOk == -1  then
	  BeginEvent(sceneId)
	    AddText(sceneId,"Kh�ng �� ng�n l��ng");    
	  EndEvent(sceneId)
	  DispatchMissionTips(sceneId,selfId)
	elseif bOk == -2  then
	  BeginEvent(sceneId)
	    AddText(sceneId,"Tay n�i c�a ng߽i kh�ng �� kh�ng gian.");
	  EndEvent(sceneId)
	  DispatchMissionTips(sceneId,selfId)
	else
	  BeginEvent(sceneId)
	    AddText(sceneId,"Trao �i th�nh c�ng");
	  EndEvent(sceneId)
	  DispatchMissionTips(sceneId,selfId)
	end
	
	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 1000)
end
