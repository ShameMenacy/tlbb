-- �콱NPC

x100020_g_scriptId = 100020

--**********************************
--�¼��������
--**********************************
function x100020_OnDefaultEvent( sceneId, selfId, targetId )
		local	lev	= GetLevel( sceneId, selfId )
		if lev < 99 then
			BeginEvent(sceneId)
	   			AddText( sceneId, " ���ã����ĵ��ڲ���100����" )
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		else 
			BeginEvent(sceneId)
		   		AddText( sceneId, "    #Y�콵��������Ҫ������10�ˣ���������������ͣ�����ָ��ʱ�����������μ�!" )	
		   		AddText( sceneId, "  #Gע��#Y:#cFF0000�콵����#G����ʱ��Ϊ#cFF0000[13��00-14��00]��" )
		   		AddNumText( sceneId, x100020_g_ScriptId, "#e0ba4b6�μ�#W�콵����", 6, 30 )
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
end
--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x100020_OnEventRequest( sceneId, selfId, targetId, eventId )

	if GetNumText() == 30 then
      
       local nQuarter = mod(GetQuarterTime(),100);
             if nQuarter < 52 or nQuarter >= 56  then
            BeginEvent(sceneId)
		AddText(sceneId,"���ڲ��ǻʱ��(13:00-14:00)���޷������콵��������!" )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return 0
	end

     CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 548, 256,272,10 )--����
    end
end

--**********************************
-- �Ի�������Ϣ��ʾ
--**********************************
function x100020_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
-- ��Ļ�м���Ϣ��ʾ
--**********************************
function x100020_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
--**********************************
--��Ϣ��ʾ
--**********************************
function x100020_MsgBox( sceneId, selfId, str )	
	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
--�Ի���ʾ
--**********************************
function x100020_TalkMsg( sceneId, selfId, targetId, str )	
	BeginEvent(sceneId)
      AddText(sceneId, str)      
  EndEvent(sceneId)
  DispatchEventList(sceneId,selfId,targetId)    
end
