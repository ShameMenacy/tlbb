-- 210243
-- ����ѩԭ�һ�ʱװ

x210243_g_ScriptId = 210243

x210243_g_ItemId = {
										{mp=0,Item=10124009,mpname="Thi�u L�m"},
										{mp=1,Item=10124010,mpname="Minh Gi�o"},
										{mp=2,Item=10124011,mpname="C�i Bang"},
										{mp=4,Item=10124012,mpname="Nga My"},
										{mp=3,Item=10124013,mpname="V� �ang"},
										{mp=5,Item=10124014,mpname="Tinh T�c"},
										{mp=7,Item=10124015,mpname="Thi�n S�n"},
										{mp=8,Item=10124016,mpname="Ti�u Dao"},
										{mp=6,Item=10124017,mpname="Thi�n Long"},
										{mp=9,Item=0},
}

x210243_g_Stone = {id=30505122, num=20} --�󶨵�
x210243_g_Stone2 = {id=30505135, num=20} --û�󶨵�

--**********************************
--������ں���
--**********************************
function x210243_OnDefaultEvent( sceneId, selfId, targetId )
	
	if GetNumText() == 1   then
		BeginEvent(sceneId)
			AddText(sceneId, "#YNh�n Cao c�p th�i trang m�n ph�i" );
			AddText(sceneId, "C� 1 v� l� h�nh gia �� ph�t hi�n 1 c�ch kinh ng�c, tr�n #GNg�n Ngai Tuy�t Nguy�n#W c� 1 s� qu�i v�t tr�n ng߶i mang theo b� m�t c�a #YNh�t K� Qu�i V�t#W. N�u c�c h� c� th� gi�p h�n t�m 20 quy�n #YNh�t K� Qu�i V�t#W, l� s� nh�n ���c 1 m�n cao c�p th�i trang m�n ph�i.#r Sao ��y, c�c h� c� mu�n �i kh�ng?" );
			AddNumText(sceneId, x210243_g_ScriptId,"X�c nh�n",8,3);
			AddNumText(sceneId, x210243_g_ScriptId,"H�y b�",8,4);
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	if GetNumText() == 4   then
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)
		return
	end
	
	if GetNumText() == 3   then
		-- 0��������ǲ�������ȷ������
		local nMenpai = GetMenPai(sceneId,selfId)
		if nMenpai<0 or nMenpai>8   then
			BeginEvent(sceneId)
				AddText(sceneId, "C�c h� v�n ch�a gia nh�p m�n ph�i n�o, ch� c� � t� c�a c�u ��i m�n ph�i m�i c� th� �i cao c�p th�i trang m�n ph�i.");
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		
		-- 1�������������ǲ������㹻��ʯͷ
		local HaveAllItem = 1
		if (GetItemCount(sceneId, selfId, x210243_g_Stone.id) + GetItemCount(sceneId, selfId, x210243_g_Stone2.id)) < x210243_g_Stone.num   then
			HaveAllItem = 0
		end
	
		
		if HaveAllItem == 0  then
			BeginEvent(sceneId)
				AddText(sceneId, "C�c h� c�n mang 20 quy�n Nh�t k� c�a qu�i v�t m�i c� th� �i cao c�p th�i trang m�n ph�i." );
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		
		-- 2�������ҵ�������Ƭ�ǲ��Ƕ��ܹ�ɾ��
		local AllItemCanDelete = 1
		local Stone1_Num = LuaFnGetAvailableItemCount(sceneId, selfId, x210243_g_Stone.id)
		local Stone2_Num = LuaFnGetAvailableItemCount(sceneId, selfId, x210243_g_Stone2.id)

		if Stone1_Num+Stone2_Num < x210243_g_Stone.num   then
			AllItemCanDelete = 0
		end
		
		if AllItemCanDelete == 0  then
			BeginEvent(sceneId)
				AddText(sceneId, "Kh�u tr� v�t ph�m tr�n ng߶i c�c h� th�t b�i, xin ki�m tra l�i ph�i ch�ng v�t ph�m �� b� kh�a ho�c v�t ph�m �ang trong tr�ng th�i giao d�ch." );
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		
		--�۳���Ʒǰ�����Ʒ
		local	bagpos = -1
		if Stone1_Num > 0 then
		  bagpos = GetBagPosByItemSn(sceneId, selfId, x210243_g_Stone.id)
		elseif Stone1_Num == 0 and Stone2_Num > 0 then
		  bagpos = GetBagPosByItemSn(sceneId, selfId, x210243_g_Stone2.id)
		end
		
		local GemItemInfo
		if bagpos ~= -1 then
		  GemItemInfo = GetBagItemTransfer( sceneId, selfId, bagpos )
		end

		
		-- 3�������������ǲ����пռ�Ž���
		local nItemId = 0
		local nMenpaiName = ""
		for i=1, 10  do
			if nMenpai == x210243_g_ItemId[i].mp  then
				nItemId = x210243_g_ItemId[i].Item
				nMenpaiName = x210243_g_ItemId[i].mpname
			end
		end
		
		if nItemId==0  then
			return
		end

	 	BeginAddItem(sceneId)
			AddItem( sceneId, nItemId, 1 )
		local ret = EndAddItem(sceneId,selfId)
		
		local delret = 1
		if ret == 1  then
		--��ʼ�۳���Ʒ
			local DeleteNum = LuaFnGetAvailableItemCount(sceneId, selfId, x210243_g_Stone.id);
			if(DeleteNum >= x210243_g_Stone.num) then
			--�۳��󶨵�
				if LuaFnDelAvailableItem(sceneId, selfId, x210243_g_Stone.id, x210243_g_Stone.num) == 0   then
					delret = 0
				end
			elseif(DeleteNum == 0) then
			--�۳�û�а󶨵�
				if LuaFnDelAvailableItem(sceneId, selfId, x210243_g_Stone2.id, x210243_g_Stone.num) == 0   then
					delret = 0
				end
			else
			--�ȿ۳�û�󶨵��ٿ۳��󶨵�
				if LuaFnDelAvailableItem(sceneId, selfId, x210243_g_Stone.id, DeleteNum) == 0   then
					delret = 0
				end
				
				DeleteNum = x210243_g_Stone.num - DeleteNum;  --��Ҫɾ����
				if LuaFnDelAvailableItem(sceneId, selfId, x210243_g_Stone2.id, DeleteNum) == 0   then
					delret = 0
				end
				
			end
			
			if delret == 1  then
				AddItemListToHuman(sceneId,selfId)
				LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,18,1000)
				
				-- ��ʾ���
				BeginEvent(sceneId)
					AddText(sceneId, "C�c h� �� ��t ���c " .. nMenpaiName .. " cao c�p th�i trang m�n ph�i." );
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
				
				-- �����繫��
				local str = ""
				local rand = random(3)
				
				if rand == 1  then
					str = format("#PB�u tr�i b�ng nhi�n tr� n�n u �m, m�i ng߶i kh�ng bi�t chuy�n g�, th� ra l� #{_INFOUSR%s} s� d�ng #G20 quy�n#Y Nh�t K� Qu�i V�t #{_INFOMSG%s}#P �i ���c #G %s cao c�p th�i trang m�n ph�i#P!", GetName(sceneId,selfId), GemItemInfo, nMenpaiName)
				elseif rand == 2  then
					str = format("#PWoo! #{_INFOUSR%s} s� d�ng #G20 quy�n#Y Nh�t K� Qu�i V�t #{_INFOMSG%s}#P �i ���c #G %s cao c�p th�i trang m�n ph�i#cff99cc, m�c l�n ng߶i l�m ai c�ng ph�i nh�n 1 c�ch ng�c nhi�n! ", GetName(sceneId,selfId), GemItemInfo, nMenpaiName)
				else
					str = format("#P#{_INFOUSR%s} s� d�ng #G20 quy�n#Y Nh�t K� Qu�i V�t #{_INFOMSG%s}#P �i ���c#G %s cao c�p th�i trang m�n ph�i#cff99cc! Ch�c m�ng! Ch�c m�ng! Ch�c m�ng! ", GetName(sceneId,selfId), GemItemInfo, nMenpaiName)
				end
				
				BroadMsgByChatPipe(sceneId, selfId, str, 4)
				
				-- �رմ���
				BeginUICommand(sceneId)
				EndUICommand(sceneId)
				DispatchUICommand(sceneId,selfId, 1000)
				return
			end
		end
		return

	end
	
	if GetNumText() == 2   then
		BeginEvent(sceneId)
			AddText(sceneId, "#{function_help_094}" );
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
end

--**********************************
--�о��¼�
--**********************************
function x210243_OnEnumerate( sceneId, selfId, targetId )
	
	AddNumText(sceneId, x210243_g_ScriptId,"бi th�i trang cao c�p m�n ph�i", 6, 1);
	AddNumText(sceneId, x210243_g_ScriptId,"Gi�i thi�u бi th�i trang cao c�p m�n ph�i", 0, 2);

end

--**********************************
--����������
--**********************************
function x210243_CheckAccept( sceneId, selfId )
end

--**********************************
--����
--**********************************
function x210243_OnAccept( sceneId, selfId, targetId )
end

--**********************************
--����
--**********************************
function x210243_OnAbandon( sceneId, selfId )
end


--**********************************
--����Ƿ�����ύ
--**********************************
function x210243_CheckSubmit( sceneId, selfId )
end

--**********************************
--�ύ
--**********************************
function x210243_OnSubmit( sceneId, selfId, targetId, selectRadioId )
end

--**********************************
--���������¼�
--**********************************
function x210243_OnEnterZone( sceneId, selfId, zoneId )
end

