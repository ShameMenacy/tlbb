--����NPC
--ҵ��
--��ͨ

--**********************************
--�¼��������
--**********************************
function x000096_OnDefaultEvent( sceneId, selfId,targetId )
    local  PlayerName=GetName(sceneId,selfId)	
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = " C� n߽ng"
	else
		PlayerSex = " Thi�u hi�p"
	end
	
	BeginEvent(sceneId)
		AddText(sceneId,""..PlayerName..PlayerSex..", chi�n s� Nh�n M�n Quan ra sao r�i? Ta th�y r�t nhi�u d�n ch�ng t� n�n qua th�nh...")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
