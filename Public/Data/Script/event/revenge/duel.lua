--�˽�Ŵ�������ɫ

--�ű���
x800115_g_ScriptId	= 800115



--������ں���
--**********************************
function x800115_OnDefaultEvent( sceneId, selfId, targetId )
	local	key	= GetNumText()
	local	mp
	local	i		= 0
	
    if key == 1 then
	    --PrintStr( " =1 ")
	   local Level = GetLevel( sceneId, selfId )
	   local Energy = GetHumanEnergy( sceneId, selfId )
	   
	   if( Level < 20 ) then
            BeginEvent( sceneId )
		        AddText(sceneId,"C�p � c�a ng߽i kh�ng �� c�p 20, kh�ng th� quy�t �u.")
				AddNumText( sceneId, x800115_g_ScriptId, "Ta bi�t r�i...", -1, 2 )
			
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )	
        elseif Energy < 100 then
            BeginEvent( sceneId )
		        AddText(sceneId,"Tinh l�c c�a ng߽i kh�ng �� 100, kh�ng th� quy�t �u.")
				AddNumText( sceneId, x800115_g_ScriptId, "Ta bi�t r�i...", -1, 2 )
			
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )	
        else
        	OpenDuelDataInputWnd( sceneId, selfId, targetId, 123 )
        end
        

	elseif  key == 2 then
	    --PrintStr( " =2 ")
		--�رս���
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
			    
	else
		return
	end
	
end

--**********************************
--�о��¼�
--**********************************
function x800115_OnEnumerate( sceneId, selfId, targetId )
	--if GetLevel( sceneId, selfId ) >= 10 and GetMenPai( sceneId, selfId ) == MP_WUMENPAI then
		--AddNumText( sceneId, x800115_g_ScriptId, "��Ҫ�������", -1, 100 )
	--end
	
	--local Level = GetLevel( sceneId, selfId )
	--if( Level >= 20 ) then
                BeginEvent( sceneId )
		AddText(sceneId,"Giang h� hi�m �c v� c�ng! N�u nh� c�c h� l� ng߶i t� t�, c�c h� c� th� l�a ch�n ph߽ng th�c chi�n �u m�t c�ch quang minh ch�nh ��i. Sau khi �i ph߽ng �ng � quy�t �u s� �n l�i ��i. T�i l�i ��i, n�u t� vong c�ng s� b� tr�ng ph�t!")
		AddNumText( sceneId, x800115_g_ScriptId, "Ta mu�n quy�t �u", 6, 1 )
		AddNumText( sceneId, x800115_g_ScriptId, "Ta c�n suy ngh� th�m...", 8, 2 )
			
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	--else
          --      BeginEvent( sceneId )
	--	AddText(sceneId,"  ���ĵȼ�����20�����޷��������Ҫ��")
	--	AddNumText( sceneId, x800115_g_ScriptId, "Ta bi�t r�i...", -1, 2 )
			
	--	EndEvent( sceneId )
	--	DispatchEventList( sceneId, selfId, targetId )	
	--end
	
	
		
end

--**********************************
--����������
--**********************************
function x800115_CheckAccept( sceneId, selfId )
	--��Ҫ10�����ܽ�
	--if GetLevel( sceneId, selfId ) >= 10 and GetMenPai( sceneId, selfId ) == MP_WUMENPAI then
	--	return 1
	--else
	--	return 0
	--end
end

--**********************************
--����
--**********************************
function x800115_OnAccept( sceneId, selfId )
end

--**********************************
--����
--**********************************
function x800115_OnAbandon( sceneId, selfId )
end

--**********************************
--����
--**********************************
function x800115_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--����Ƿ�����ύ
--**********************************
function x800115_CheckSubmit( sceneId, selfId )
	return 1
end

--**********************************
--�ύ
--**********************************
function x800115_OnSubmit( sceneId, selfId, targetId, selectRadioId )
end

--**********************************
--ɱ����������
--**********************************
function x800115_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--���������¼�
--**********************************
function x800115_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x800115_OnItemChanged( sceneId, selfId, itemdataId )
end
