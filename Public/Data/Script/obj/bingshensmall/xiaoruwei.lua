-- �콱NPC

x895068_g_scriptId = 895068

--**********************************
--�¼��������
--**********************************
function x895068_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"C�c ng߽i s� ph�i tr� gi� cho t�i l�i c�c ng߽i �� g�y ra...")
		AddNumText( sceneId, x895068_g_scriptId, "#c00ff00Chi�n �u", 10, 200)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x895068_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 200 then
		BeginEvent(sceneId)
			AddText(sceneId,"Huynh � �ng t�m. M�t khi ch�ng ta �� h�p s�c th� c�c ng߽i ch� c� �߶ng ch�t m� th�i!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
end
