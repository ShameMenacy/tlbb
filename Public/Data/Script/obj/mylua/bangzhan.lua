-- �콱NPC

x892104_g_scriptId = 892104

--**********************************
--�¼��������
--**********************************
function x892104_OnDefaultEvent( sceneId, selfId, targetId )
		local	lev	= GetLevel( sceneId, selfId )
		if lev < 82 then
			BeginEvent(sceneId)
	   			AddText( sceneId, " ���ã����ĵ��ڲ���85����" )
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		else 
			BeginEvent(sceneId)
		   		--AddText( sceneId, "    #Y��ҫʥ�أ�רΪӢ����ƣ��˵ػ����ȫ����һ��-��ҫ֮��˭��Ӣ�ۣ�Ϊ�˰����ܶ�!" )	
		   		AddText( sceneId, "  ����ͼרΪ��ս��ƣ�����ר����ҫ֮���ػ�����BOSS����ǿ�����ĸ����������ػ��񣬻����ҫ������Ϊ��ʤ��ᣡ��#Gע��#Y:#cFF0000��ս��ͼ��#G����ʱ��Ϊ#cFF0000[19��45]��" )
		   		AddNumText( sceneId, x892104_g_ScriptId, "#e0ba4b6���Ͱ�ս��ͼ", 6, 30 )
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
end
--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x892104_OnEventRequest( sceneId, selfId, targetId, eventId )

	if GetNumText() == 30 then
      
       local nQuarter = mod(GetQuarterTime(),100);
             if nQuarter < 79 or nQuarter >= 80  then
            BeginEvent(sceneId)
		AddText(sceneId,"��ս��ͼ����ʱ��Ϊ(19:45������ʱ�޷�����!" )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return 0
	end

     CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 414, 80, 120,10 )--����
    end
end

--**********************************
-- �Ի�������Ϣ��ʾ
--**********************************
function x892104_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
-- ��Ļ�м���Ϣ��ʾ
--**********************************
function x892104_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
--**********************************
--��Ϣ��ʾ
--**********************************
function x892104_MsgBox( sceneId, selfId, str )	
	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
--�Ի���ʾ
--**********************************
function x892104_TalkMsg( sceneId, selfId, targetId, str )	
	BeginEvent(sceneId)
      AddText(sceneId, str)      
  EndEvent(sceneId)
  DispatchEventList(sceneId,selfId,targetId)    
end
