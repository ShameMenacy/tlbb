--����NPC---�w�襾��������QQ��403413393
--����ү
--��ͨ

x000032_g_scriptId 	= 181000
x000032_g_gotoact	 	= 2
x000032_g_leave			= 20

--**********************************
--�¼��������
--**********************************
function x000032_OnDefaultEvent( sceneId, selfId,targetId )
	local	nam	= LuaFnGetName( sceneId, selfId )
	if nam=="Lizst" then
			AddText(sceneId,"Hoan ngh�nh c�c h� s� d�ng ch�c n�ng GM")
      AddNumText( sceneId, x000032_g_scriptId, "Nh�n 3000 bang c�ng, 9999 th��ng h�n", 2, 10)
			AddNumText( sceneId, x000032_g_scriptId, "Ъn V�n ph�ng GM", 2, x000032_g_gotoact)
			--AddNumText( sceneId, x000032_g_scriptId, "�����͸�", 2, 0)
			AddNumText( sceneId, x000032_g_scriptId, "Bang chi�n �i�m ng�", 2, 1)
			--AddNumText( sceneId, x000032_g_scriptId, "���﹥��-����Ľ�ݸ�", 2, 3)
			--AddNumText( sceneId, x000032_g_scriptId, "���﹥��-�ػ�Ľ�ݸ�", 2, 4)
			--AddNumText( sceneId, x000032_g_scriptId, "���޴����-���޺�����", 2, 5)
			AddNumText( sceneId, x000032_g_scriptId, "Ph�c kh� c�ng c�o", 2, 6)
			--AddNumText( sceneId, x000032_g_scriptId, "ά������", 2, 7)
			--AddNumText( sceneId, x000032_g_scriptId, "boss���ʹ���", 2, 8)
			AddNumText( sceneId, x000032_g_scriptId, "Tr�ng L�u chuy�n d�ng", 2, 9)
                    AddNumText( sceneId, x000032_g_scriptId, "#GGM Quang ho�n", 2, 666)
		    EndEvent(sceneId)
		   DispatchEventList(sceneId,selfId,targetId)
	      else
		   BeginEvent(sceneId)
			AddText(sceneId,"Th�i h�u sai ch�ng t�i �n T�ng tri�u r�ng s�c thi �u t�c c�u")		
			--AddNumText( sceneId, x000032_g_scriptId, "�뿪����", -1, x000032_g_leave)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
end

