--��ңNPC
--�����ӳ�
--��ͨ

x014035_g_scriptId = 014035

--**********************************
--�¼��������
--**********************************
function x014035_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"G�n ��y trong l�c v� � ta �� t�m ���c X�o t��ng K� th� n�y, l�m theo trong s�ch, qu� nhi�n �� t�o ra Thi�n C� Kh�i L�i. T�nh n�ng c�a ch�ng phi th߶ng, d߶ng nh� c� th� suy ngh�, c� mu�n th� ki�n th�c kh�ng?")
		AddNumText(sceneId,x014035_g_scriptId,"Thi�n C� Kh�i L�i",10,0)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x014035_OnEventRequest( sceneId, selfId, targetId, eventId )
	if	GetNumText()==0	then
		if	GetLevel( sceneId, selfId)<81  then	
			BeginEvent( sceneId )
			local strText = "��Ҫ̫С���ҹ�ұ�ӳ��ļ��գ��ȼ��ﲻ��81�������ǲ��������������ܵġ�"
			AddText( sceneId, strText )
			EndEvent( sceneId )
			DispatchEventList(sceneId,selfId,targetId)
		else
			CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 144,51,129)
		end
	end
end
