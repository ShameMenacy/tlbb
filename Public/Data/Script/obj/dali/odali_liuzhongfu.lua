-- ����NPC
-- ���ٸ�

x002092_g_scriptId = 002092

--**********************************
--�¼��������
--**********************************
function x002092_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "L�u M� �n nay ph�m 52 n�m, v�n ch�a th�y c� ai x�ng ��ng l� �ch th�. M�y n�m tr߾c, ta �� b�i d߾i tay m�t v� L� S�n Ti�n Nh�n, l�c �� ta m�i bi�t thi�n ngo�i h�u thi�n, nh�n th��ng h�u nh�n..." )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
