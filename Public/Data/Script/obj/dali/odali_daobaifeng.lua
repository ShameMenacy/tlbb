--����NPC
--���׷�
--��ͨ

--**********************************
--�¼��������
--**********************************
function x002006_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ai? D� nhi �i l�u nh� v�y v�n ch�a tr� v�. Ta lo l�ng giang h� hi�m �c kh�ng bi�t n� c� g�p ph�i chuy�n g� kh�ng...")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end