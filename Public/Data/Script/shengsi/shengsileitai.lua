--��������
--ľ��

--************************************************************************
--MisDescBegin

--�ű���
x892009_g_ScriptId = 892009

--�������
x892009_g_ReLifeTimes = 10
--��������
x892009_g_CopySceneName="L�i ��i Sinh T�"

--MisDescEnd
--************************************************************************

--��ɫMission����˵��
x892009_g_Param_huan		=0	--0�ţ��Ѿ���ɵĻ������ڽ�������ʱ��ֵ
x892009_g_Param_ok			=1	--1�ţ���ǰ�����Ƿ����(0δ��ɣ�1���)
x892009_g_Param_sceneid		=2	--2�ţ���ǰ��������ĳ�����
x892009_g_Param_teamid		=3	--3�ţ��Ӹ�������ʱ��Ķ����
x892009_g_Param_killcount	=4	--4�ţ�ɱ������ֵ�����
x892009_g_Param_time		=5	--5�ţ���ɸ�������ʱ��(��λ����)
--6�ţ�δ��
--7�ţ�δ��

x892009_g_CopySceneType=FUBEN_GODFIRE	--�������ͣ�������ScriptGlobal.lua����
x892009_g_LimitMembers=1			--���Խ���������С��������
x892009_g_TickTime=5				--�ص��ű���ʱ��ʱ�䣨��λ����/�Σ�
x892009_g_LimitTotalHoldTime=360	--360,1440�������Դ���ʱ�䣨��λ��������,�����ʱ�䵽�ˣ������񽫻�ʧ��
x892009_g_LimitTimeSuccess=360		--360,1440����ʱ�����ƣ���λ���������������ʱ�䵽�ˣ��������
x892009_g_CloseTick=6				--�����ر�ǰ����ʱ����λ��������
x892009_g_NoUserTime=5			--������û���˺���Լ��������ʱ�䣨��λ���룩
x892009_g_DeadTrans=0				--����ת��ģʽ��0�������󻹿��Լ����ڸ�����1��������ǿ���Ƴ�����
x892009_g_Fuben_X=28				--���븱����λ��X
x892009_g_Fuben_Z=31				--���븱����λ��Z
x892009_g_Back_X=255				--Դ����λ��X
x892009_g_Back_Z=255				--Դ����λ��Z
x892009_g_TotalNeedKill=10			--��Ҫɱ����������
x892009_g_Param_sceneid=8			--���ó���ID

