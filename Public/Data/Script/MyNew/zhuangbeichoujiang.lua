--����NPC
--�齱
--��ͨ

--**********************************
--�¼��������
--**********************************
function x892102_OnDefaultEvent( sceneId, selfId,targetId )
	local temp = random(10)
	local msgStr = format( "  ֻҪ�ڰ�ս��ͼ�ռ���20��ͭ������Ƭ���ܳ齱��,���ж���װ�����ܳ鵽Ŷ��")
	BeginEvent(sceneId)
		AddText(sceneId,msgStr)
		AddNumText( sceneId, x000160_g_ScriptId, "�ǵģ�����ô˧��ȻҪ��������", 10, 1 )
		AddNumText( sceneId, x000160_g_ScriptId, "���ˣ��ұȽϳ���ȥ�������ݺ��ٳ�", 10, 2 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x892102_OnEventRequest( sceneId, selfId, targetId, eventId)
	if GetNumText() == 1 then
		if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
			x892102_NotifyFailTips( sceneId, selfId, "��ı���������������Ҫ����1��" )
			x892102_NotifyFailBox( sceneId, selfId, targetId, "  ��ı���������������Ҫ����1��" )
			return
		end
		local number = LuaFnGetAvailableItemCount(sceneId, selfId, 40004434)
		if number<1 then
			x892102_NotifyFailBox( sceneId, selfId, targetId, "��û�С��齱ȯ�������������̳��й��򡾳齱ȯ��������" )
			return
		else
			local reply = LuaFnDelAvailableItem(sceneId,selfId,40004434,20)
			if reply > 0 then
				local temp = random(10)
			local equipID
			if temp==1 then
				equipID=50421004
			elseif temp==2 then
				equipID=50421004
			elseif temp==3 then
				equipID=50421003
			elseif temp==4 then
				equipID=50421003
			elseif temp==5 then
				equipID=50421003
			elseif temp==6 then
				equipID=50421002
			elseif temp==7 then
				equipID=50421002
			elseif temp==8 then
				equipID=50421002
			elseif temp==9 then
				equipID=50413002
			elseif temp==10 then
				equipID=50413002
			elseif temp==11 then
				equipID=50413002
			elseif temp==12 then
				equipID=50412006
			elseif temp==13 then
				equipID=50412004
			elseif temp==14 then
				equipID=50503001
			elseif temp==15 then
				equipID=50502008
			elseif temp==16 then
				equipID=50502003
			elseif temp==17 then
				equipID=50502001
			elseif temp==18 then
				equipID=50602002
			elseif temp==19 then
				equipID=50513006
			elseif temp==20 then
				equipID=50513006
			elseif temp==21 then
				equipID=50611001
			elseif temp==22 then
				equipID=50611001
			elseif temp==23 then
				equipID=30505817
			elseif temp==24 then
				equipID=30505817
			elseif temp==25 then
				equipID=30505817
			elseif temp==26 then
				equipID=30505817
			elseif temp==27 then
				equipID=30505817
			elseif temp==28 then
				equipID=30505817
			elseif temp==29 then
				equipID=30505817
			elseif temp==30 then
				equipID=30505816
			elseif temp==31 then
				equipID=30505816
			elseif temp==32 then
				equipID=30505816
			elseif temp==33 then
				equipID=30505816
			elseif temp==34 then
				equipID=30509012
			elseif temp==35 then
				equipID=30509012
			elseif temp==36 then
				equipID=30509012
			elseif temp==37 then
				equipID=30509012
			elseif temp==38 then
				equipID=30509030
			elseif temp==39 then
				equipID=30509030
			elseif temp==40 then
				equipID=30509030
			elseif temp==41 then
				equipID=30509029
			elseif temp==42 then
				equipID=30509029
			elseif temp==43 then
				equipID=30509029
			elseif temp==44 then
				equipID=30900016
			elseif temp==45 then
				equipID=30900016
			elseif temp==46 then
				equipID=30900016
			elseif temp==47 then
				equipID=39910005
			elseif temp==48 then
				equipID=39910005
			elseif temp==49 then
				equipID=39910004
			elseif temp==50 then
				equipID=39910004
			elseif temp==51 then
				equipID=50612008
			elseif temp==52 then
				equipID=50503001
			elseif temp==53 then
				equipID=50502004
			elseif temp==54 then
				equipID=50502004
			elseif temp==55 then
				equipID=50412002
			elseif temp==56 then
				equipID=50412002
			elseif temp==57 then
				equipID=50412004
			elseif temp==58 then
				equipID=50412004
			elseif temp==59 then
				equipID=50404002
			elseif temp==60 then
				equipID=50404002
			elseif temp==61 then
				equipID=39910015
			elseif temp==62 then
				equipID=39910015
			elseif temp==63 then
				equipID=39910016
			elseif temp==64 then
				equipID=39910016
			elseif temp==65 then
				equipID=39910013
			elseif temp==66 then
				equipID=39910013
			elseif temp==67 then
				equipID=39910006
			elseif temp==68 then
				equipID=39910006
			elseif temp==69 then
				equipID=30008105
			elseif temp==70 then
				equipID=30008105
			elseif temp==71 then
				equipID=50401002
			elseif temp==72 then
				equipID=50401002
			elseif temp==73 then
				equipID=50401002
			elseif temp==74 then
				equipID=50402001
			elseif temp==75 then
				equipID=50402001
			elseif temp==76 then
				equipID=50613004
			elseif temp==77 then
				equipID=50613004
			elseif temp==78 then
				equipID=50613004
			elseif temp==79 then
				equipID=50602002
			else

				equipID=0
			end
      local	nam	= LuaFnGetName( sceneId, selfId )
			BroadMsgByChatPipe( sceneId, selfId, "#B��ϲ���#Y"..nam.."#Bͨ���˳齱ϵͳ������#cFF0000"..GetItemName( sceneId, equipID ).."��", 4 )	
			if equipID~=0 then
				if TryRecieveItem( sceneId, selfId, equipID, 1 ) >= 0 then
					x892102_NotifyFailTips( sceneId, selfId, str )
					x892102_NotifyFailBox( sceneId, selfId, targetId, str )
				end
			else
				local str = "  �����Ʒ�����ޣ����ȥ�������������ɡ�"
				x892102_NotifyFailTips( sceneId, selfId, str )
				x892102_NotifyFailBox( sceneId, selfId, targetId, str )
			end
			else
				x892102_NotifyFailBox( sceneId, selfId, targetId, "��û�С��齱�����빺���������" )
			end
		end
	elseif GetNumText() == 2 then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
		return		
	end
end
--**********************************
-- �Ի�������Ϣ��ʾ
--**********************************
function x892102_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
-- ��Ļ�м���Ϣ��ʾ
--**********************************
function x892102_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
