-- �콱NPC

x000044_g_scriptId = 000044
x000044_g_MaxBagSize	= 60
x000044_g_shoptableindex=235
--�������
x000044_g_flag = {

    [80]	= MF_LINGQUYUANBAO80,
    [90]	= MF_LINGQUYUANBAO90,
    [100]	= MF_LINGQUYUANBAO100,
    [110]	= MF_LINGQUYUANBAO110,
    [120]	= MF_LINGQUYUANBAO120,
    
}
x000044_g_Title		={}
x000044_g_Title[1] = "S� Ph� S� C�p"

--**********************************
--�¼��������
--**********************************
function x000044_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		strText = "Gi�i thi�u:#r#W ngo�n gia r�a s�ch t�i  th�i �i�m th�nh tr߾c �em #G Bao B�y Lan #W c�ng #G T�i Li�u Lan #W c�ng nh�ng  tr�ng y�u v�t ph�m � v�o b�n c�nh  kho h�ng qu�n l� vi�n, t�i �i�m ��nh r�a s�ch n�u kh�ng v�t ph�m b� r�a s�ch t� h�nh ph� tr�ch.#r#G � c�:#W b�n ph�c s�ng t�o �c ��o c� t�nh danh hi�u ngo�n gia mi�n ph� l�nh, cho ng߽i c�ng c� c� t�nh."		
		AddText( sceneId, strText )
             AddNumText( sceneId, x000044_g_scriptId, "#GTr� li�u", 5, 860 )
             AddNumText( sceneId, x000044_g_scriptId, "#GBao V�y Ph� Ph�m #W thanh l�", 5, 301 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x000044_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 301 then

		BeginEvent( sceneId )
			AddText( sceneId, "#YHoan ngh�nh s� d�ng [B�i Bao Thanh L�],#cFF0000S� d�ng n�n c�ng n�ng sau, v�t ph�m bao v�y c�ng t�i li�u bao v�y trung s� h�u v�t ph�m �em b� to�n b� r� r�ng!#Y th�nh x�c nh�n tr�n ng߶i tr�ng y�u v�t ph�m hay kh�ng �� t�n kho h�ng." )
			AddNumText( sceneId, x000044_g_ScriptId, "#GX�c nh�n thanh l�", 5, 302 )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 302 then
		local ClearCount = 0
		for i = 0, x000044_g_MaxBagSize - 1 do
			if LuaFnEraseItem(sceneId, selfId, i) > 0 then
				ClearCount = ClearCount + 1
			end
		end
		x000044_NotifyFailTips(sceneId, selfId, "#YT�ng c�ng c� #effc9d8#cf30768"..ClearCount.."#Y c�i trang b� thanh l�.")

      elseif GetNumText() == 450 then

			DispatchShopItem( sceneId, selfId,targetId, x000044_g_shoptableindex )
	elseif GetNumText() == 800 then
             LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 14017, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		BeginEvent(sceneId)
		AddText(sceneId,"Thanh l� th�nh c�ng...")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText() == 810 then
             LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 14018, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		BeginEvent(sceneId)
		AddText(sceneId,"Thanh l� th�nh c�ng...")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif GetNumText() == 820 then
             LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 14019, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		BeginEvent(sceneId)
		AddText(sceneId,"Thanh l� th�nh c�ng...")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif GetNumText() == 830 then
             LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 14020, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		BeginEvent(sceneId)
		AddText(sceneId,"Thanh l� th�nh c�ng...")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

       elseif GetNumText() == 850 then
             	BeginEvent( sceneId )
		AddText( sceneId, "#cFF0000H�y l�a ch�n lo�i h�nh bi�n th�n sao cho ph� h�p v�i c�c h� nh�t." )
		AddNumText( sceneId, x000044_g_ScriptId, "#GSi�u c�p bi�n th�n #W--#Y Th� Gia",7,8501 )
		AddNumText( sceneId, x000044_g_ScriptId, "#GSi�u c�p bi�n th�n #W--#Y Ng�c Th�",7,8502 )
		AddNumText( sceneId, x000044_g_ScriptId, "#GSi�u c�p bi�n th�n #W--#Y H�c H�ng",7,8503 )
		AddNumText( sceneId, x000044_g_ScriptId, "#GSi�u c�p bi�n th�n #W--#Y ��ng M�",7,8504 )
		AddNumText( sceneId, x000044_g_ScriptId, "#GSi�u c�p bi�n th�n #W--#Y C�y th�ng Noel",7,8505 )
		AddNumText( sceneId, x000044_g_ScriptId, "#GSi�u c�p bi�n th�n #W--#Y Chu�ng l�n",7,8506 )
		AddNumText( sceneId, x000044_g_ScriptId, "#GSi�u c�p bi�n th�n #W--#Y �߶ng Qu� H�p",7,8507 )
		AddNumText( sceneId, x000044_g_ScriptId, "#GSi�u c�p bi�n th�n #W--#Y Ph�n H�ng H�ng",7,8508 )
		--AddNumText( sceneId, x000044_g_ScriptId, "#GSi�u c�p bi�n th�n #W--#YС����",7,8509 )
		--AddNumText( sceneId, x000044_g_ScriptId, "#GSi�u c�p bi�n th�n #W--#Y����",7,8510 )
		--AddNumText( sceneId, x000044_g_ScriptId, "#GSi�u c�p bi�n th�n #W--#Y������è",7,8511 )
		--AddNumText( sceneId, x000044_g_ScriptId, "#GSi�u c�p bi�n th�n #W--#Y������è",7,8512 )
    	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 8501 then
             LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 4878, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		BeginEvent(sceneId)
		AddText(sceneId,"Bi�n th�n th�nh c�ng...")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText() == 8502 then
             LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 4867, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		BeginEvent(sceneId)
		AddText(sceneId,"Bi�n th�n th�nh c�ng...")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText() == 8503 then
             LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 4828, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		BeginEvent(sceneId)
		AddText(sceneId,"Bi�n th�n th�nh c�ng...")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText() == 8504 then
             LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 5723, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		BeginEvent(sceneId)
		AddText(sceneId,"Bi�n th�n th�nh c�ng...")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText() == 8505 then
             LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 4863, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		BeginEvent(sceneId)
		AddText(sceneId,"Bi�n th�n th�nh c�ng...")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText() == 8506 then
             LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 4864, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		BeginEvent(sceneId)
		AddText(sceneId,"Bi�n th�n th�nh c�ng...")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText() == 8507 then
             LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 4865, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		BeginEvent(sceneId)
		AddText(sceneId,"Bi�n th�n th�nh c�ng...")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText() == 8508 then
             LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 4866, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		BeginEvent(sceneId)
		AddText(sceneId,"Bi�n th�n th�nh c�ng...")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText() == 8509 then
             LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 5710, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		BeginEvent(sceneId)
		AddText(sceneId,"Bi�n th�n th�nh c�ng...")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText() == 8510 then
             LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 5006, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		BeginEvent(sceneId)
		AddText(sceneId,"Bi�n th�n th�nh c�ng...")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText() == 8511 then
             LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 5708, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		BeginEvent(sceneId)
		AddText(sceneId,"Bi�n th�n th�nh c�ng...")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText() == 8512 then
              LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 5709, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		BeginEvent(sceneId)
		AddText(sceneId,"Bi�n th�n th�nh c�ng...")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

      elseif GetNumText() == 860 then
              x000044_Restore_hpmp( sceneId, selfId, targetId )
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		BeginEvent(sceneId)
		AddText(sceneId,"Tr� li�u th�nh c�ng.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

      elseif GetNumText() == 870 then
	       if GetItemCount(sceneId, selfId, 39910008) < 10 then
                 TryRecieveItem( sceneId, selfId, 10305007, 10)

		   LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		   BeginEvent(sceneId)
		   AddText(sceneId,"L�nh nh�n th�nh c�ng.")
		   EndEvent(sceneId)
		   DispatchEventList(sceneId,selfId,targetId)
              else
               	BeginEvent( sceneId ) 
					strText = "C�n g� �� c� Giang H� Ch� Nam, kh�ng c�n �n ta..."
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
	        end

      elseif GetNumText() == 104 then

             LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 30150, 0)
		BeginEvent(sceneId)
		AddText(sceneId,"L�nh quang ho�n th�nh c�ng, thu�c t�nh t�ng m�nh.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
       elseif GetNumText() == 501 then
             	BeginEvent( sceneId )
		AddText( sceneId, "#cFF0000H�y l�a ch�n danh hi�u c� t�nh cho ri�ng m�nh." )
		AddNumText( sceneId, x000044_g_ScriptId, "#G�ƺ�-#cFF0000Kh�ng Ngoan ��ng Kh�ng V�ng",7,1500 )
		AddNumText( sceneId, x000044_g_ScriptId, "#G�ƺ�-#cFF0000Th�n M� �� Ph� V�n",7,1501 )
		AddNumText( sceneId, x000044_g_ScriptId, "#G�ƺ�-#cFF0000�i�n N�ng",7,1502 )
		AddNumText( sceneId, x000044_g_ScriptId, "#G�ƺ�-#cFF0000Khu V�c C�m",7,1503 )
		AddNumText( sceneId, x000044_g_ScriptId, "#G�ƺ�-#cFF0000Ki�u C�ng",7,1504 )
		AddNumText( sceneId, x000044_g_ScriptId, "#G�ƺ�-#cFF0000Kh� Ph�ch",7,1505 )
		AddNumText( sceneId, x000044_g_ScriptId, "#G�ƺ�-#cFF0000Ti�u T�nh Th�",7,1506 )
		AddNumText( sceneId, x000044_g_ScriptId, "#G�ƺ�-#cFF0000Si T�m V�ng T߷ng",7,1507 )
		AddNumText( sceneId, x000044_g_ScriptId, "#G�ƺ�-#cFF0000Kh�ng D�y N�i",7,1508 )
		AddNumText( sceneId, x000044_g_ScriptId, "#G�ƺ�-#cFF0000Th�y Tinh",7,1509 )
		AddNumText( sceneId, x000044_g_ScriptId, "#G�ƺ�-#cFF0000Bu�n L�u",7,1510 )
		AddNumText( sceneId, x000044_g_ScriptId, "#G�ƺ�-#cFF0000Tr�m G�",7,1511 )
		AddNumText( sceneId, x000044_g_ScriptId, "#G�ƺ�-#cFF0000Forever Alone",7,1512 )
		AddNumText( sceneId, x000044_g_ScriptId, "#G�ƺ�-#cFF0000C�c Ph�m",7,1513 )
		AddNumText( sceneId, x000044_g_ScriptId, "#G�ƺ�-#cFF0000T�m C�u Ph�n Mu�i",7,1514 )
    	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 1500 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#cFF0000Kh�ng Ngoan ��ng Kh�ng V�ng" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#GNh�n th�nh c�ng danh hi�u #cFF0000Kh�ng Ngoan ��ng Kh�ng V�ng" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	
	elseif GetNumText() == 1501 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#cFF0000Th�n M� �� Ph� V�n" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#GNh�n th�nh c�ng danh hi�u #cFF0000Th�n M� �� Ph� V�n" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		
	elseif GetNumText() == 1502 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#cFF0000�i�n N�ng" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#GNh�n th�nh c�ng danh hi�u #cFF0000�i�n N�ng" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		
	elseif GetNumText() == 1503 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#cFF0000Khu V�c C�m" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#GNh�n th�nh c�ng danh hi�u #cFF0000Khu V�c C�m" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		
	elseif GetNumText() == 1504 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#cFF0000Ki�u C�ng" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#GNh�n th�nh c�ng danh hi�u #cFF0000Ki�u C�ng" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		
	elseif GetNumText() == 1505 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#cFF0000Kh� Ph�ch" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#GNh�n th�nh c�ng danh hi�u #cFF0000Kh� Ph�ch" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
			
	elseif GetNumText() == 1506 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#cFF0000Ti�u T�nh Th�" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#GNh�n th�nh c�ng danh hi�u #cFF0000Ti�u T�nh Th�" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
			
	elseif GetNumText() == 1507 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#cFF0000Si T�m V�ng T߷ng" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#GNh�n th�nh c�ng danh hi�u #cFF0000Si T�m V�ng T߷ng#G�ƺ�" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
			
	elseif GetNumText() == 1508 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#cFF0000Kh�ng D�y N�i" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#GNh�n th�nh c�ng danh hi�u #cFF0000Kh�ng D�y N�i" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
			
	elseif GetNumText() == 1509 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#cFF0000Th�y Tinh" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#GNh�n th�nh c�ng danh hi�u #cFF0000Th�y Tinh" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
			
	elseif GetNumText() == 1510 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#cFF0000Bu�n L�u" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#GNh�n th�nh c�ng danh hi�u #cFF0000Bu�n L�u" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
			
	elseif GetNumText() == 1511 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#cFF0000Tr�m G�" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#GNh�n th�nh c�ng danh hi�u #cFF0000Tr�m G�" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
			
	elseif GetNumText() == 1512 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#cFF0000Forever Alone" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#GNh�n th�nh c�ng danh hi�u #cFF0000Forever Alone" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
			
	elseif GetNumText() == 1513 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#cFF0000C�c Ph�m" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#GNh�n th�nh c�ng danh hi�u #cFF0000C�c Ph�m" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
			
	elseif GetNumText() == 1514 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#cFF0000T�m C�u Ph�n Mu�i" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#GNh�n th�nh c�ng danh hi�u #cFF0000T�m C�u Ph�n Mu�i" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
			
      elseif GetNumText() == 106 then
	local	lev	= GetLevel( sceneId, selfId )
	if lev < 30 then
		BeginEvent( sceneId )
		AddText( sceneId, "#b#YC�p � c�a ng߽i kh�ng �� c�p 30, sau khi ��t c�p 30 h�y quay l�i." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return -1
	end
          --local CurTime = GetHourTime()
        local CurTime = mod(GetQuarterTime(),100);
		local iTime = GetMissionData( sceneId, selfId, MF_LINGQUYUANBAOEXP1 )
		if iTime+2 >= CurTime then
			BeginEvent( sceneId )
			AddText( sceneId, "Nh�n 10000 �i�m t�ng" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			return
		else
           for i = 0,0 do
          --AddExp(sceneId,selfId,700000)
	      local result =	ZengDian(sceneId,selfId,targetId,1,10000)
	             local str = format("#Y�i�m t�ng mi�n ph� #cff99cc��#effc9d8#cf30768#b#W#{_INFOUSR%s}#cff99cct�i#GL�c D߽ng#cff99cc.#W L�nh#cFF0000 10000 �i�m t�ng#W, 1 gi� c� th� l�nh m�t l�n, ", GetName(sceneId,selfId) )
	             BroadMsgByChatPipe(sceneId, selfId, str, 4)
               end

			
			SetMissionData(sceneId, selfId, MF_LINGQUYUANBAOEXP1, CurTime)
			BeginEvent( sceneId )
				AddText( sceneId, "Nh�n th�nh c�ng 10000 �i�m t�ng, m�t gi� sau c� th� nh�n ti�p." )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		end


             elseif GetNumText() == 107 then
                
-- ǧ�����Ƶ�ID
	       local nStoneId = 30505022
            if LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId)>=5 then
                        BeginEvent( sceneId ) 
			LuaFnDelAvailableItem(sceneId,selfId,nStoneId,5)
			TryRecieveItem( sceneId, selfId, 30505156, 1 )
                        AddText( sceneId, "Nh�n th�nh c�ng, h�y �n NPC ch�c n�ng t߽ng �ng ti�n h�nh th�ng c�p." )
 
                    EndEvent( sceneId )
              DispatchEventList( sceneId, selfId, targetId )

                    else
                BeginEvent( sceneId ) 
			
	       AddText( sceneId, "H�y s�u t�p 5 c�i Thi�n Ph�t Li�n ��ng � ti�n h�nh �i, sau c�p 129 c� th� d�ng bang c�ng � �i." )
               EndEvent( sceneId )

           DispatchEventList( sceneId, selfId, targetId )
  
               end 
          elseif GetNumText() == 108 then
                
-- ǧ�����Ƶ�ID
	       local nStoneId = 30505155
            if LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId)>=6 then
                        BeginEvent( sceneId ) 
			LuaFnDelAvailableItem(sceneId,selfId,nStoneId,6)
			TryRecieveItem( sceneId, selfId, 30505156, 1 )
                       TryRecieveItem( sceneId, selfId, 30505156, 1 )
                       TryRecieveItem( sceneId, selfId, 30505156, 1 )
                        TryRecieveItem( sceneId, selfId, 30505156, 1 )
                        TryRecieveItem( sceneId, selfId, 30505156, 1 )
                        AddText( sceneId, "Nh�n th�nh c�ng, �n ch� NPC t߽ng �ng ti�n h�nh th�ng c�p." )
 
                    EndEvent( sceneId )
              DispatchEventList( sceneId, selfId, targetId )

                    else
                BeginEvent( sceneId ) 
			
	       AddText( sceneId, "H�y s�u t�p �� 6 c�i V�n Thi�n T�n Sa �i 5 c�i H�i M�ng Th�ch. Sau c�p 129 d�ng H�i M�ng Th�ch � ch� ta � th�ng c�p." )
               EndEvent( sceneId )

           DispatchEventList( sceneId, selfId, targetId )
  
               end 
elseif GetNumText() == 109 then
local cityguildid = GetCityGuildID(sceneId, selfId)
if cityguildid ~=-1 then
AddText( sceneId, "Xin l�i ng߽i ch�a gia nh�p bang ph�i, h�n n�a bang ph�i c�ng c�n ph�i c� th�nh th� m�i c� �i�m Bang C�ng." )
		return
	end
	      local    bg = CityGetAttr( sceneId, selfId, GUILD_CONTRIB_POINT )

            if bg >= 50  then
                        BeginEvent( sceneId ) 
			CityChangeAttr( sceneId, selfId, GUILD_CONTRIB_POINT, -100 )
			TryRecieveItem( sceneId, selfId, 30008019, 1 )
                   
                        AddText( sceneId, "Nh�n th�nh c�ng." )
 
                    EndEvent( sceneId )
              DispatchEventList( sceneId, selfId, targetId )

                    else
                BeginEvent( sceneId ) 
			
	       AddText( sceneId, "H�y ki�m tra �� 100 �i�m bang c�ng m�i c� th� ti�n h�nh �i" )
               EndEvent( sceneId )

           DispatchEventList( sceneId, selfId, targetId )
  
               end 

elseif GetNumText() == 110 then
    local cityguildid = GetCityGuildID(sceneId, selfId)
if cityguildid ~=-1 then
AddText( sceneId, "Xin l�i ng߽i ch�a gia nh�p bang ph�i, h�n n�a bang ph�i c�ng c�n ph�i c� th�nh th� m�i c� �i�m Bang C�ng." )
		return
	end            


	      local    bg = CityGetAttr( sceneId, selfId, GUILD_CONTRIB_POINT )

              local nStoneId = 30505156
            if LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId)>=10 then
                        BeginEvent( sceneId ) 
			CityChangeAttr( sceneId, selfId, GUILD_CONTRIB_POINT, 10 )
			LuaFnDelAvailableItem(sceneId,selfId,nStoneId,10)
                   
                        AddText( sceneId, "бi 10 �i�m Bang C�ng th�nh c�ng." )
 
                    EndEvent( sceneId )
              DispatchEventList( sceneId, selfId, targetId )

                    else
                BeginEvent( sceneId ) 
			
	       AddText( sceneId, "H�y ki�m tra trong bao c� �� 10 c�i H�i M�ng Th�ch h�y �n �i "..cityguildid.."" )
               EndEvent( sceneId )

           DispatchEventList( sceneId, selfId, targetId )
  
               end 


	end	
end
--**********************************
--�Ի���ʾ
--**********************************
function x000044_TalkMsg( sceneId, selfId, targetId, str )	
	BeginEvent(sceneId)
      AddText(sceneId, str)
  EndEvent(sceneId)
  DispatchEventList(sceneId,selfId,targetId)    
end

--**********************************
-- ��Ļ�м���Ϣ��ʾ
--**********************************
function x000044_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
--�ָ�Ѫ����
--**********************************
function x000044_Restore_hpmp( sceneId, selfId, targetId )
	RestoreHp( sceneId, selfId )
	RestoreMp( sceneId, selfId )
	RestoreRage( sceneId, selfId )
end
--**********************************
--��ȡԪ��
--**********************************
function x000044_lingquyuanbao( sceneId, selfId, targetId )
  local mylevel = GetLevel( sceneId, selfId )
  if mylevel <  GetNumText() then
  local strText = format("Ng߽i c�p b�c kh�ng ��, ��t �n c�p %d h�y �n t�m ta, ", GetNumText() )
  x000044_TalkMsg( sceneId, selfId, targetId, strText )
  return
  end
  if GetNumText()==80 then
    local index =	GetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAO80 )
      if index == 1 then
        x000044_TalkMsg( sceneId, selfId, targetId, "Nh�n r�i nh�n l�m th�..." )	
        return
      end
    YuanBao(sceneId,selfId,targetId,1,50000)
    SetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAO80, 1 )
    x000044_TalkMsg( sceneId, selfId, targetId, "Nh�n th�nh c�ng 50000 Kim Nguy�n B�o." )
  elseif GetNumText()==90 then
    local index =	GetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAO90 )
      if index == 1 then
        x000044_TalkMsg( sceneId, selfId, targetId, "Nh�n r�i nh�n l�m th�..." )	
        return
      end
    YuanBao(sceneId,selfId,targetId,1,100000)
    SetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAO90, 1 )
    x000044_TalkMsg( sceneId, selfId, targetId, "Nh�n th�nh c�ng 100000 Kim Nguy�n B�o." )
    elseif GetNumText()==100 then
    local index =	GetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAO100 )
      if index == 1 then
        x000044_TalkMsg( sceneId, selfId, targetId, "Nh�n r�i nh�n l�m th�..." )	
        return
      end
    YuanBao(sceneId,selfId,targetId,1,150000)
    SetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAO100, 1 )
    x000044_TalkMsg( sceneId, selfId, targetId, "Nh�n th�nh c�ng 150000 Kim Nguy�n B�o." )
    elseif GetNumText()==110 then
    local index =	GetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAO110 )
      if index == 1 then
        x000044_TalkMsg( sceneId, selfId, targetId, "Nh�n r�i nh�n l�m th�..." )	
        return
      end
    YuanBao(sceneId,selfId,targetId,1,200000)
    SetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAO110, 1 )
    x000044_TalkMsg( sceneId, selfId, targetId, "Nh�n th�nh c�ng 200000 Kim Nguy�n B�o." )
    elseif GetNumText()==120 then
    local index =	GetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAO120 )
      if index == 1 then
        x000044_TalkMsg( sceneId, selfId, targetId, "Nh�n r�i nh�n l�m th�..." )	
        return
      end
    YuanBao(sceneId,selfId,targetId,1,300000)
    SetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAO120, 1 )
    x000044_TalkMsg( sceneId, selfId, targetId, "Nh�n th�nh c�ng 300000 Kim Nguy�n B�o." )
   end
end