--**********************************
--������ں���
--**********************************
function x892009_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "Kh�ng bi�t t� n�i n�o �n  m߶i hai t�n �c nh�n, t� x�ng Th�p Nh� S�t Tinh t�i L�c D߽ng ho�nh h�nh v� k�, l�m nh�c b�ch t�nh. M߶i hai t�n n�y v� ngh� cao c߶ng, ki�u ng�o, ߽ng ng�nh. G�n ��y r�t nhi�u giang h� ��o ch�ch linh tinh t�m n�i n߽ng t�a d߾i ch߾ng b�n ch�ng, khi�n cho th� l�c c�a ch�ng ng�y c�ng l�n m�nh. A di �� ph�t. Thi�n tai, thi�n tai..." )	
		AddNumText( sceneId, x892009_g_ScriptId, "Khi�u chi�n Th�p Nh� S�t Tinh", 10, 10 )
		AddNumText( sceneId, x892009_g_ScriptId, "----Gi�i thi�u Th�p Nh� S�t Tinh----", 0, 30 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--�о��¼�
--**********************************
function x892009_OnEnumerate( sceneId, selfId, targetId )
	
end
--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x892009_OnEventRequest( sceneId, selfId, targetId, eventId)
	if GetNumText() == 10 then

	local ret, msg = x892009_CheckAccept( sceneId, selfId, targetId )
	if 1 ~= ret then
		BeginEvent(sceneId)
			AddText(sceneId,msg)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

		BeginEvent( sceneId )
			AddText( sceneId, "B�n ch�ng th� l�c r�t m�nh, v� c�ng l�i cao c߶ng. Th� ch� h�y tri�u t�p �� �ng �i c�a c�c ��i m�n ph�i t�i ��y, l�o n�p s� gi�p ��a c�c ng߶i �n L�i ��i Sinh T�." )
			AddNumText( sceneId, x892009_g_scriptId, "--Ъn L�i ��i Sinh T�--", 10, 666)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 100  then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId,  0910281)
	elseif GetNumText() == 20 then
	BeginEvent( sceneId )
		AddText( sceneId, "C�c h� mu�n s� h�u m�t Huy�n H�a Th�n Th�?. Gi�t ch�t BOSS c� th� ��t ���c nh�ng v�t ph�m qu� gi� c�ng tr�n th� Huy�n H�a t߽ng �ng." )
		AddText( sceneId, "  #YHuy�n H�a tr�n th� c�n #G1 c�i#W Tr�n Th� Huy�n H�a �an. Huy�n H�a �an To�i Phi�n c� th� � ph� b�n S�t Tinh ��t ���c. #GTr�n th� Huy�n H�a#W c� n�ng l�c chi�n �u c�ng nh� t� ch�t ti�m n�ng c�c k� m�nh m�." )	
	
		AddNumText( sceneId, x892009_g_ScriptId, "Huy�n H�a B�ng Y�u", 6, 201 )
		AddNumText( sceneId, x892009_g_ScriptId, "Huy�n H�a C�ng T�n Th�nh", 6, 202 )
		AddNumText( sceneId, x892009_g_ScriptId, "Huy�n H�a T�n M� M�", 6, 203 )
		AddNumText( sceneId, x892009_g_ScriptId, "Huy�n H�a L�m Sung", 6, 204 )
		AddNumText( sceneId, x892009_g_ScriptId, "Huy�n H�a Th�y Ph� Хu L�nh", 6, 205 )
		AddNumText( sceneId, x892009_g_ScriptId, "Huy�n H�a L� Qu�n D�t", 6, 206 )
		AddNumText( sceneId, x892009_g_ScriptId, "Huy�n H�a T�n V߽ng", 6, 207 )
		AddNumText( sceneId, x892009_g_ScriptId, "Huy�n H�a Quan Th�nh", 6, 208 )
		AddNumText( sceneId, x892009_g_ScriptId, "Huy�n H�a L� Ch� Sinh", 6, 209 )
		AddNumText( sceneId, x892009_g_ScriptId, "Huy�n H�a T�ng Kh߽ng", 6, 210 )
		AddNumText( sceneId, x892009_g_ScriptId, "Huy�n H�a Vi�n C� K� H�n", 6, 211 )
		AddNumText( sceneId, x892009_g_ScriptId, "Huy�n H�a C�p ��i Ph�ch", 6, 212 )
		AddNumText( sceneId, x892009_g_ScriptId, "Gi�i thi�u S�t Tinh", 0, 30 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 201 then
              if LuaFnGetAvailableItemCount(sceneId, selfId, 30502005) >=1 then
	          local bok = 0
	          PetNum = LuaFnGetPetCount(sceneId,selfId)
	          if PetNum ~= 0 then
		          for i = 1,PetNum,1 do
			          PetIndex = i - 1		--Tr�n Th� index��0��ʼ
			          if LuaFnGetPet_DataID(sceneId, selfId, PetIndex) == 25011 then
	                             LuaFnDeletePet( sceneId, selfId, PetIndex, 1 )
	                             bok=1
			          else
			                 BeginEvent(sceneId)
				                 AddText(sceneId,"Tr�n th� Huy�n H�a c�n mang theo tr�n th� t߽ng �ng. H�y ki�m tra xem trong � tr�n th� c� tr�n th�  #YB�ng Y�u ch�a...")
			                 EndEvent(sceneId)
			                 DispatchEventList(sceneId,selfId,targetId)
			          return
			          end
		          end
	          end
	          if bok == 1 then
	             LuaFnDelAvailableItem(sceneId,selfId,30502005,1)
	             TryRecieveItem( sceneId, selfId, 30309802, 1)--������Ʒ
	          end
              else
		     BeginEvent(sceneId)
			       AddText(sceneId,"Tr�n th� Huy�n H�a ph�i mang theo #YTr�n Th� Huy�n H�a �an#W. Ki�m tra trong tay n�i �� c� v�t ph�m n�y ch�a...")
	            EndEvent(sceneId)
	            DispatchEventList(sceneId,selfId,targetId)
	        end

	elseif GetNumText() == 202 then
              if LuaFnGetAvailableItemCount(sceneId, selfId, 30502005) >=1 then
	          local bok = 0
	          PetNum = LuaFnGetPetCount(sceneId,selfId)
	          if PetNum ~= 0 then
		          for i = 1,PetNum,1 do
			          PetIndex = i - 1		--Tr�n Th� index��0��ʼ
			          if LuaFnGetPet_DataID(sceneId, selfId, PetIndex) == 13474 then
	                             LuaFnDeletePet( sceneId, selfId, PetIndex, 1 )
	                             bok=1
			          else
			                 BeginEvent(sceneId)
				                 AddText(sceneId,"Tr�n th� Huy�n H�a c�n mang theo tr�n th� t߽ng �ng. H�y ki�m tra xem trong � tr�n th� c� tr�n th�  #YC�ng T�n Th�nh ch�a...")
			                 EndEvent(sceneId)
			                 DispatchEventList(sceneId,selfId,targetId)
			          return
			          end
		          end
	          end
	          if bok == 1 then
	             LuaFnDelAvailableItem(sceneId,selfId,30502005,1)
	             TryRecieveItem( sceneId, selfId, 30309803, 1)--������Ʒ
	          end
              else
		     BeginEvent(sceneId)
			       AddText(sceneId,"Tr�n th� Huy�n H�a ph�i mang theo #YTr�n Th� Huy�n H�a �an#W. Ki�m tra trong tay n�i �� c� v�t ph�m n�y ch�a...")
	            EndEvent(sceneId)
	            DispatchEventList(sceneId,selfId,targetId)
	        end

	elseif GetNumText() == 203 then
              if LuaFnGetAvailableItemCount(sceneId, selfId, 30502005) >=1 then
	          local bok = 0
	          PetNum = LuaFnGetPetCount(sceneId,selfId)
	          if PetNum ~= 0 then
		          for i = 1,PetNum,1 do
			          PetIndex = i - 1		--Tr�n Th� index��0��ʼ
			          if LuaFnGetPet_DataID(sceneId, selfId, PetIndex) == 9560 then
	                             LuaFnDeletePet( sceneId, selfId, PetIndex, 1 )
	                             bok=1
			          else
			                 BeginEvent(sceneId)
				                 AddText(sceneId,"Tr�n th� Huy�n H�a c�n mang theo tr�n th� t߽ng �ng. H�y ki�m tra xem trong � tr�n th� c� tr�n th�  #YT�n M� M� ch�a...")
			                 EndEvent(sceneId)
			                 DispatchEventList(sceneId,selfId,targetId)
			          return
			          end
		          end
	          end
	          if bok == 1 then
	             LuaFnDelAvailableItem(sceneId,selfId,30502005,1)
	             TryRecieveItem( sceneId, selfId, 30309804, 1)--������Ʒ
	          end
              else
		     BeginEvent(sceneId)
			       AddText(sceneId,"Tr�n th� Huy�n H�a ph�i mang theo #YTr�n Th� Huy�n H�a �an#W. Ki�m tra trong tay n�i �� c� v�t ph�m n�y ch�a...")
	            EndEvent(sceneId)
	            DispatchEventList(sceneId,selfId,targetId)
	        end

	elseif GetNumText() == 204 then
              if LuaFnGetAvailableItemCount(sceneId, selfId, 30502005) >=1 then
	          local bok = 0
	          PetNum = LuaFnGetPetCount(sceneId,selfId)
	          if PetNum ~= 0 then
		          for i = 1,PetNum,1 do
			          PetIndex = i - 1		--Tr�n Th� index��0��ʼ
			          if LuaFnGetPet_DataID(sceneId, selfId, PetIndex) == 13510 then
	                             LuaFnDeletePet( sceneId, selfId, PetIndex, 1 )
	                             bok=1
			          else
			                 BeginEvent(sceneId)
				                 AddText(sceneId,"Tr�n th� Huy�n H�a c�n mang theo tr�n th� t߽ng �ng. H�y ki�m tra xem trong � tr�n th� c� tr�n th�  #YL�m Sung ch�a...")
			                 EndEvent(sceneId)
			                 DispatchEventList(sceneId,selfId,targetId)
			          return
			          end
		          end
	          end
	          if bok == 1 then
	             LuaFnDelAvailableItem(sceneId,selfId,30502005,1)
	             TryRecieveItem( sceneId, selfId, 30309805, 1)--������Ʒ
	          end
              else
		     BeginEvent(sceneId)
			       AddText(sceneId,"Tr�n th� Huy�n H�a ph�i mang theo #YTr�n Th� Huy�n H�a �an#W. Ki�m tra trong tay n�i �� c� v�t ph�m n�y ch�a...")
	            EndEvent(sceneId)
	            DispatchEventList(sceneId,selfId,targetId)
	        end

	elseif GetNumText() == 205 then
              if LuaFnGetAvailableItemCount(sceneId, selfId, 30502005) >=1 then
	          local bok = 0
	          PetNum = LuaFnGetPetCount(sceneId,selfId)
	          if PetNum ~= 0 then
		          for i = 1,PetNum,1 do
			          PetIndex = i - 1		--Tr�n Th� index��0��ʼ
			          if LuaFnGetPet_DataID(sceneId, selfId, PetIndex) == 32530 then
	                             LuaFnDeletePet( sceneId, selfId, PetIndex, 1 )
	                             bok=1
			          else
			                 BeginEvent(sceneId)
				                 AddText(sceneId,"Tr�n th� Huy�n H�a c�n mang theo tr�n th� t߽ng �ng. H�y ki�m tra xem trong � tr�n th� c� tr�n th�  #YTh�y Ph� Хu L�nh ch�a...")
			                 EndEvent(sceneId)
			                 DispatchEventList(sceneId,selfId,targetId)
			          return
			          end
		          end
	          end
	          if bok == 1 then
	             LuaFnDelAvailableItem(sceneId,selfId,30502005,1)
	             TryRecieveItem( sceneId, selfId, 30309806, 1)--������Ʒ
	          end
              else
		     BeginEvent(sceneId)
			       AddText(sceneId,"Tr�n th� Huy�n H�a ph�i mang theo #YTr�n Th� Huy�n H�a �an#W. Ki�m tra trong tay n�i �� c� v�t ph�m n�y ch�a...")
	            EndEvent(sceneId)
	            DispatchEventList(sceneId,selfId,targetId)
	        end

	elseif GetNumText() == 206 then
              if LuaFnGetAvailableItemCount(sceneId, selfId, 30502005) >=1 then
	          local bok = 0
	          PetNum = LuaFnGetPetCount(sceneId,selfId)
	          if PetNum ~= 0 then
		          for i = 1,PetNum,1 do
			          PetIndex = i - 1		--Tr�n Th� index��0��ʼ
			          if LuaFnGetPet_DataID(sceneId, selfId, PetIndex) == 13465 then
	                             LuaFnDeletePet( sceneId, selfId, PetIndex, 1 )
	                             bok=1
			          else
			                 BeginEvent(sceneId)
				                 AddText(sceneId,"Tr�n th� Huy�n H�a c�n mang theo tr�n th� t߽ng �ng. H�y ki�m tra xem trong � tr�n th� c� tr�n th�  #YL� Qu�n D�t ch�a...")
			                 EndEvent(sceneId)
			                 DispatchEventList(sceneId,selfId,targetId)
			          return
			          end
		          end
	          end
	          if bok == 1 then
	             LuaFnDelAvailableItem(sceneId,selfId,30502005,1)
	             TryRecieveItem( sceneId, selfId, 30309807, 1)--������Ʒ
	          end
              else
		     BeginEvent(sceneId)
			       AddText(sceneId,"Tr�n th� Huy�n H�a ph�i mang theo #YTr�n Th� Huy�n H�a �an#W. Ki�m tra trong tay n�i �� c� v�t ph�m n�y ch�a...")
	            EndEvent(sceneId)
	            DispatchEventList(sceneId,selfId,targetId)
	        end

	elseif GetNumText() == 207 then
              if LuaFnGetAvailableItemCount(sceneId, selfId, 30502005) >=1 then
	          local bok = 0
	          PetNum = LuaFnGetPetCount(sceneId,selfId)
	          if PetNum ~= 0 then
		          for i = 1,PetNum,1 do
			          PetIndex = i - 1		--Tr�n Th� index��0��ʼ
			          if LuaFnGetPet_DataID(sceneId, selfId, PetIndex) == 1403 then
	                             LuaFnDeletePet( sceneId, selfId, PetIndex, 1 )
	                             bok=1
			          else
			                 BeginEvent(sceneId)
				                 AddText(sceneId,"Tr�n th� Huy�n H�a c�n mang theo tr�n th� t߽ng �ng. H�y ki�m tra xem trong � tr�n th� c� tr�n th�  #YT�n V߽ng ch�a...")
			                 EndEvent(sceneId)
			                 DispatchEventList(sceneId,selfId,targetId)
			          return
			          end
		          end
	          end
	          if bok == 1 then
	             LuaFnDelAvailableItem(sceneId,selfId,30502005,1)
	             TryRecieveItem( sceneId, selfId, 30309808, 1)--������Ʒ
	          end
              else
		     BeginEvent(sceneId)
			       AddText(sceneId,"Tr�n th� Huy�n H�a ph�i mang theo #YTr�n Th� Huy�n H�a �an#W. Ki�m tra trong tay n�i �� c� v�t ph�m n�y ch�a...")
	            EndEvent(sceneId)
	            DispatchEventList(sceneId,selfId,targetId)
	        end

	elseif GetNumText() == 208 then
              if LuaFnGetAvailableItemCount(sceneId, selfId, 30502005) >=1 then
	          local bok = 0
	          PetNum = LuaFnGetPetCount(sceneId,selfId)
	          if PetNum ~= 0 then
		          for i = 1,PetNum,1 do
			          PetIndex = i - 1		--Tr�n Th� index��0��ʼ
			          if LuaFnGetPet_DataID(sceneId, selfId, PetIndex) == 13483 then
	                             LuaFnDeletePet( sceneId, selfId, PetIndex, 1 )
	                             bok=1
			          else
			                 BeginEvent(sceneId)
				                 AddText(sceneId,"Tr�n th� Huy�n H�a c�n mang theo tr�n th� t߽ng �ng. H�y ki�m tra xem trong � tr�n th� c� tr�n th�  #YQuan Th�nh ch�a...")
			                 EndEvent(sceneId)
			                 DispatchEventList(sceneId,selfId,targetId)
			          return
			          end
		          end
	          end
	          if bok == 1 then
	             LuaFnDelAvailableItem(sceneId,selfId,30502005,1)
	             TryRecieveItem( sceneId, selfId, 30309809, 1)--������Ʒ
	          end
              else
		     BeginEvent(sceneId)
			       AddText(sceneId,"Tr�n th� Huy�n H�a ph�i mang theo #YTr�n Th� Huy�n H�a �an#W. Ki�m tra trong tay n�i �� c� v�t ph�m n�y ch�a...")
	            EndEvent(sceneId)
	            DispatchEventList(sceneId,selfId,targetId)
	        end

	elseif GetNumText() == 209 then
              if LuaFnGetAvailableItemCount(sceneId, selfId, 30502005) >=1 then
	          local bok = 0
	          PetNum = LuaFnGetPetCount(sceneId,selfId)
	          if PetNum ~= 0 then
		          for i = 1,PetNum,1 do
			          PetIndex = i - 1		--Tr�n Th� index��0��ʼ
			          if LuaFnGetPet_DataID(sceneId, selfId, PetIndex) == 13492 then
	                             LuaFnDeletePet( sceneId, selfId, PetIndex, 1 )
	                             bok=1
			          else
			                 BeginEvent(sceneId)
				                 AddText(sceneId,"Tr�n th� Huy�n H�a c�n mang theo tr�n th� t߽ng �ng. H�y ki�m tra xem trong � tr�n th� c� tr�n th�  #YL� Ch� Sinh ch�a...")
			                 EndEvent(sceneId)
			                 DispatchEventList(sceneId,selfId,targetId)
			          return
			          end
		          end
	          end
	          if bok == 1 then
	             LuaFnDelAvailableItem(sceneId,selfId,30502005,1)
	             TryRecieveItem( sceneId, selfId, 30309810, 1)--������Ʒ
	          end
              else
		     BeginEvent(sceneId)
			       AddText(sceneId,"Tr�n th� Huy�n H�a ph�i mang theo #YTr�n Th� Huy�n H�a �an#W. Ki�m tra trong tay n�i �� c� v�t ph�m n�y ch�a...")
	            EndEvent(sceneId)
	            DispatchEventList(sceneId,selfId,targetId)
	        end

	elseif GetNumText() == 210 then
              if LuaFnGetAvailableItemCount(sceneId, selfId, 30502005) >=1 then
	          local bok = 0
	          PetNum = LuaFnGetPetCount(sceneId,selfId)
	          if PetNum ~= 0 then
		          for i = 1,PetNum,1 do
			          PetIndex = i - 1		--Tr�n Th� index��0��ʼ
			          if LuaFnGetPet_DataID(sceneId, selfId, PetIndex) == 13438 then
	                             LuaFnDeletePet( sceneId, selfId, PetIndex, 1 )
	                             bok=1
			          else
			                 BeginEvent(sceneId)
				                 AddText(sceneId,"Tr�n th� Huy�n H�a c�n mang theo tr�n th� t߽ng �ng. H�y ki�m tra xem trong � tr�n th� c� tr�n th�  #YT�ng Kh߽ng ch�a...")
			                 EndEvent(sceneId)
			                 DispatchEventList(sceneId,selfId,targetId)
			          return
			          end
		          end
	          end
	          if bok == 1 then
	             LuaFnDelAvailableItem(sceneId,selfId,30502005,1)
	             TryRecieveItem( sceneId, selfId, 30309811, 1)--������Ʒ
	          end
              else
		     BeginEvent(sceneId)
			       AddText(sceneId,"Tr�n th� Huy�n H�a ph�i mang theo #YTr�n Th� Huy�n H�a �an#W. Ki�m tra trong tay n�i �� c� v�t ph�m n�y ch�a...")
	            EndEvent(sceneId)
	            DispatchEventList(sceneId,selfId,targetId)
	        end

	elseif GetNumText() == 211 then
              if LuaFnGetAvailableItemCount(sceneId, selfId, 30502005) >=1 then
	          local bok = 0
	          PetNum = LuaFnGetPetCount(sceneId,selfId)
	          if PetNum ~= 0 then
		          for i = 1,PetNum,1 do
			          PetIndex = i - 1		--Tr�n Th� index��0��ʼ
			          if LuaFnGetPet_DataID(sceneId, selfId, PetIndex) == 12040 then
	                             LuaFnDeletePet( sceneId, selfId, PetIndex, 1 )
	                             bok=1
			          else
			                 BeginEvent(sceneId)
				                 AddText(sceneId,"Tr�n th� Huy�n H�a c�n mang theo tr�n th� t߽ng �ng. H�y ki�m tra xem trong � tr�n th� c� tr�n th�  #YVi�n C� K� H�n ch�a...")
			                 EndEvent(sceneId)
			                 DispatchEventList(sceneId,selfId,targetId)
			          return
			          end
		          end
	          end
	          if bok == 1 then
	             LuaFnDelAvailableItem(sceneId,selfId,30502005,1)
	             TryRecieveItem( sceneId, selfId, 30309812, 1)--������Ʒ
	          end
              else
		     BeginEvent(sceneId)
			       AddText(sceneId,"Tr�n th� Huy�n H�a ph�i mang theo #YTr�n Th� Huy�n H�a �an#W. Ki�m tra trong tay n�i �� c� v�t ph�m n�y ch�a...")
	            EndEvent(sceneId)
	            DispatchEventList(sceneId,selfId,targetId)
	        end

	elseif GetNumText() == 212 then
              if LuaFnGetAvailableItemCount(sceneId, selfId, 30502005) >=1 then
	          local bok = 0
	          PetNum = LuaFnGetPetCount(sceneId,selfId)
	          if PetNum ~= 0 then
		          for i = 1,PetNum,1 do
			          PetIndex = i - 1		--Tr�n Th� index��0��ʼ
			          if LuaFnGetPet_DataID(sceneId, selfId, PetIndex) == 9540 then
	                             LuaFnDeletePet( sceneId, selfId, PetIndex, 1 )
	                             bok=1
			          else
			                 BeginEvent(sceneId)
				                 AddText(sceneId,"Tr�n th� Huy�n H�a c�n mang theo tr�n th� t߽ng �ng. H�y ki�m tra xem trong � tr�n th� c� tr�n th�  #YC�p ��i Ph�ch ch�a...")
			                 EndEvent(sceneId)
			                 DispatchEventList(sceneId,selfId,targetId)
			          return
			          end
		          end
	          end
	          if bok == 1 then
	             LuaFnDelAvailableItem(sceneId,selfId,30502005,1)
	             TryRecieveItem( sceneId, selfId, 30309813, 1)--������Ʒ
	          end
              else
		     BeginEvent(sceneId)
			       AddText(sceneId,"Tr�n th� Huy�n H�a ph�i mang theo #YTr�n Th� Huy�n H�a �an#W. Ki�m tra trong tay n�i �� c� v�t ph�m n�y ch�a...")
	            EndEvent(sceneId)
	            DispatchEventList(sceneId,selfId,targetId)
	        end

	elseif GetNumText() == 40 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310115)
              if c0 >=50 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310115,5)--ɾ����Ʒ
					TryRecieveItem( sceneId, selfId, 30502005, 1)--������Ʒ
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GCh�c m�ng, h�p th�nh H�n B�ng Ch�u th�nh c�ng."
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     BeginEvent(sceneId)
			       AddText(sceneId,"H�p th�nh ph�i mang theo #YTr�n Th� Huy�n H�a �an To�i Phi�n  #G50 c�i #W. H�y ki�m tra �� s� l��ng.")
	            EndEvent(sceneId)
	            DispatchEventList(sceneId,selfId,targetId)
	      end

	elseif GetNumText() == 30 then
	BeginEvent( sceneId )
		AddText( sceneId, "S�t tinh ph� b�n t�ng c�ng c� BOSS 12, c� th� khi�u chi�n t�ng t�n m�t." )
		AddText( sceneId, "Ph� b�n m�i ng�y c� th� ti�n v�o ba l��t." )	
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 666 then
		local nearmembercount	= GetNearTeamCount( sceneId, selfId )
		x892009_MakeCopyScene( sceneId, selfId, nearmembercount )
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#gff00f0Ch�c m?ng #gffff00"..nam.."#gff00f0 c�ng t� �i ti�n v�o Sinh T� L�i ��i th�nh c�ng. M�i ng߶i h�y c�ng nhau ch� tin t�c t�t l�nh c�a h� n�o...", 4 )
	end
