--����NPC
--κ��
--һ��

--**********************************
--�¼��������
--**********************************
function x001035_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	  local  PlayerName=GetName(sceneId,selfId)
		local  PlayerSex=GetSex(sceneId,selfId)
		if PlayerSex == 0 then
			PlayerSex = " C� n߽ng"
		else
			PlayerSex = " Thi�u hi�p"
		end
		AddText(sceneId,"    "..PlayerName..PlayerSex..", �� t�i � Mai Hoa Trang m�i th�y ���c b�n l�nh th�t")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
