--����ָ��

--MisDescBegin
--�ű���
x210241_g_ScriptId	= 210241
--MisDescEnd

--������Ϣ���������ƣ���ɫ������NumText�����������꣬����������
x210241_g_MPInfo		=
{
	{ nam="Thi�u L�m", des="#{event_dali_mp_sl}", key=1020, x=276, z=229, npc="Tu� D�ch"			},
	{ nam="Minh Gi�o",   des="#{event_dali_mp_mj}", key=1021, x=288, z=238, npc="Th�ch B�o"			},
	{ nam="C�i Bang",   des="#{event_dali_mp_gb}", key=1022, x=276, z=232, npc="Gi�n Ninh"			},
	{ nam="V� �ang", des="#{event_dali_mp_wd}", key=1023, x=276, z=225, npc="Tr߽ng Ho�ch"		},
	{ nam="Nga My", des="#{event_dali_mp_em}", key=1024, x=276, z=235, npc="L� Tam N߽ng"		},
	{ nam="Tinh T�c", des="#{event_dali_mp_xx}", key=1025, x=288, z=232, npc="H�i Phong T�"		},
	{ nam="Thi�n Long", des="#{event_dali_mp_tl}", key=1026, x=288, z=228, npc="Ph� Tham"			},
	{ nam="Thi�n S�n", des="#{event_dali_mp_ts}", key=1027, x=288, z=235, npc="Tr�nh Thanh S߽ng"		},
	{ nam="Ti�u Dao", des="#{event_dali_mp_xy}", key=1028, x=288, z=225, npc="��m T� V�"	},
}

--**********************************
--������ں���
--**********************************
function x210241_OnDefaultEvent( sceneId, selfId, targetId )
  
	local	key	= GetNumText()
	local	MP

	if key == 1010 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{event_dali_mp_dlg}" )
			for _, MP in x210241_g_MPInfo do
				AddNumText( sceneId, x210241_g_ScriptId, MP.nam, 11, MP.key )
			end
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	else
		for _, MP in x210241_g_MPInfo do
			if key == MP.key then
				x210241_MsgBox( sceneId, selfId, targetId, MP.des )
				CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, MP.x, MP.z, MP.npc )
				break
			end
		end
	end

end

--**********************************
--�о��¼�
--**********************************
function x210241_OnEnumerate( sceneId, selfId, targetId )

	if GetLevel( sceneId, selfId ) >= 10 and GetMenPai( sceneId, selfId ) == MP_WUMENPAI then
		AddNumText( sceneId, x210241_g_ScriptId, "T�m g�p ng߶i ti�p d�n #GC�u ��i m�n ph�i", 11, 1010 )
	end

end

--**********************************
--����������
--**********************************
function x210241_CheckAccept( sceneId, selfId )
end

--**********************************
--����
--**********************************
function x210241_OnAccept( sceneId, selfId )
end

--**********************************
--����
--**********************************
function x210241_OnAbandon( sceneId, selfId )
end

--**********************************
--����
--**********************************
function x210241_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--����Ƿ�����ύ
--**********************************
function x210241_CheckSubmit( sceneId, selfId )
end

--**********************************
--�ύ
--**********************************
function x210241_OnSubmit( sceneId, selfId, targetId, selectRadioId )
end

--**********************************
--ɱ����������
--**********************************
function x210241_OnKillObject( sceneId, selfId, objdataId ,objId )
end

--**********************************
--���������¼�
--**********************************
function x210241_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x210241_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--Message Box
--**********************************
function x210241_MsgBox( sceneId, selfId, targetId, Msg )

	BeginEvent( sceneId )
		AddText( sceneId, Msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

end