end

--**********************************
--����������
--**********************************
function x892009_CheckAccept( sceneId, selfId, targetId )

	if LuaFnHasTeam(sceneId,selfId) ~= 1 then
		return 0, "Ph� b�n Th�p Nh� S�t Tinh c�n c� t�i thi�u 3 th�nh vi�n trong m�t �i. N�u ng߽i c�m th�y m�t m�nh m�nh �� gi�i, h�y tham gia Hoa S�n Lu�n Ki�m �i."
	end

	--�ǲ��Ƕӳ�....
	if GetTeamLeader(sceneId,selfId) ~= selfId then
		return 0, "Ng߽i kh�ng ph�i �i tr߷ng."
	end

	--�����Ƿ�....
	if GetTeamSize(sceneId,selfId) < 1 then
		return 0, "еi ng� kh�ng �� 3 ng߶i. Ti�n v�o Sinh T� L�i ��i ch� c� n߾c n�p m�ng cho ch�ng m� th�i!"
	end

	--�Ƿ��ڸ���....
	local NearTeamSize = GetNearTeamCount(sceneId,selfId)
	if GetTeamSize(sceneId,selfId) ~= NearTeamSize then
		return 0, "C� th�nh vi�n kh�ng � g�n ��y."
	end

	local Humanlist = {}
	local nHumanNum = 0
	for i=0, NearTeamSize-1 do
		local PlayerId = GetNearTeamMember( sceneId, selfId, i )
		if GetLevel( sceneId, PlayerId ) < 80 then
			Humanlist[nHumanNum] = GetName( sceneId, PlayerId )
			nHumanNum = nHumanNum + 1
		end
	end

	if nHumanNum > 0 then

		local msg = "Ng߽i c�p � c�n d߾i 80"
		for i=0, nHumanNum-2 do
			msg = msg .. Humanlist[i] .. ", "
		end
		msg = msg .. Humanlist[nHumanNum-1] .. " kh�ng th� ti�n v�o."
		return 0, msg

	end

	--�Ƿ����˽�������3����....����3.6�޸� ��ֹû�н�ȥ�ĵ��ӳ������
	nHumanNum = 0
	local CurDayTime = GetDayTime()
	for i=0, NearTeamSize-1 do

		local PlayerId = GetNearTeamMember( sceneId, selfId, i )
		local lastTime = GetMissionData( sceneId, PlayerId, MD_CHUNJIE_BIANPAO_DAYTIME )
		local lastDayTime = floor( lastTime / 100 )
		local lastDayCount = mod( lastTime, 100 )
	
		if CurDayTime > lastDayTime then
			lastDayTime = CurDayTime
			lastDayCount = 0
		end

		if lastDayCount >= 3 then
			Humanlist[nHumanNum] = GetName( sceneId, PlayerId )
			nHumanNum = nHumanNum + 1
		end

	end

	if nHumanNum > 0 then

		local msg = "    "
		for i=0, nHumanNum-2 do
			msg = msg .. Humanlist[i] .. ", "
		end
		msg = msg .. Humanlist[nHumanNum-1] .. " trong ng�y �� khi�u chi�n qu� 3 l��t r�i."
		return 0, msg

	end

	return	1
