--����NPC
--����
--��ͨ

x000128_g_ScriptId	= 000128

--������Ϣ(�������ƣ�SceneID��PosX��PosY������ID)
x000128_g_mpInfo		= {}
x000128_g_mpInfo[0]	= { "Tinh T�c", 16,  96, 152, MP_XINGSU }
x000128_g_mpInfo[1]	= { "Ti�u Dao", 14,  67, 145, MP_XIAOYAO }
x000128_g_mpInfo[2]	= { "Thi�u L�m",  9,  96, 127, MP_SHAOLIN }
x000128_g_mpInfo[3]	= { "Thi�n S�n", 17,  95, 120, MP_TIANSHAN }
x000128_g_mpInfo[4]	= { "Thi�n Long", 13,  96, 120, MP_DALI }
x000128_g_mpInfo[5]	= { "Nga My", 15,  89, 139, MP_EMEI }
x000128_g_mpInfo[6]	= { "V� �ang", 12, 103, 140, MP_WUDANG }
x000128_g_mpInfo[7]	= { "Minh Gi�o", 11,  98, 167, MP_MINGJIAO }
x000128_g_mpInfo[8]	= { "C�i Bang", 10,  91, 116, MP_GAIBANG }

x000128_g_Yinpiao = 40002000 

x000128_g_Impact_NotTransportList = { 5929, 5944 } -- ��ֹ���͵�Impact
x000128_g_TalkInfo_NotTransportList = { "#{GodFire_Info_062}", "#{XSHCD_20080418_099}" } -- ��ֹ���͵�Impact��ʾ��Ϣ

--**********************************
--�¼��������
--**********************************
function x000128_OnDefaultEvent( sceneId, selfId,targetId )
	CallScriptFunction( (300053), "ChuanSong", sceneId, selfId, 400, 1 )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x000128_OnEventRequest( sceneId, selfId, targetId, eventId )
	CallScriptFunction( (300053), "ChuanSong", sceneId, selfId, GetNumText(),1)
end
--  add by zchw
function x000128_GotoShuHeGuZhen( sceneId, selfId, targetId )
	CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 420, 200, 211, 20 );
	return
end
--**********************************
--��������ID��ȡ������Ϣ
--**********************************
function x000128_GetMPInfo( mpID )
	local	mp
	local	i		= 0
	for i, mp in x000128_g_mpInfo do
		if mp[5] == mpID then
			return mp
		end
	end
	return nil
end

--**********************************
--�Ի�������Ϣ��ʾ
--**********************************
function x000128_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
