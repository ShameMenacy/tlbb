x001085_g_ScriptId = 001085


--**********************************
--�¼��������
--**********************************
function x001085_OnDefaultEvent( sceneId, selfId,targetId )

	BeginEvent(sceneId)
		AddText(sceneId,"  #c00ff00��ѡ�����Լ������װ����״̬��")
		AddNumText( sceneId, x001085_g_ScriptId, "#Y��ȡ:#Yǿ������¥�䡼#W���״̬#Y��",6,1 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end


function x001085_OnEventRequest( sceneId, selfId, targetId, eventId )

if GetNumText() == 1 then
	if GetItemCount(sceneId, selfId, 10422149) < 1 then
		x001085_MsgBox( sceneId, selfId, "�Բ���������û�������ǿ������¥�䡣" )	
		return
	end


                LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 5967, 0)
		x001085_MsgBox( sceneId, selfId, "��ϲ���ɹ���ȡǿ������¥�����״̬" )
end

end

--**********************************
--��Ϣ��ʾ
--**********************************
function x001085_MsgBox( sceneId, selfId, str )	
	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end



