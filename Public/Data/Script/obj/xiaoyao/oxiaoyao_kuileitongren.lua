--NPC
--����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x014011_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"B� nh�n Ti�u Dao lo�i F-17173 �ng t�c b�nh th߶ng... Tuy�t h�o... V� ��i... Ki�t xu�t... Ho�n m�...")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
