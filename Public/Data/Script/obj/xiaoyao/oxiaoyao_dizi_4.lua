--��ңNPC
--��ͨ����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x014033_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ta l� � t� c�a ph�i Ti�u Dao.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
