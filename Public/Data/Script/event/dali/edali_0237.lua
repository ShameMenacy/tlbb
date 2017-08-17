--�˽�Ŵ�������ɫ

--�ű���
x210237_g_ScriptId	= 210237

--������Ϣ(�������ƣ���ɫ���������������꣬���������ƣ���������)
x210237_g_mpInfo		= {}
x210237_g_mpInfo[0]	= { "[Thi�n Long]", "#{OBJ_dali_0045}", 288, 228, "Ph� Tham",    288, 228 }
x210237_g_mpInfo[1]	= { "[Nga My]", "#{OBJ_dali_0046}", 276, 235, "L� Tam N߽ng",  276, 235 }
x210237_g_mpInfo[2]	= { "[C�i Bang]", "#{OBJ_dali_0047}", 276, 232, "Gi�n Ninh",    276, 232 }
x210237_g_mpInfo[3]	= { "[Minh Gi�o]", "#{OBJ_dali_0048}", 288, 238, "Th�ch B�o",    288, 238 }
x210237_g_mpInfo[4]	= { "[Thi�u L�m]", "#{OBJ_dali_0049}", 276, 229, "Tu� D�ch",    276, 229 }
x210237_g_mpInfo[5]	= { "[Thi�n S�n]", "#{OBJ_dali_0050}", 288, 235, "Tr�nh Thanh S߽ng",  288, 235 }
x210237_g_mpInfo[6]	= { "[V� �ang]", "#{OBJ_dali_0051}", 276, 225, "Tr߽ng Ho�ch",    276, 225 }
x210237_g_mpInfo[7]	= { "[Ti�u Dao]", "#{OBJ_dali_0052}", 288, 225, "��m T� V�",288, 225 }
x210237_g_mpInfo[8]	= { "[Tinh T�c]", "#{OBJ_dali_0053}", 288, 232, "H�i Phong T�",  288, 232 }

--������ں���
--**********************************
function x210237_OnDefaultEvent( sceneId, selfId, targetId )
	local	key	= GetNumText()
	local	mp
	local	i		= 0
	
	--�˽�������ɫ
	if key == 100 then
		BeginEvent( sceneId )
			AddText( sceneId, "C�u ��i m�n ph�i" )
			for i, mp in x210237_g_mpInfo do
				AddNumText( sceneId, x210237_g_ScriptId, mp[1], 11, i+1 )
			end
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	--ѡ�������
	elseif key >= 1 and key <= 9 then
		mp	= x210237_g_mpInfo[key-1]
		BeginEvent( sceneId )
			AddText( sceneId, mp[2] )
			AddNumText( sceneId, x210237_g_ScriptId, "��a ta �i g�p ng߶i truy�n t�ng", 9, -1*key )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	--����ȥ��������
	elseif key >= -9 and key <= -1 then
		mp	= x210237_g_mpInfo[-1*key-1]
		CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, mp[3], mp[4], mp[5] )
		SetPos( sceneId, selfId, mp[6], mp[7] )
		
		--�رս���
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )

	--����
	else
		return
	end
end

--**********************************
--�о��¼�
--**********************************
function x210237_OnEnumerate( sceneId, selfId, targetId )
	if GetLevel( sceneId, selfId ) >= 10 and GetMenPai( sceneId, selfId ) == MP_WUMENPAI then
		AddNumText( sceneId, x210237_g_ScriptId, "T�m hi�u �c tr�ng C�u ��i m�n ph�i", 11, 100 )
	end
end

--**********************************
--����������
--**********************************
function x210237_CheckAccept( sceneId, selfId )
	--��Ҫ10�����ܽ�
	if GetLevel( sceneId, selfId ) >= 10 and GetMenPai( sceneId, selfId ) == MP_WUMENPAI then
		return 1
	else
		return 0
	end
end

--**********************************
--����
--**********************************
function x210237_OnAccept( sceneId, selfId )
end

--**********************************
--����
--**********************************
function x210237_OnAbandon( sceneId, selfId )
end

--**********************************
--����
--**********************************
function x210237_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--����Ƿ�����ύ
--**********************************
function x210237_CheckSubmit( sceneId, selfId )
	return 1
end

--**********************************
--�ύ
--**********************************
function x210237_OnSubmit( sceneId, selfId, targetId, selectRadioId )
end

--**********************************
--ɱ����������
--**********************************
function x210237_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--���������¼�
--**********************************
function x210237_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x210237_OnItemChanged( sceneId, selfId, itemdataId )
end
