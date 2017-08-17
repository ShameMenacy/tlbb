-- created by ��ΰ

x400959_g_ScriptId = 400959; --�ű���
x400959_g_name	="Xa Truy�n B�nh";

--����Ŀ��
x400959_g_transfer_target =
{
	[1] = {x = 217, z = 339, scene_num = 0}, 		--L�c D߽ng
	[2] = {x = 333, z = 249, scene_num = 1}, 		--T� Ch�u
	[3] = {x = 260, z = 85, scene_num = 2}, 		--��i L�
	[4] = {x = 206, z = 266, scene_num = 34}, 	--Nam H�i
	[5] = {x = 186, z = 43, scene_num = 28},		--Nam Chi�u
	[6] = {x = 158, z = 113, scene_num = 22}, 	--Tr߶ng B?ch S�n
}

-- �շѽ��
x400959_g_transfer_cost = 5000; -- 50������

--**********************************
--�¼��������
--**********************************
function x400959_OnDefaultEvent( sceneId, selfId, targetId )
	x400959_UpdateEventList( sceneId, selfId, targetId );
end

--**********************************
--�¼��б�
--**********************************
function x400959_UpdateEventList( sceneId, selfId, targetId )
	BeginEvent(sceneId);
		AddText( sceneId, "#{SFCS_80828_01}" );
		AddNumText(sceneId, x400959_g_ScriptId, "L�c D߽ng", 9, 1);
		AddNumText(sceneId, x400959_g_ScriptId, "T� Ch�u", 9, 2);
		AddNumText(sceneId, x400959_g_ScriptId, "��i L�", 9, 3);
		AddNumText(sceneId, x400959_g_ScriptId, "Nam H�i", 9, 4);
		AddNumText(sceneId, x400959_g_ScriptId, "Nam Chi�u", 9, 5);
		AddNumText(sceneId, x400959_g_ScriptId, "Tr߶ng B�ch S�n", 9, 6);
	EndEvent()
	DispatchEventList(sceneId, selfId, targetId);
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x400959_OnEventRequest( sceneId, selfId, targetId, eventId )
	--�������
	if GetItemCount(sceneId, selfId, 40002000)>=1  then
		BeginEvent( sceneId )
			AddText( sceneId, "  Tr�n ng߶i ng߽i c� ng�n phi�u, ta kh�ng th� gi�p ng߽i" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
	--�������
	if GetTeamId(sceneId,selfId)>=0 and 
		IsTeamFollow(sceneId, selfId)==1 and
		LuaFnIsTeamLeader(sceneId,selfId)==1 then
		BeginEvent( sceneId )
			AddText( sceneId, "  �߶ng x� xa x�i hi�m tr�, ta kh�ng th� ��a c� �i ng߽i �i ���c, h�y tho�t kh�i tr�ng th�i theo �i r�i �n g�p ta" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
	--�������
	if IsHaveMission(sceneId,selfId,4021) > 0 then
		BeginEvent(sceneId)
			AddText(sceneId, "  Ng߽i c� thu� v�n trong khoang ch�a, ta kh�ng gi�p ng߶i �i ���c")
		EndEvent()
		DispatchEventList(sceneId, selfId, targetId)
		return
	end
	--
	local id = GetNumText();
	if id >=1 and id <= 6 then
		BeginEvent(sceneId)
			--"���δ�����ȡ50�����ӣ���Ҫ������"
			AddText(sceneId, "#{FFCS_081210_1}")
			if id == 1 then	
				AddNumText(sceneId, x400959_g_ScriptId, "X�c Nh�n", 0, 11);
			elseif id == 2 then
				AddNumText(sceneId, x400959_g_ScriptId, "X�c Nh�n", 0, 21);
			elseif id == 3 then
				AddNumText(sceneId, x400959_g_ScriptId, "X�c Nh�n", 0, 31);
			elseif id == 4 then
				AddNumText(sceneId, x400959_g_ScriptId, "X�c Nh�n", 0, 41);
			elseif id == 5 then
				AddNumText(sceneId, x400959_g_ScriptId, "X�c Nh�n", 0, 51);
			elseif id == 6 then
				AddNumText(sceneId, x400959_g_ScriptId, "X�c Nh�n", 0, 61);
			end
			AddNumText(sceneId, x400959_g_ScriptId, "Hu� b�", 0, 100);
		EndEvent()
		DispatchEventList(sceneId, selfId, targetId);
	elseif id == 100 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )		
	else
		local index = floor(id/10);
		local pos_x = x400959_g_transfer_target[index]["x"];
		local pos_z = x400959_g_transfer_target[index]["z"];
		local scene_num = x400959_g_transfer_target[index]["scene_num"];
			
		local nMoneyJZ = GetMoneyJZ (sceneId, selfId)
		local nMoney = GetMoney (sceneId, selfId)

		--Ǯ����
		if (nMoneyJZ + nMoney) >= x400959_g_transfer_cost then 
				
			-- �շ�
			-- ʹ�ô����ȼ��Ľ�Ǯ���ĺ���
			if LuaFnCostMoneyWithPriority (sceneId, selfId, x400959_g_transfer_cost) == -1 then
				BeginEvent(sceneId)
					AddText(sceneId, "Thu ph� th�t b�i");
				EndEvent()
				DispatchMissionTips(sceneId, selfId)
				return
			else
				-- ����
				CallScriptFunction((400900), "TransferFunc",sceneId, selfId, scene_num, pos_x, pos_z); 
			end

		-- Ǯ����
		else
			BeginEvent(sceneId)
				AddText(sceneId, "S� ti�n mang theo kh�ng ��");
			EndEvent()
			DispatchEventList(sceneId, selfId, targetId)
			return

		end
	end	
end