end

--**********************************
--����
--**********************************
function x892009_OnAccept( sceneId, selfId, targetId )
	
end

--**********************************
--����
--**********************************
function x892009_OnAbandon( sceneId, selfId )
	
end

--**********************************
--��������
--**********************************
function x892009_MakeCopyScene( sceneId, selfId, nearmembercount )

	local mylevel = 120
	local iniLevel=120

	leaderguid=LuaFnObjId2Guid(sceneId,selfId)
	LuaFnSetSceneLoad_Map(sceneId, "shengsileitai.nav"); --��ͼ�Ǳ���ѡȡ�ģ����ұ�����Config/SceneInfo.ini�����ú�
	LuaFnSetCopySceneData_TeamLeader(sceneId, leaderguid);
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId, x892009_g_NoUserTime*1000);
	LuaFnSetCopySceneData_Timer(sceneId, x892009_g_TickTime*1000);
	LuaFnSetCopySceneData_Param(sceneId, 0, x892009_g_CopySceneType);--���ø������ݣ����ｫ0����������������Ϊ999�����ڱ�ʾ������999(�����Զ���)
	LuaFnSetCopySceneData_Param(sceneId, 1, x892009_g_ScriptId);--��1����������Ϊ���������¼��ű���
	LuaFnSetCopySceneData_Param(sceneId, 2, 0);--���ö�ʱ�����ô���
	LuaFnSetCopySceneData_Param(sceneId, 3, -1);--���ø�����ڳ�����, ��ʼ��
	LuaFnSetCopySceneData_Param(sceneId, 4, 0);--���ø����رձ�־, 0���ţ�1�ر�
	LuaFnSetCopySceneData_Param(sceneId, 5, 0);--�����뿪����ʱ����
	LuaFnSetCopySceneData_Param(sceneId, 6, GetTeamId(sceneId,selfId)); --��������
	LuaFnSetCopySceneData_Param(sceneId, 7, 0) ;--ɱ��Boss������
	LuaFnSetCopySceneData_PvpRuler( sceneId, 9 )

	local x,z = GetWorldPos( sceneId, selfId )		

	LuaFnSetSceneLoad_Monster( sceneId, "shengsileitai_monster2.ini" )
	
    local CopyScene_LevelGap = 31
	LuaFnSetCopySceneData_Param(sceneId, CopyScene_LevelGap, mylevel - iniLevel) --����CopyScene_LevelGap �� scene.lua �и�ֵ

	local bRetSceneID = LuaFnCreateCopyScene(sceneId); --��ʼ����ɺ���ô�����������
	BeginEvent(sceneId)
		if bRetSceneID>0 then
			AddText(sceneId,"Ti�n v�o ph� b�n th�nh c�ng!");
		else
			AddText(sceneId,"S� l��ng b�n sao �� qu� t�i, h�y ��i m�t l�c.");
		end
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
end

