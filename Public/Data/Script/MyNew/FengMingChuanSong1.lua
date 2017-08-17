x390004_g_ScriptId	= 390004

--**********************************
--�¼��������
--**********************************
function x390004_OnDefaultEvent( sceneId, selfId, targetId )
	if GetName( sceneId, targetId )=="ͨ�����ع�" then
		BeginEvent(sceneId)
			AddText(sceneId, "    #Y����Ϊ�߼�������ͼ��150�����µ���ҿ�ѡ��ǰ����")
			AddNumText(sceneId, x390004_g_ScriptId,"ͨ�����ع�", 9, 4)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,-1)

	else
		BeginEvent(sceneId)
			AddText(sceneId, "    #Y����Ϊ�ռ�BOOS��ͼ���͵㣬ʵ�������ĺú����������ɡ�")
			AddNumText(sceneId, x390004_g_ScriptId,"Į����ԭ", 9, 1)
			AddNumText(sceneId, x390004_g_ScriptId,"����ϻ�", 9, 2)
			AddNumText(sceneId, x390004_g_ScriptId,"��������", 9, 3)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,-1)
	end
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x390004_OnEventRequest( sceneId, selfId, targetId, eventId )--574,����
	if GetNumText() == 1  then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 580, 30, 79 )
	elseif GetNumText() == 2  then		
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 580, 433, 141 )
	elseif GetNumText() == 3 then		
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 580, 113, 429 )
	elseif GetNumText() == 4 then		
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 581, 256.211, 378.436 )
	end
end

function x390004_LevelGoto( sceneId, selfId, needLevel,nSid,nX,nZ)
	local	lev	= GetLevel( sceneId, selfId )
	if lev>=needLevel then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, nSid, nX, nZ )
	else
		x390004_MsgBox( sceneId, selfId, targetId, "    #Y���ĵȼ������ء�" )
	end
end

function x390004_MoneyGoto( sceneId, selfId, needMoney,nSid,nX,nZ)
	local reply = CostMoney(sceneId,selfId,needMoney)
	if reply == -1 then
		x390004_MsgBox( sceneId, selfId, targetId, "    #Y���ͱ�������ˣ�Ǯ�����ء�" )
	else
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, nSid, nX, nZ )
	end
end

--**********************************
--�Ի�������Ϣ��ʾ
--**********************************
function x390004_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

function x390004_Tips( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
