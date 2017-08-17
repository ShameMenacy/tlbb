--����NPC
--�ܲ�
--��ͨ

x002091_g_ScriptId	= 2091

--������
x002091_g_Key				=
{
		["do"]					= 100,	--ȷ��
		["undo"]				= 101,	--ȡ��
		["del"]					= 103,	--�Ҿ����˳�����
}

--**********************************
--�¼��������
--**********************************
function x002091_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "Ta chuy�n ch� tr� kim b�n nghi th�c. N�u ng߽i mu�n r�a tay g�c ki�m, h�y �n t�m ta." )
		AddNumText( sceneId, x002091_g_ScriptId, "X�c nh�n", -1, x002091_g_Key["do"] )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

function x002091_OnEventRequest( sceneId, selfId, targetId, eventId )
	local	key	= GetNumText()

	if key == x002091_g_Key["do"] then
		--1,		//����ɹ�������ɾ��
		--2,		//�ڰ����в�������ɱ
		--3,		//���״̬
		--4,		//��Ʒ��������ɾ��
		--5,		//ӵ������̵�
		--6,		//ӵ�н���ֵ�
		--7,		//ӵ��ʦͽ��ϵ
		BeginEvent(sceneId)
			local result = QueryDeleteCharState(sceneId,selfId)
			if result == 1 then
				AddText(sceneId,"Th�nh c�u th�nh c�ng, c� th� x�a b� nh�n v�t.")
				AddNumText(sceneId,x002091_g_ScriptId,"X�c nh�n x�a b� nh�n v�t",6,x002091_g_Key["del"])
			end
			if result == 2 then
				AddText(sceneId,"H�y r�i kh�i bang ph�i sau �� m�i ti�n h�nh thao t�c n�y.")
			end
			if result == 3 then
				AddText(sceneId,"Ng߽i �ang c� quan h� phu th�, kh�ng th� x�a b� nh�n v�t.")
			end
			if result == 4 then
				AddText(sceneId,"Tr�n ng߶i ng߽i c� v�t ph�m kh�a, kh�ng th� x�a b� nh�n v�t.")
			end
			if result == 5 then
				AddText(sceneId,"Ng߽i c�n c� c�a h�ng � C�u Ch�u Th߽ng H�i, kh�ng th� x�a b� nh�n v�t.")
			end
			if result == 6 then
				AddText(sceneId,"Ng߽i v�n c�n h�o h�u kim lan, kh�ng th� x�a b� nh�n v�t.")
			end
			if result == 7 then
				AddText(sceneId,"Ng߽i c�n c� quan h� s� �, kh�ng th� x�a b� nh�n v�t.")
			end
			if result == 8 then
					local lefttime = GetLeftDeleteTime(sceneId,selfId)-7
					if lefttime > 0 then
						AddText(sceneId,"Nh�n v�t n�y c� th� x�a.")
					else
						AddText(sceneId,"X�a b� nh�n v�t!");
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
		local str = format("Th�t s� mu�n x�a b� nh�n v�t?")
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