--**********************************
--����
--**********************************
function x892009_OnContinue( sceneId, selfId, targetId )
	
end

--**********************************
--����Ƿ�����ύ
--**********************************
function x892009_CheckSubmit( sceneId, selfId )
	
end

--**********************************
--�ύ
--**********************************
function x892009_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
end
--**********************************
--��������
--**********************************
function x892009_OnDie(sceneId, objId, killerId)
    --PrintStr( "x892009_OnDie [objId]"..objId.." [killerId]"..killerId.."[sceneId]"..sceneId )
    local DataID = GetMonsterDataID( sceneId, objId )
    x892009_OnKillObject( sceneId, killerId, DataID, objId )
end
--**********************************
--ɱ����������
--**********************************
function x892009_OnKillObject( sceneId, selfId, objdataId ,objId )
	local temp = random(2)
		if temp==1 then
			AddMonsterDropItem( sceneId, objId, selfId, 30900001 )
		end
end

--**********************************
--���������¼�
--**********************************
function x892009_OnEnterZone( sceneId, selfId, zoneId )
	
end

--**********************************
--���߸ı�
--**********************************
function x892009_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--�����¼�
--**********************************
function x892009_OnCopySceneReady( sceneId, destsceneId )

	LuaFnSetCopySceneData_Param(destsceneId, 3, sceneId);--���ø�����ڳ�����
	leaderguid  = LuaFnGetCopySceneData_TeamLeader(destsceneId) ;
	leaderObjId = LuaFnGuid2ObjId(sceneId,leaderguid);
	NewWorld( sceneId,leaderObjId, destsceneId, x892009_g_Fuben_X, x892009_g_Fuben_Z)
	local nearmembercount	= GetNearTeamCount( sceneId, leaderObjId )
	local member
	local misIndex
	for	i=0, nearmembercount-1 do
		member = GetNearTeamMember( sceneId, leaderObjId, i )
		if LuaFnIsCanDoScriptLogic( sceneId, member ) == 1 then
		NewWorld( sceneId, member, destsceneId, x892009_g_Fuben_X, x892009_g_Fuben_Z )
		end
	end
