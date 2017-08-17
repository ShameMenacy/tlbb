--�ű���
x892005_g_scriptId = 892005

--**********************************
--�¼��������
--**********************************
function x892005_OnDefaultEvent( sceneId, selfId, targetId)
	BeginEvent(sceneId)     
		AddText(sceneId, "Long v�n c� th� h�c t�p th�m 3 thu�c t�nh m� r�ng, c� th� t�y l�i thu�c t�nh n�u kh�ng v�a �.")
		AddNumText(sceneId, x892005_g_scriptId,"H�c thu�c t�nh m� r�ng", 6, 1)
		AddNumText(sceneId, x892005_g_scriptId,"Th�ng c�p thu�c t�nh m� r�ng", 6, 2)
		AddNumText(sceneId, x892005_g_scriptId,"T�y l�i thu�c t�nh m� r�ng", 6, 3)
       		AddNumText(sceneId, x892005_g_scriptId,"Gia t�ng huy�t th��ng h�n", 6, 100)
		AddNumText(sceneId, x892005_g_scriptId,"Gia t�ng c�ng k�ch", 6, 200)
		AddNumText(sceneId, x892005_g_scriptId,"Gi�m kh�ng m�c ti�u", 6, 300)
		AddNumText(sceneId, x892005_g_scriptId,"H�p th�nh", 6, 4)							
		AddNumText(sceneId, x892005_g_scriptId,"T�y l�i thu�c t�nh", 6, 600)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x892005_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText()==1 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId,  20110728)
	elseif GetNumText()==2 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId,  20110730)
	elseif GetNumText()==3 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId,  20110727)
       elseif GetNumText() == 100 then
		BeginEvent( sceneId )
		      AddText( sceneId, "Long v�n ��ng c�p c�ng cao th� thu�c t�nh m� r�ng c�ng m�nh!" )
                    AddText( sceneId, "C�n c� #GXuy�t Long Th�ch - Nguy�n#W l�m nguy�n li�u th�ng c�p." )
		      AddText( sceneId, "H�y l�a ch�n c�p � t߽ng �ng." )
			AddNumText( sceneId, x510531_g_scriptId, "#GLong v�n +5", 10, 101)
			AddNumText( sceneId, x510531_g_scriptId, "#GLong v�n +6", 10, 102)
			AddNumText( sceneId, x510531_g_scriptId, "#GLong v�n +7", 10, 103)
			AddNumText( sceneId, x510531_g_scriptId, "#GLong v�n +8", 10, 104)
			AddNumText( sceneId, x510531_g_scriptId, "#GLong v�n +9", 10, 105)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 101 then
	       	local nStoneId0 = 10157005
                     local nStoneId1 = 20310181
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=100 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310181,100)--ɾ����Ʒ
					LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 25101, 0 )
					strText = "H�c t�p thu�c t�nh m� r�ng th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "Th� l�i, nguy�n li�u c�c h� mang theo kh�ng ��!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
       elseif GetNumText() == 102 then
	       	local nStoneId0 = 10157006
                     local nStoneId1 = 20310181
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=120 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310181,120)--ɾ����Ʒ
					LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 25102, 0 )
					strText = "H�c t�p thu�c t�nh m� r�ng th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "Th� l�i, nguy�n li�u c�c h� mang theo kh�ng ��!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
       elseif GetNumText() == 103 then
	       	local nStoneId0 = 10157007
                     local nStoneId1 = 20310181
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=150 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310181,150)--ɾ����Ʒ
					LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 25103, 0 )
					strText = "H�c t�p thu�c t�nh m� r�ng th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "Th� l�i, nguy�n li�u c�c h� mang theo kh�ng ��!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
       elseif GetNumText() == 104 then
	       	local nStoneId0 = 10157008
                     local nStoneId1 = 20310181
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=180 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310181,180)--ɾ����Ʒ
					LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 25104, 0 )
					strText = "H�c t�p thu�c t�nh m� r�ng th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "Th� l�i, nguy�n li�u c�c h� mang theo kh�ng ��!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
       elseif GetNumText() == 105 then
	       	local nStoneId0 = 10157009
                     local nStoneId1 = 20310181
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=200 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310181,200)--ɾ����Ʒ
					LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 25105, 0 )
					strText = "H�c t�p thu�c t�nh m� r�ng th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "Th� l�i, nguy�n li�u c�c h� mang theo kh�ng ��!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
       elseif GetNumText() == 200 then
		BeginEvent( sceneId )
		      AddText( sceneId, "Long v�n ��ng c�p c�ng cao th� thu�c t�nh m� r�ng c�ng m�nh!" )
                    AddText( sceneId, "C�n c� #GXuy�t Long Th�ch - Th߽ng#W l�m nguy�n li�u th�ng c�p." )
		      AddText( sceneId, "H�y l�a ch�n thu�c t�nh c�ng k�ch ph� h�p" )
			AddNumText( sceneId, x510531_g_scriptId, "B�ng c�ng", 10, 210)
			AddNumText( sceneId, x510531_g_scriptId, "H�a c�ng", 10, 220)
			AddNumText( sceneId, x510531_g_scriptId, "Huy�n c�ng", 10, 230)
			AddNumText( sceneId, x510531_g_scriptId, "еc c�ng", 10, 240)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
       elseif GetNumText() == 210 then
		BeginEvent( sceneId )
		      AddText( sceneId, "Long v�n ��ng c�p c�ng cao th� thu�c t�nh m� r�ng c�ng m�nh!" )
                    AddText( sceneId, "C�n c� #GXuy�t Long Th�ch - Th߽ng#W l�m nguy�n li�u th�ng c�p." )
		      AddText( sceneId, "H�y l�a ch�n c�p � t߽ng �ng." )
			AddNumText( sceneId, x510531_g_scriptId, "#GLong v�n +5", 10, 211)
			AddNumText( sceneId, x510531_g_scriptId, "#GLong v�n +6", 10, 212)
			AddNumText( sceneId, x510531_g_scriptId, "#GLong v�n +7", 10, 213)
			AddNumText( sceneId, x510531_g_scriptId, "#GLong v�n +8", 10, 214)
			AddNumText( sceneId, x510531_g_scriptId, "#GLong v�n +9", 10, 215)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
       elseif GetNumText() == 211 then
	       	local nStoneId0 = 10157005
                     local nStoneId1 = 20310183
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=100 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310183,100)--ɾ����Ʒ
					LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 26005, 0 )
					strText = "H�c t�p thu�c t�nh m� r�ng th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "Th� l�i, nguy�n li�u c�c h� mang theo kh�ng ��!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
        elseif GetNumText() == 212 then
	       	local nStoneId0 = 10157006
                     local nStoneId1 = 20310183
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=120 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310183,120)--ɾ����Ʒ
					LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 26006, 0 )
					strText = "H�c t�p thu�c t�nh m� r�ng th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "Th� l�i, nguy�n li�u c�c h� mang theo kh�ng ��!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
       elseif GetNumText() == 213 then
	       	local nStoneId0 = 10157007
                     local nStoneId1 = 20310183
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=150 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310183,150)--ɾ����Ʒ
					LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 26007, 0 )
					strText = "H�c t�p thu�c t�nh m� r�ng th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "Th� l�i, nguy�n li�u c�c h� mang theo kh�ng ��!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
       elseif GetNumText() == 214 then
	       	local nStoneId0 = 10157008
                     local nStoneId1 = 20310183
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=180 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310183,180)--ɾ����Ʒ
					LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 26008, 0 )
					strText = "H�c t�p thu�c t�nh m� r�ng th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "Th� l�i, nguy�n li�u c�c h� mang theo kh�ng ��!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
       elseif GetNumText() == 215 then
	       	local nStoneId0 = 10157009
                     local nStoneId1 = 20310183
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=200 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310183,200)--ɾ����Ʒ
					LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 26009, 0 )
					strText = "H�c t�p thu�c t�nh m� r�ng th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "Th� l�i, nguy�n li�u c�c h� mang theo kh�ng ��!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
        elseif GetNumText() == 220 then
		BeginEvent( sceneId )
		      AddText( sceneId, "Long v�n ��ng c�p c�ng cao th� thu�c t�nh m� r�ng c�ng m�nh!" )
                    AddText( sceneId, "C�n c� #GXuy�t Long Th�ch - Th߽ng#W l�m nguy�n li�u th�ng c�p." )
		      AddText( sceneId, "H�y l�a ch�n c�p � t߽ng �ng." )
			AddNumText( sceneId, x510531_g_scriptId, "#GLong v�n +5", 10, 221)
			AddNumText( sceneId, x510531_g_scriptId, "#GLong v�n +6", 10, 222)
			AddNumText( sceneId, x510531_g_scriptId, "#GLong v�n +7", 10, 223)
			AddNumText( sceneId, x510531_g_scriptId, "#GLong v�n +8", 10, 224)
			AddNumText( sceneId, x510531_g_scriptId, "#GLong v�n +9", 10, 225)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
       elseif GetNumText() == 221 then
	       	local nStoneId0 = 10157005
                     local nStoneId1 = 20310183
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=100 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310183,100)--ɾ����Ʒ
					LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 26015, 0 )
					strText = "H�c t�p thu�c t�nh m� r�ng th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "Th� l�i, nguy�n li�u c�c h� mang theo kh�ng ��!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
        elseif GetNumText() == 222 then
	       	local nStoneId0 = 10157006
                     local nStoneId1 = 20310183
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=120 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310183,120)--ɾ����Ʒ
					LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 26016, 0 )
					strText = "H�c t�p thu�c t�nh m� r�ng th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "Th� l�i, nguy�n li�u c�c h� mang theo kh�ng ��!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
       elseif GetNumText() == 223 then
	       	local nStoneId0 = 10157007
                     local nStoneId1 = 20310183
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=150 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310183,150)--ɾ����Ʒ
					LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 26017, 0 )
					strText = "H�c t�p thu�c t�nh m� r�ng th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "Th� l�i, nguy�n li�u c�c h� mang theo kh�ng ��!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
       elseif GetNumText() == 224 then
	       	local nStoneId0 = 10157008
                     local nStoneId1 = 20310183
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=180 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310183,180)--ɾ����Ʒ
					LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 26018, 0 )
					strText = "H�c t�p thu�c t�nh m� r�ng th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "Th� l�i, nguy�n li�u c�c h� mang theo kh�ng ��!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
       elseif GetNumText() == 225 then
	       	local nStoneId0 = 10157009
                     local nStoneId1 = 20310183
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=200 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310183,200)--ɾ����Ʒ
					LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 26019, 0 )
					strText = "H�c t�p thu�c t�nh m� r�ng th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "Th� l�i, nguy�n li�u c�c h� mang theo kh�ng ��!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
       elseif GetNumText() == 230 then
		BeginEvent( sceneId )
		      AddText( sceneId, "Long v�n ��ng c�p c�ng cao th� thu�c t�nh m� r�ng c�ng m�nh!" )
                    AddText( sceneId, "C�n c� #GXuy�t Long Th�ch - Th߽ng#W l�m nguy�n li�u th�ng c�p." )
		      AddText( sceneId, "H�y l�a ch�n c�p � t߽ng �ng." )
			AddNumText( sceneId, x510531_g_scriptId, "#GLong v�n +5", 10, 231)
			AddNumText( sceneId, x510531_g_scriptId, "#GLong v�n +6", 10, 232)
			AddNumText( sceneId, x510531_g_scriptId, "#GLong v�n +7", 10, 233)
			AddNumText( sceneId, x510531_g_scriptId, "#GLong v�n +8", 10, 234)
			AddNumText( sceneId, x510531_g_scriptId, "#GLong v�n +9", 10, 235)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
       elseif GetNumText() == 231 then
	       	local nStoneId0 = 10157005
                     local nStoneId1 = 20310183
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=100 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310183,100)--ɾ����Ʒ
					LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 26025, 0 )
					strText = "H�c t�p thu�c t�nh m� r�ng th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "Th� l�i, nguy�n li�u c�c h� mang theo kh�ng ��!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
        elseif GetNumText() == 232 then
	       	local nStoneId0 = 10157006
                     local nStoneId1 = 20310183
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=120 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310183,120)--ɾ����Ʒ
					LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 26026, 0 )
					strText = "H�c t�p thu�c t�nh m� r�ng th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "Th� l�i, nguy�n li�u c�c h� mang theo kh�ng ��!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
       elseif GetNumText() == 233 then
	       	local nStoneId0 = 10157007
                     local nStoneId1 = 20310183
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=150 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310183,150)--ɾ����Ʒ
					LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 26027, 0 )
					strText = "H�c t�p thu�c t�nh m� r�ng th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "Th� l�i, nguy�n li�u c�c h� mang theo kh�ng ��!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
       elseif GetNumText() == 234 then
	       	local nStoneId0 = 10157008
                     local nStoneId1 = 20310183
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=180 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310183,180)--ɾ����Ʒ
					LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 26028, 0 )
					strText = "H�c t�p thu�c t�nh m� r�ng th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "Th� l�i, nguy�n li�u c�c h� mang theo kh�ng ��!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
       elseif GetNumText() == 235 then
	       	local nStoneId0 = 10157009
                     local nStoneId1 = 20310183
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=200 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310183,200)--ɾ����Ʒ
					LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 26029, 0 )
					strText = "H�c t�p thu�c t�nh m� r�ng th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "Th� l�i, nguy�n li�u c�c h� mang theo kh�ng ��!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
       elseif GetNumText() == 240 then
		BeginEvent( sceneId )
		      AddText( sceneId, "Long v�n ��ng c�p c�ng cao th� thu�c t�nh m� r�ng c�ng m�nh!" )
                    AddText( sceneId, "C�n c� #GXuy�t Long Th�ch - Th߽ng#W l�m nguy�n li�u th�ng c�p." )
		      AddText( sceneId, "H�y l�a ch�n c�p � t߽ng �ng." )
			AddNumText( sceneId, x510531_g_scriptId, "#GLong v�n +5", 10, 241)
			AddNumText( sceneId, x510531_g_scriptId, "#GLong v�n +6", 10, 242)
			AddNumText( sceneId, x510531_g_scriptId, "#GLong v�n +7", 10, 243)
			AddNumText( sceneId, x510531_g_scriptId, "#GLong v�n +8", 10, 244)
			AddNumText( sceneId, x510531_g_scriptId, "#GLong v�n +9", 10, 245)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
       elseif GetNumText() == 241 then
	       	local nStoneId0 = 10157005
                     local nStoneId1 = 20310183
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=100 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310183,100)--ɾ����Ʒ
					LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 26035, 0 )
					strText = "H�c t�p thu�c t�nh m� r�ng th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "Th� l�i, nguy�n li�u c�c h� mang theo kh�ng ��!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
        elseif GetNumText() == 242 then
	       	local nStoneId0 = 10157006
                     local nStoneId1 = 20310183
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=120 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310183,120)--ɾ����Ʒ
					LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 26036, 0 )
					strText = "H�c t�p thu�c t�nh m� r�ng th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "Th� l�i, nguy�n li�u c�c h� mang theo kh�ng ��!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
       elseif GetNumText() == 243 then
	       	local nStoneId0 = 10157007
                     local nStoneId1 = 20310183
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=150 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310183,150)--ɾ����Ʒ
					LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 26037, 0 )
					strText = "H�c t�p thu�c t�nh m� r�ng th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "Th� l�i, nguy�n li�u c�c h� mang theo kh�ng ��!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
       elseif GetNumText() == 244 then
	       	local nStoneId0 = 10157008
                     local nStoneId1 = 20310183
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=180 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310183,180)--ɾ����Ʒ
					LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 26038, 0 )
					strText = "H�c t�p thu�c t�nh m� r�ng th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "Th� l�i, nguy�n li�u c�c h� mang theo kh�ng ��!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
       elseif GetNumText() == 245 then
	       	local nStoneId0 = 10157009
                     local nStoneId1 = 20310183
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=200 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310183,200)--ɾ����Ʒ
					LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 26039, 0 )
					strText = "H�c t�p thu�c t�nh m� r�ng th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "Th� l�i, nguy�n li�u c�c h� mang theo kh�ng ��!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
        elseif GetNumText() == 300 then
		BeginEvent( sceneId )
		      AddText( sceneId, "Long v�n ��ng c�p c�ng cao th� thu�c t�nh m� r�ng c�ng m�nh!" )
                    AddText( sceneId, "C�n c� #GXuy�t Long Th�ch - Th߽ng#W l�m nguy�n li�u th�ng c�p." )
		      AddText( sceneId, "H�y l�a ch�n thu�c t�nh gi�m kh�ng ph� h�p" )
			AddNumText( sceneId, x510531_g_scriptId, "Gi�m kh�ng b�ng", 10, 310)
			AddNumText( sceneId, x510531_g_scriptId, "Gi�m kh�ng h�a", 10, 320)
			AddNumText( sceneId, x510531_g_scriptId, "Gi�m kh�ng huy�n", 10, 330)
			AddNumText( sceneId, x510531_g_scriptId, "Gi�m kh�ng �c", 10, 340)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
       elseif GetNumText() == 310 then
		BeginEvent( sceneId )
		      AddText( sceneId, "Long v�n ��ng c�p c�ng cao th� thu�c t�nh m� r�ng c�ng m�nh!" )
                    AddText( sceneId, "C�n c� #GXuy�t Long Th�ch - Th߽ng#W l�m nguy�n li�u th�ng c�p." )
		      AddText( sceneId, "H�y l�a ch�n c�p � t߽ng �ng." )
			AddNumText( sceneId, x510531_g_scriptId, "#GLong v�n +5", 10, 311)
			AddNumText( sceneId, x510531_g_scriptId, "#GLong v�n +6", 10, 312)
			AddNumText( sceneId, x510531_g_scriptId, "#GLong v�n +7", 10, 313)
			AddNumText( sceneId, x510531_g_scriptId, "#GLong v�n +8", 10, 314)
			AddNumText( sceneId, x510531_g_scriptId, "#GLong v�n +9", 10, 315)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
       elseif GetNumText() == 311 then
	       	local nStoneId0 = 10157005
                     local nStoneId1 = 20310182
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=100 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310182,100)--ɾ����Ʒ
					LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 25505, 0 )
					strText = "H�c t�p thu�c t�nh m� r�ng th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "Th� l�i, nguy�n li�u c�c h� mang theo kh�ng ��!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

       elseif GetNumText() == 312 then
	       	local nStoneId0 = 10157006
                     local nStoneId1 = 20310182
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=120 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310182,120)--ɾ����Ʒ
					LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 25506, 0 )
					strText = "H�c t�p thu�c t�nh m� r�ng th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "Th� l�i, nguy�n li�u c�c h� mang theo kh�ng ��!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
       elseif GetNumText() == 313 then
	       	local nStoneId0 = 10157007
                     local nStoneId1 = 20310182
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=150 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310182,150)--ɾ����Ʒ
					LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 25507, 0 )
					strText = "H�c t�p thu�c t�nh m� r�ng th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "Th� l�i, nguy�n li�u c�c h� mang theo kh�ng ��!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
       elseif GetNumText() == 314 then
	       	local nStoneId0 = 10157008
                     local nStoneId1 = 20310182
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=180 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310182,180)--ɾ����Ʒ
					LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 25508, 0 )
					strText = "H�c t�p thu�c t�nh m� r�ng th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "Th� l�i, nguy�n li�u c�c h� mang theo kh�ng ��!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

       elseif GetNumText() == 315 then
	       	local nStoneId0 = 10157009
                     local nStoneId1 = 20310182
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=200 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310182,200)--ɾ����Ʒ
					LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 25509, 0 )
					strText = "H�c t�p thu�c t�nh m� r�ng th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "Th� l�i, nguy�n li�u c�c h� mang theo kh�ng ��!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
       elseif GetNumText() == 320 then
		BeginEvent( sceneId )
		      AddText( sceneId, "Long v�n ��ng c�p c�ng cao th� thu�c t�nh m� r�ng c�ng m�nh!" )
                    AddText( sceneId, "C�n c� #GXuy�t Long Th�ch - Th߽ng#W l�m nguy�n li�u th�ng c�p." )
		      AddText( sceneId, "H�y l�a ch�n c�p � t߽ng �ng." )
			AddNumText( sceneId, x510531_g_scriptId, "#GLong v�n +5", 10, 321)
			AddNumText( sceneId, x510531_g_scriptId, "#GLong v�n +6", 10, 322)
			AddNumText( sceneId, x510531_g_scriptId, "#GLong v�n +7", 10, 323)
			AddNumText( sceneId, x510531_g_scriptId, "#GLong v�n +8", 10, 324)
			AddNumText( sceneId, x510531_g_scriptId, "#GLong v�n +9", 10, 325)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
       elseif GetNumText() == 321 then
	       	local nStoneId0 = 10157005
                     local nStoneId1 = 20310182
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=100 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310182,100)--ɾ����Ʒ
					LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 25515, 0 )
					strText = "H�c t�p thu�c t�nh m� r�ng th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "Th� l�i, nguy�n li�u c�c h� mang theo kh�ng ��!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

       elseif GetNumText() == 322 then
	       	local nStoneId0 = 10157006
                     local nStoneId1 = 20310182
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=120 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310182,120)--ɾ����Ʒ
					LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 25516, 0 )
					strText = "H�c t�p thu�c t�nh m� r�ng th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "Th� l�i, nguy�n li�u c�c h� mang theo kh�ng ��!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
       elseif GetNumText() == 323 then
	       	local nStoneId0 = 10157007
                     local nStoneId1 = 20310182
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=150 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310182,150)--ɾ����Ʒ
					LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 25517, 0 )
					strText = "H�c t�p thu�c t�nh m� r�ng th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "Th� l�i, nguy�n li�u c�c h� mang theo kh�ng ��!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
       elseif GetNumText() == 324 then
	       	local nStoneId0 = 10157008
                     local nStoneId1 = 20310182
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=180 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310182,180)--ɾ����Ʒ
					LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 25518, 0 )
					strText = "H�c t�p thu�c t�nh m� r�ng th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "Th� l�i, nguy�n li�u c�c h� mang theo kh�ng ��!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

       elseif GetNumText() == 325 then
	       	local nStoneId0 = 10157009
                     local nStoneId1 = 20310182
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=200 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310182,200)--ɾ����Ʒ
					LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 25519, 0 )
					strText = "H�c t�p thu�c t�nh m� r�ng th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "Th� l�i, nguy�n li�u c�c h� mang theo kh�ng ��!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
       elseif GetNumText() == 330 then
		BeginEvent( sceneId )
		      AddText( sceneId, "Long v�n ��ng c�p c�ng cao th� thu�c t�nh m� r�ng c�ng m�nh!" )
                    AddText( sceneId, "C�n c� #GXuy�t Long Th�ch - Th߽ng#W l�m nguy�n li�u th�ng c�p." )
		      AddText( sceneId, "H�y l�a ch�n c�p � t߽ng �ng." )
			AddNumText( sceneId, x510531_g_scriptId, "#GLong v�n +5", 10, 331)
			AddNumText( sceneId, x510531_g_scriptId, "#GLong v�n +6", 10, 332)
			AddNumText( sceneId, x510531_g_scriptId, "#GLong v�n +7", 10, 333)
			AddNumText( sceneId, x510531_g_scriptId, "#GLong v�n +8", 10, 334)
			AddNumText( sceneId, x510531_g_scriptId, "#GLong v�n +9", 10, 335)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
       elseif GetNumText() == 331 then
	       	local nStoneId0 = 10157005
                     local nStoneId1 = 20310182
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=100 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310182,100)--ɾ����Ʒ
					LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 25525, 0 )
					strText = "H�c t�p thu�c t�nh m� r�ng th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "Th� l�i, nguy�n li�u c�c h� mang theo kh�ng ��!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

       elseif GetNumText() == 332 then
	       	local nStoneId0 = 10157006
                     local nStoneId1 = 20310182
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=120 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310182,120)--ɾ����Ʒ
					LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 25526, 0 )
					strText = "H�c t�p thu�c t�nh m� r�ng th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "Th� l�i, nguy�n li�u c�c h� mang theo kh�ng ��!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
       elseif GetNumText() == 333 then
	       	local nStoneId0 = 10157007
                     local nStoneId1 = 20310182
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=150 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310182,150)--ɾ����Ʒ
					LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 25527, 0 )
					strText = "H�c t�p thu�c t�nh m� r�ng th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "Th� l�i, nguy�n li�u c�c h� mang theo kh�ng ��!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
       elseif GetNumText() == 334 then
	       	local nStoneId0 = 10157008
                     local nStoneId1 = 20310182
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=180 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310182,180)--ɾ����Ʒ
					LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 25528, 0 )
					strText = "H�c t�p thu�c t�nh m� r�ng th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "Th� l�i, nguy�n li�u c�c h� mang theo kh�ng ��!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

       elseif GetNumText() == 335 then
	       	local nStoneId0 = 10157009
                     local nStoneId1 = 20310182
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=200 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310182,200)--ɾ����Ʒ
					LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 25529, 0 )
					strText = "H�c t�p thu�c t�nh m� r�ng th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "Th� l�i, nguy�n li�u c�c h� mang theo kh�ng ��!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

       elseif GetNumText() == 340 then
		BeginEvent( sceneId )
		      AddText( sceneId, "Long v�n ��ng c�p c�ng cao th� thu�c t�nh m� r�ng c�ng m�nh!" )
                    AddText( sceneId, "C�n c� #GXuy�t Long Th�ch - Th߽ng#W l�m nguy�n li�u th�ng c�p." )
		      AddText( sceneId, "H�y l�a ch�n c�p � t߽ng �ng." )
			AddNumText( sceneId, x510531_g_scriptId, "#GLong v�n +5", 10, 341)
			AddNumText( sceneId, x510531_g_scriptId, "#GLong v�n +6", 10, 342)
			AddNumText( sceneId, x510531_g_scriptId, "#GLong v�n +7", 10, 343)
			AddNumText( sceneId, x510531_g_scriptId, "#GLong v�n +8", 10, 344)
			AddNumText( sceneId, x510531_g_scriptId, "#GLong v�n +9", 10, 345)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
       elseif GetNumText() == 341 then
	       	local nStoneId0 = 10157005
                     local nStoneId1 = 20310182
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=100 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310182,100)--ɾ����Ʒ
					LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 25535, 0 )
					strText = "H�c t�p thu�c t�nh m� r�ng th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "Th� l�i, nguy�n li�u c�c h� mang theo kh�ng ��!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

       elseif GetNumText() == 342 then
	       	local nStoneId0 = 10157006
                     local nStoneId1 = 20310182
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=120 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310182,120)--ɾ����Ʒ
					LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 25536, 0 )
					strText = "H�c t�p thu�c t�nh m� r�ng th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "Th� l�i, nguy�n li�u c�c h� mang theo kh�ng ��!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
       elseif GetNumText() == 343 then
	       	local nStoneId0 = 10157007
                     local nStoneId1 = 20310182
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=150 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310182,150)--ɾ����Ʒ
					LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 25537, 0 )
					strText = "H�c t�p thu�c t�nh m� r�ng th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "Th� l�i, nguy�n li�u c�c h� mang theo kh�ng ��!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
       elseif GetNumText() == 344 then
	       	local nStoneId0 = 10157008
                     local nStoneId1 = 20310182
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=180 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310182,180)--ɾ����Ʒ
					LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 25538, 0 )
					strText = "H�c t�p thu�c t�nh m� r�ng th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "Th� l�i, nguy�n li�u c�c h� mang theo kh�ng ��!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

       elseif GetNumText() == 345 then
	       	local nStoneId0 = 10157009
                     local nStoneId1 = 20310182
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=200 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310182,200)--ɾ����Ʒ
					LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 25539, 0 )
					strText = "H�c t�p thu�c t�nh m� r�ng th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "Th� l�i, nguy�n li�u c�c h� mang theo kh�ng ��!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

        elseif GetNumText() == 600 then
		BeginEvent( sceneId )
                    AddText( sceneId, "M�i l�n t�y �i�m thu�c t�nh long v�n ti�u hao #G10 b�nh #Y[T�nh V�n Th�y]#W." )
		      AddText( sceneId, "Ch� �: Long v�n sau khi t�y �i�m b�o th�ch s� m�t �i, h�y th�o g� b�o th�ch tr߾c khi thao t�c." )
			AddNumText( sceneId, x510531_g_scriptId, "Long v�n +5", 10, 610)
			AddNumText( sceneId, x510531_g_scriptId, "Long v�n +6", 10, 620)
			AddNumText( sceneId, x510531_g_scriptId, "Long v�n +7", 10, 630)
			AddNumText( sceneId, x510531_g_scriptId, "Long v�n +8", 10, 640)
			AddNumText( sceneId, x510531_g_scriptId, "Long v�n +9", 10, 650)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
       elseif GetNumText() == 610 then
	       	local nStoneId0 = 10157005
                     local nStoneId1 = 20310180
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=10 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157005,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,20310180,10)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157005, 1)--������Ʒ
					strText = "T�y �i�m th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "Th� l�i, nguy�n li�u c�a c�c h� mang theo kh�ng ��!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

       elseif GetNumText() == 620 then
	       	local nStoneId0 = 10157006
                     local nStoneId1 = 20310180
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=10 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157006,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,20310180,10)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157006, 1)--������Ʒ
					strText = "T�y �i�m th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "Th� l�i, nguy�n li�u c�a c�c h� mang theo kh�ng ��!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

       elseif GetNumText() == 630 then
	       	local nStoneId0 = 10157007
                     local nStoneId1 = 20310180
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=10 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157007,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,20310180,10)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157007, 1)--������Ʒ
					strText = "T�y �i�m th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "Th� l�i, nguy�n li�u c�a c�c h� mang theo kh�ng ��!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

       elseif GetNumText() == 640 then
	       	local nStoneId0 = 10157008
                     local nStoneId1 = 20310180
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=10 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157008,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,20310180,10)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157008, 1)--������Ʒ
					strText = "T�y �i�m th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "Th� l�i, nguy�n li�u c�a c�c h� mang theo kh�ng ��!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

       elseif GetNumText() == 650 then
	       	local nStoneId0 = 10157009
                     local nStoneId1 = 20310180
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=10 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157009,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,20310180,10)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157009, 1)--������Ʒ
					strText = "T�y �i�m th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "Th� l�i, nguy�n li�u c�a c�c h� mang theo kh�ng ��!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
	end

	elseif GetNumText()==4 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId,  20110725)
	end
end

--**********************************
--��Ŀ��ʾ
--**********************************
function x892005_NotifyTip( sceneId, selfId, Msg )
	BeginEvent( sceneId )
		AddText( sceneId, Msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
