-- �콱NPC

x100011_g_scriptId = 100011

--**********************************
--�¼��������
--**********************************
function x100011_OnDefaultEvent( sceneId, selfId, targetId )
		local	lev	= GetLevel( sceneId, selfId )
		if lev < 99 then
			BeginEvent(sceneId)
	   			AddText( sceneId, " ���ã����ĵ��ڲ���100����" )
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		else 
			BeginEvent(sceneId)
		   		--AddText( sceneId, "    #Y��������ɻ�ô������10������Ʊ.�߼���ʯ.�߼��ϳ�.õ�廨.��¥����.ʱװ������ϵȵ�!" )	
		   		AddText( sceneId, "  #Gע��#Y:#cFF0000ͨ����һ�㣺#G����ʱ��Ϊ#cFF0000[19��15]��" )
		   		AddNumText( sceneId, x100011_g_ScriptId, "#e0ba4b6����ͨ����һ��", 6, 30 )
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
end
--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x100011_OnEventRequest( sceneId, selfId, targetId, eventId )

	if GetNumText() == 30 then
      
       local nQuarter = mod(GetQuarterTime(),100);
             if nQuarter < 77 or nQuarter >= 80  then
            BeginEvent(sceneId)
		AddText(sceneId,"ͨ����һ�㿪��ʱ��Ϊ(19:15������ʱ�޷�����!" )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return 0
	end

     CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 545, 255, 380,10 )--����
    end
end

--**********************************
-- �Ի�������Ϣ��ʾ
--**********************************
function x100011_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
-- ��Ļ�м���Ϣ��ʾ
--**********************************
function x100011_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
--**********************************
--��Ϣ��ʾ
--**********************************
function x100011_MsgBox( sceneId, selfId, str )	
	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
--�Ի���ʾ
--**********************************
function x100011_TalkMsg( sceneId, selfId, targetId, str )	
	BeginEvent(sceneId)
      AddText(sceneId, str)      
  EndEvent(sceneId)
  DispatchEventList(sceneId,selfId,targetId)    
end