end

--**********************************
--����ҽ��븱���¼�
--**********************************
function x892009_OnPlayerEnter( sceneId, selfId )

--���������󸴻��λ��
	SetPlayerDefaultReliveInfo( sceneId, selfId, "%10", -1, "0", sceneId, x892009_g_Fuben_X, x892009_g_Fuben_Z );
	--SetUnitCampID(sceneId, selfId, selfId, 109)

	local lastTime = GetMissionData( sceneId, selfId, MD_CHUNJIE_BIANPAO_DAYTIME )
	local lastDayTime = floor( lastTime / 100 )
	local lastDayCount = mod( lastTime, 100 )
	local CurDayTime = GetDayTime()

	if CurDayTime > lastDayTime then
		lastDayTime = CurDayTime
		lastDayCount = 0
	end

	lastDayCount = lastDayCount + 1
	lastTime = lastDayTime * 100 + lastDayCount
	SetMissionData( sceneId, selfId, MD_CHUNJIE_BIANPAO_DAYTIME, lastTime )

end

--**********************************
--������ڸ����������¼�
--**********************************
function x892009_OnHumanDie( sceneId, selfId, killerId )
	
end

--**********************************
--����������ʱ���¼�
--**********************************
function x892009_OnCopySceneTimer( sceneId, nowTime )
	--����ʱ�Ӷ�ȡ������
	TickCount = LuaFnGetCopySceneData_Param(sceneId, 2) ;--ȡ���Ѿ�ִ�еĶ�ʱ����
	TickCount = TickCount+1 ;
	LuaFnSetCopySceneData_Param(sceneId, 2, TickCount);--�����µĶ�ʱ�����ô���

	--�����رձ�־
	leaveFlag = LuaFnGetCopySceneData_Param(sceneId, 4) ;

	if leaveFlag == 1 then --��Ҫ�뿪

		--�뿪����ʱ��Ķ�ȡ������
		leaveTickCount = LuaFnGetCopySceneData_Param(sceneId, 5) ;
		leaveTickCount = leaveTickCount+1 ;
		LuaFnSetCopySceneData_Param(sceneId, 5, leaveTickCount) ;

		if leaveTickCount == x892009_g_CloseTick then --����ʱ�䵽����Ҷ���ȥ��

			oldsceneId = LuaFnGetCopySceneData_Param(sceneId, 3) ;--ȡ�ø�����ڳ�����

			--����ǰ����������������˴��ͻ�ԭ������ʱ��ĳ���
			local membercount = LuaFnGetCopyScene_HumanCount(sceneId)
			local mems = {}
			for	i=0,membercount-1 do
				mems[i] = LuaFnGetCopyScene_HumanObjId(sceneId,i)
				NewWorld( sceneId, mems[i], oldsceneId, x892009_g_Back_X, x892009_g_Back_Z )
			end

		elseif leaveTickCount<x892009_g_CloseTick then

			oldsceneId = LuaFnGetCopySceneData_Param(sceneId, 3) ;--ȡ�ø�����ڳ�����

			--֪ͨ��ǰ����������������ˣ������رյ���ʱ��
			local membercount = LuaFnGetCopyScene_HumanCount(sceneId)
			local mems = {}
			for	i=0,membercount-1 do
				mems[i] = LuaFnGetCopyScene_HumanObjId(sceneId,i)
	  			BeginEvent(sceneId)
	  				strText = format("Ng߽i c�n %d gi�y � r�i kh�i ph� b�n.", (x892009_g_CloseTick-leaveTickCount)*x892009_g_TickTime )
	  				AddText(sceneId,strText);
	  			EndEvent(sceneId)
	  			DispatchMissionTips(sceneId,mems[i])
			end
		end
	elseif TickCount == x892009_g_LimitTimeSuccess then
		--�˴�������ʱ�����Ƶ�������ɴ���
		local membercount = LuaFnGetCopyScene_HumanCount(sceneId)
		local mems = {}
		for	i=0,membercount-1 do
			mems[i] = LuaFnGetCopyScene_HumanObjId(sceneId,i)

  			BeginEvent(sceneId)
  				AddText(sceneId,"Nhi�m v� ho�n th�nh!");
  			EndEvent(sceneId)
  			DispatchMissionTips(sceneId,mems[i])
			misIndex = GetMissionIndexByID(sceneId,mems[i],x892009_g_MissionId)--ȡ��������������ֵ
			--������ĵ�1����������Ϊ1,��ʾ��ɵ�����
			SetMissionByIndex(sceneId,mems[i],misIndex,x892009_g_Param_ok,1)--������������
			--��ɸ�������ʱ��
			SetMissionByIndex(sceneId,mems[i],misIndex,x892009_g_Param_time,TickCount*x892009_g_TickTime)--������������
		end

		--���ø����رձ�־
		LuaFnSetCopySceneData_Param(sceneId, 4, 1) ;

	elseif TickCount == x892009_g_LimitTotalHoldTime then --������ʱ�����Ƶ���
		--�˴����ø���������ʱ�����Ƶ��������ʱ�䵽����...
		local membercount = LuaFnGetCopyScene_HumanCount(sceneId)
		local mems = {}
		for	i=0,membercount-1 do
			mems[i] = LuaFnGetCopyScene_HumanObjId(sceneId,i)
			DelMission( sceneId, mems[i], x892009_g_MissionId );--����ʧ��,ɾ��֮

  			BeginEvent(sceneId)
  				AddText(sceneId,"Nhi�m v� th�t b�i.");
  			EndEvent(sceneId)
  			DispatchMissionTips(sceneId,mems[i])
		end

		--���ø����رձ�־
		LuaFnSetCopySceneData_Param(sceneId, 4, 1) ;

	end
