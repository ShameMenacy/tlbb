-- �콱NPC

x100012_g_scriptId = 100012

--**********************************
--�¼��������
--**********************************
function x100012_OnDefaultEvent( sceneId, selfId, targetId )
		local	lev	= GetLevel( sceneId, selfId )
		if lev < 99 then
			BeginEvent(sceneId)
	   			AddText( sceneId, " ���ã����ĵ��ڲ���100����" )
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		else 
			BeginEvent(sceneId)
		   		--AddText( sceneId, "    #Y��������ɻ�ô������10������Ʊ.�߼���ʯ.�߼��ϳ�.õ�廨.��¥����.ʱװ������ϵȵ�!" )	
		   		AddText( sceneId, "  #Gע��#Y:#cFF0000ͨ�������㣺#G����ʱ��Ϊ#cFF0000[19��30]��" )
		   		AddNumText( sceneId, x100012_g_ScriptId, "#e0ba4b6����ͨ��������", 6, 30 )
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
end
--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x100012_OnEventRequest( sceneId, selfId, targetId, eventId )

	if GetNumText() == 30 then
      
       local nQuarter = mod(GetQuarterTime(),100);
             if nQuarter < 78 or nQuarter >= 80  then
            BeginEvent(sceneId)
		AddText(sceneId,"ͨ�������㿪��ʱ��Ϊ(19:30������ʱ�޷�����!" )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return 0
	end

     CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 546, 255, 367,10 )--����
    end
end

--**********************************
-- �Ի�������Ϣ��ʾ
--**********************************
function x100012_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
-- ��Ļ�м���Ϣ��ʾ
--**********************************
function x100012_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
--**********************************
--��Ϣ��ʾ
--**********************************
function x100012_MsgBox( sceneId, selfId, str )	
	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
--�Ի���ʾ
--**********************************
function x100012_TalkMsg( sceneId, selfId, targetId, str )	
	BeginEvent(sceneId)
      AddText(sceneId, str)      
  EndEvent(sceneId)
  DispatchEventList(sceneId,selfId,targetId)    
end