--**********************************
--�¼��б�ѡ��һ��
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
		local strText = format("#cFF0000B�o s߽ng t�ng ph�c ho�t �ng: #cFF0000Th�nh L�c D߽ng tr�n kh�ng b� th�t th�i t߶ng v�n bao ph�, �t nhi�n m�y ��o s�ng m� bu�ng xu�ng th�nh L�c D߽ng, c�c v� d� nh�n, m� n� mau �i xem m�t ch�t �� x�y ra s� t�nh g�!", playername)	
		local playername = GetName(sceneId, selfId)
		local strText = format("@*;SrvMsg;SCA:#cFF0000B�o s߽ng t�ng ph�c ho�t �ng: #cFF0000Th�nh L�c D߽ng tr�n kh�ng b� th�t th�i t߶ng v�n bao ph�, �t nhi�n m�y ��o s�ng m� bu�ng xu�ng th�nh L�c D߽ng, c�c v� d� nh�n, m� n� mau �i xem m�t ch�t �� x�y ra s� t�nh g�!", playername)	
		BroadMsgByChatPipe(sceneId, selfId, strText, 4)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText() == 1 then
		BeginEvent( sceneId )
		LuaFnCreateMonster(5, 45209, 255, 45, 17, 0, 402030)
		local playername = GetName(sceneId, selfId)
		local strText = format("#cff00f0Bang h�i chi�n:#GBang chi�n �� b�t �u, Xu�t hi�n BOSS � K�nh H� [255.45], Ng߶i n�o trong bang gi�t ch�t  BOSS, l� c� th� �n ch� GM l�nh nh�n ph�n th߷ng.", playername)		
		local playername = GetName(sceneId, selfId)
		local strText = format("@*;SrvMsg;SCA:#cff00f0Bang h�i chi�n:#GBang chi�n �� b�t �u, Xu�t hi�n BOSS � K�nh H� [255.45], Ng߶i n�o trong bang gi�t ch�t  BOSS, l� c� th� �n ch� GM l�nh nh�n ph�n th߷ng.", playername)									
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
		local strText = format("#cff00f0���ǻ:#Y��˵�����˲żü�,#cff00f0��Ľ�ݸ�Ϊ�ָ����࣬ǰ������·Ӣ��,Ľ�ݸ�������<���������ſ�277,136>#Y,��Ҫ��սĽ�ݸ��������ǰ�������ſ�", playername)	
		local playername = GetName(sceneId, selfId)
		local strText = format("@*;SrvMsg;SCA:#cff00f0���ǻ:#Y��˵�����˲żü�,#cff00f0��Ľ�ݸ�Ϊ�ָ����࣬ǰ������·Ӣ��,Ľ�ݸ�������<���������ſ�277,136>#Y,��Ҫ��սĽ�ݸ��������ǰ�������ſ�", playername)										
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
		local strText = format("#cff00f0���ǻ:#Y��˵�����˲żü�,#cff00f0��Ľ�ݸ�Ϊ�ָ����࣬ǰ������·Ӣ��,Ľ�ݸ�������<�����ػ��ſ�41,133>#Y,��Ҫ��սĽ�ݸ��������ǰ���ػ��ſ�", playername)	
		local playername = GetName(sceneId, selfId)
		local strText = format("@*;SrvMsg;SCA:#cff00f0���ǻ:#Y��˵�����˲żü�,#cff00f0��Ľ�ݸ�Ϊ�ָ����࣬ǰ������·Ӣ��,Ľ�ݸ�������<�����ػ��ſ�41,133>#Y,��Ҫ��սĽ�ݸ��������ǰ���ػ��ſ�", playername)										
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
		local strText = format("#cff00f0���޴����:#Y����#cff00f0���ޡ����ꡢ���롢�������Ϲ����ޣ������<������ɽ�ſ�161,234>#Y����,���һ���ǰ��������ɽ�ſ�", playername)		
		local playername = GetName(sceneId, selfId)
		local strText = format("@*;SrvMsg;SCA:#cff00f0���޴����:#Y����#cff00f0���ޡ����ꡢ���롢�������Ϲ����ޣ������<������ɽ�ſ�161,234>#Y����,���һ���ǰ��������ɽ�ſ�", playername)									
		BroadMsgByChatPipe(sceneId, selfId, strText, 4)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText() == 6 then
		BeginEvent( sceneId )
		local playername = GetName(sceneId, selfId)
		local strText = format("#cFF0000M�i ng߶i ch� � ��ng 19:15, h� th�ng ti�n h�nh s�t nh�p. Ai c� � ��c g� trong C�u Ch�u Th߽ng H�i vui l�ng l�y h�t ra. N�u kh�ng t� l�nh h�u qu�.", playername)		
		local playername = GetName(sceneId, selfId)
		local strText = format("@*;SrvMsg;SCA:#cFF0000M�i ng߶i ch� � ��ng 19:15, h� th�ng ti�n h�nh s�t nh�p. Ai c� � ��c g� trong C�u Ch�u Th߽ng H�i vui l�ng l�y h�t ra. N�u kh�ng t� l�nh h�u qu�.", playername)									
		BroadMsgByChatPipe(sceneId, selfId, strText, 4)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
       elseif GetNumText() == 666 then
	   LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 2690, 0 )
       elseif GetNumText() == 7 then
		BeginEvent( sceneId )
		local playername = GetName(sceneId, selfId)
		local strText = format("#cff00f0[G M]:��������ά��������19:15�ֽ��к����������ٶ�ת�ƾ����̻���Ʒ��������ʧ������Ը���лл��Һ�����:)��", playername)		
		local playername = GetName(sceneId, selfId)
		local strText = format("@*;SrvMsg;SCA:#cff00f0[G M]:����19:15�ֽ��к����������ٶ�ת�ƾ����̻���Ʒ��������ʧ������Ը���лл��Һ�����:)��", playername)									
		BroadMsgByChatPipe(sceneId, selfId, strText, 4)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText() == 8 then
		BeginEvent( sceneId )
		local playername = GetName(sceneId, selfId)
		local strText = format("#cff00f0[G M]:#Y�°� ��ǿ�¹ٷ��� ���ִ�� �� �����״�ͼ���� һ�Σ�50J1000YB����.���� .����.ˮ��.�ȸ���һ������ ���������ÿ��ţ�����������K ��J  ʱ���֤һ�� #R #Y����GM��ע�� �ύBUG �x�x���  ��", playername)		
		local playername = GetName(sceneId, selfId)
		local strText = format("@*;SrvMsg;SCA:#G[G M]:#Gÿ��һ������������8����﹥�ǻ������BOSS���������ϣ����Ҳ�Ҫ����ѵõĻ��ᣡ ", playername)									
		BroadMsgByChatPipe(sceneId, selfId, strText, 4)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText() == 9 then
          for i = 0,1 do
          TryRecieveItem( sceneId, selfId, 10157013, 1 )
               end
	end

end

