--�ű���
x002196_g_scriptId = 002196
x002196_g_EquipID={}
--**********************************
--**********************************


--**********************************
--**********************************

--**********************************
--�¼��������
--**********************************
function x002196_OnDefaultEvent( sceneId, selfId, targetId)
	BeginEvent(sceneId)     
		--AddText(sceneId, "#{ZBDW_091105_1}")
		AddText(sceneId, "Thu�t �i�u v�n l� ma ph�p m� ta �� ph�i luy�n r�t gian kh� m�i th�nh th�o ���c, n� c� th� gia t�ng ��ng k� s�c m�nh c�a trang b�.")
		AddText(sceneId, "Ta s� kh�ng s� d�ng n� b�a b�i, ch� nh�ng trang b� c� ch�t s�c m�nh th� h�y mang �n ��y.")
		AddNumText(sceneId, x002196_g_scriptId,"H�p th�nh �i�u v�n", 6, 1)
		AddNumText(sceneId, x002196_g_scriptId,"T�c kh�c �i�u v�n", 6, 2)
		AddNumText(sceneId, x002196_g_scriptId,"C߶ng ho� �i�u v�n", 6, 3)
		AddNumText(sceneId, x002196_g_scriptId,"D� b� �i�u v�n", 6, 4)
		AddNumText(sceneId, x002196_g_scriptId,"V� thu�t �i�u v�n trang b�", 11, 5)
		AddNumText(sceneId, x002196_g_scriptId,"R�i �i", 8, 9999)										
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x002196_OnEventRequest( sceneId, selfId, targetId, eventId )
	local key=GetNumText()
	if key==9999 then
		x002196_CloseMe(sceneId, selfId)
	elseif key==1 then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,targetId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000156)
	elseif key==2 then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,targetId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 2000156)
	elseif key==3 then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,targetId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 3000156)
	elseif key==4 then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,targetId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 4000156)
	elseif key==5 then
		BeginEvent(sceneId)     
			AddText(sceneId, "#{ZBDW_091105_21}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
        elseif key==98 then
	         BeginAddItem(sceneId)
				--AddItem( sceneId, 30309758, 1 )
				--AddItem( sceneId, 30503148, 100 )


		EndAddItem(sceneId,selfId)
		AddItemListToHuman(sceneId,selfId)
       		BeginEvent(sceneId)
		--AddText(sceneId,"#Y��ȡ#G����ʯ#Y�ɹ���лл������ǵ�֧�֡�")
		--EndEvent(sceneId)
		--DispatchEventList(sceneId,selfId,targetId)
	end
end
--**********************************
--�Ի�������Ϣ��ʾ
--**********************************
function x002196_MsgBox( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, -1 )
end


--**********************************
--��Ŀ��ʾ
--**********************************
function x002196_NotifyTip( sceneId, selfId, Msg )
	BeginEvent( sceneId )
		AddText( sceneId, Msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
--**********************************
--�رնԻ���
--**********************************
function x002196_CloseMe(sceneId, selfId)
	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 1000)
end