end
--**********************************
--��ĳ��Ҵ��ͳ�����,�ص�����ʱ��λ��
--**********************************
function x892009_KickOut( sceneId, objId )
    local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )	--ȡ�ø�����ڳ�����
	local x = 158 --����ʱ������X
	local z = 130 --����ʱ������Z
	
	if LuaFnIsObjValid( sceneId, objId ) == 1 then
	    NewWorld( sceneId, objId, oldsceneId, x, z )
	end
	
end
--**********************************
-- �Ի�������Ϣ��ʾ
--**********************************
function x892009_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
-- ��Ļ�м���Ϣ��ʾ
--**********************************
function x892009_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
--**********************************
-- ��⿪��ʱ��
--**********************************
function x892009_IsActivityOpen(sceneId)
	local nHour = GetHour();
	local nMinute = GetMinute();
	local nCurTempTime = nHour * 60 + nMinute;
	if nCurTempTime >= 20 * 60 and nCurTempTime < 21 * 60 + 20 then
		return 1;
	end
	return 0;
--	return 1
end
--**********************************
-- ��⿪��ʱ��2
--**********************************
function x892009_IsActivityOpen2(sceneId)
	local nHour = GetHour();
	local nMinute = GetMinute();
	local nCurTempTime = nHour * 60 + nMinute;
	if nCurTempTime >= 21 * 60 + 20 and nCurTempTime < 21 * 50 then
		return 1;
	end
	return 0;
--	return 1
end
--**********************************
-- ��ֵ
--**********************************
function x892009_ToMax( sceneId, selfId, killerId ,guildName,maxCount )
	PK_MAXCOUNTGUILD=guildName
	PK_MAXCOUNT=maxCount
end
--**********************************
-- ȫ��ͨ��
--**********************************
function x892009_GlobalCountNews( sceneId, selfId, targetId,str )
	BeginEvent( sceneId )
        	AddGlobalCountNews( sceneId, str )
        EndEvent( sceneId )
        DispatchEventList( sceneId, selfId, targetId )
end
function x892009_ShowNotice( sceneId, selfId, targetId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
