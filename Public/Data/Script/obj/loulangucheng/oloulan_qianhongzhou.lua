--NPC
--
--��ͨ

--**********************************
--�¼��������
--**********************************
function x001154_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)

--**********************************
--NPC�Ի�
--**********************************
		AddText(sceneId,"  #{LLGC_20080321_14}")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
