-- ���ת����ű�
x000151_g_scriptId = 000151

x000151_g_zhuansheng = 1

--**********************************
--�¼��������
--**********************************
function x000151_OnDefaultEvent( sceneId, selfId, targetId )
local	nam	= LuaFnGetName( sceneId, selfId )
local   lev = GetLevel(sceneId,selfId)
BeginEvent( sceneId )
		strText = "�װ���"..nam.."��������!��̫������,��149����Ү,�ҿ��԰���ת��Ŷ��ÿת��һ�οɻ��30�����㣡�����ȡ�����Գ���100��"
		AddText( sceneId, strText )
		AddNumText( sceneId, x000151_g_scriptId, "#gff0c0c -= [�������ת��] =-", 11,1 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
--**********************************
--ת�� 
--**********************************
function x000151_zhuansheng (sceneId, selfId, targetId)
	local	nam	= LuaFnGetName( sceneId, selfId )  
       local	lev	= GetLevel( sceneId, selfId )
	if lev < 149 then
		BeginEvent( sceneId )
		AddText( sceneId, "�ȼ�����#G149#W������#G149#W�����������ҡ�" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return -1
	end

        SetLevel( sceneId, selfId, 30)


AddText(sceneId,"��ϲ���ɹ�ת����")
str = "#cffffcc��ϲ���<#c00ff00"..nam.."#cffffcc>˳��ת������һ�̫ţ���ˣ�"
                      BroadMsgByChatPipe(sceneId, selfId, str, 4)
ZengDian(sceneId,selfId,targetId,1,300000)
           
                      
			
		EndEvent( sceneId )

	DispatchEventList( sceneId, selfId, targetId )

end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x000151_OnEventRequest( sceneId, selfId, targetId, eventId )
		
	
		x000151_zhuansheng(sceneId, selfId, targetId)	
	
end

--**********************************
-- �Ի�������Ϣ��ʾ
--**********************************
function x000151_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
--**********************************
--��Ϣ��ʾ
--**********************************
function x000151_MsgBox( sceneId, selfId, str )	
	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
--�Ի���ʾ
--**********************************
function x000151_TalkMsg( sceneId, selfId, targetId, str )	
	BeginEvent(sceneId)
      AddText(sceneId, str)      
  EndEvent(sceneId)
  DispatchEventList(sceneId,selfId,targetId)    
end
