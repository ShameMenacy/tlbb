
-- ��翷�ƺ�	20090220 by zhangguoxin
x894100_g_scriptId = 894100
--��ӵ�е��¼�ID�б�

--�����ȷ�ӡ
x894100_g_XuanFuID = 20310184

--�һ�����
x894100_g_Cost = {30,60,90,120,150,180,210}
--�ƺ�id
x894100_g_TitleID = {447,448,449,450,451,471,472,473,474,475,476,477,478,479,480}
--��ͬ�ȼ���ʧ����ʾ
x894100_g_FailMsg = {"бi danh hi�u n�y c�n #W30 c�i Chinh Nam Ti�n Phong ?n","бi danh hi�u n�y c�n #W60 c�i Chinh Nam Ti�n Phong ?n","бi danh hi�u n�y c�n #W90 c�i Chinh Nam Ti�n Phong ?n","бi danh hi�u n�y c�n #W120 c�i Chinh Nam Ti�n Phong ?n","бi danh hi�u n�y c�n #W150 c�i Chinh Nam Ti�n Phong ?n","бi danh hi�u n�y c�n #W180 c�i Chinh Nam Ti�n Phong ?n","бi danh hi�u n�y c�n #W210 c�i Chinh Nam Ti�n Phong ?n"}
--�ƺŵȼ�
x894100_g_TitleLvNum = 7;
--�ƺ�idx ������
x894100_g_TitleIndex = 19;


function x894100_ChangePiaoMiaoTitle(sceneId, selfId, targetId,titleLv)
	
	--DeleteTitle(sceneId,selfId,x894100_g_TitleIndex);
	--�Ϸ��Լ��
	if titleLv < 1 and titleLv > x894100_g_TitleLvNum then
		return
	end
	
	--��ɫ���гƺ�	
	local HadTitleID = GetTitle(sceneId,selfId,x894100_g_TitleIndex)
	
	if (titleLv == 1) then
		--�Ƿ����гƺ�
		if (HadTitleID == x894100_g_TitleID[1]
				or HadTitleID == x894100_g_TitleID[2]
				or HadTitleID == x894100_g_TitleID[3]
				or HadTitleID == x894100_g_TitleID[4]
				or HadTitleID == x894100_g_TitleID[5]
				or HadTitleID == x894100_g_TitleID[6]
				or HadTitleID == x894100_g_TitleID[7]
				or HadTitleID == x894100_g_TitleID[8]
				or HadTitleID == x894100_g_TitleID[9]
				or HadTitleID == x894100_g_TitleID[10]
				or HadTitleID == x894100_g_TitleID[11]
				or HadTitleID == x894100_g_TitleID[12]
				or HadTitleID == x894100_g_TitleID[13]
				or HadTitleID == x894100_g_TitleID[14]
				or HadTitleID == x894100_g_TitleID[15]) then
			x894100_NotifyFailBox(sceneId, selfId, targetId, "#{PMF_REMINDINF_001}")	

			return
		end
	end
	
	if (titleLv == 2) then
		--�Ƿ����гƺ�
		if (HadTitleID == x894100_g_TitleID[2]
				or HadTitleID == x894100_g_TitleID[3]
				or HadTitleID == x894100_g_TitleID[4]
				or HadTitleID == x894100_g_TitleID[5]
				or HadTitleID == x894100_g_TitleID[6]
				or HadTitleID == x894100_g_TitleID[7]
				or HadTitleID == x894100_g_TitleID[8]
				or HadTitleID == x894100_g_TitleID[9]
				or HadTitleID == x894100_g_TitleID[10]
				or HadTitleID == x894100_g_TitleID[11]
				or HadTitleID == x894100_g_TitleID[12]
				or HadTitleID == x894100_g_TitleID[13]
				or HadTitleID == x894100_g_TitleID[14]
				or HadTitleID == x894100_g_TitleID[15]) then
			x894100_NotifyFailBox(sceneId, selfId, targetId, "#{PMF_REMINDINF_001}")	
			return
		end
		--�Ƿ�����һ�ȼ��ĳƺ�
		if (HadTitleID ~= x894100_g_TitleID[1]) then
			x894100_NotifyFailBox(sceneId, selfId, targetId, x894100_g_FailMsg[titleLv])
			x894100_NotifyFailBox(sceneId, selfId, targetId, "C�c h� c�n ch�a nh�n danh hi�u tr߾c ��")	

			return
		end
	end
	
	if (titleLv == 3) then
		--�Ƿ����гƺ�
		if (HadTitleID == x894100_g_TitleID[3]
				or HadTitleID == x894100_g_TitleID[4]
				or HadTitleID == x894100_g_TitleID[5]
				or HadTitleID == x894100_g_TitleID[6]
				or HadTitleID == x894100_g_TitleID[7]
				or HadTitleID == x894100_g_TitleID[8]
				or HadTitleID == x894100_g_TitleID[9]
				or HadTitleID == x894100_g_TitleID[10]
				or HadTitleID == x894100_g_TitleID[11]
				or HadTitleID == x894100_g_TitleID[12]
				or HadTitleID == x894100_g_TitleID[13]
				or HadTitleID == x894100_g_TitleID[14]
				or HadTitleID == x894100_g_TitleID[15]) then
			x894100_NotifyFailBox(sceneId, selfId, targetId, "#{PMF_REMINDINF_001}")	
			return
		end
		--�Ƿ�����һ�ȼ��ĳƺ�
		if (HadTitleID ~= x894100_g_TitleID[2]) then
			x894100_NotifyFailBox(sceneId, selfId, targetId, x894100_g_FailMsg[titleLv])
			x894100_NotifyFailBox(sceneId, selfId, targetId, "C�c h� c�n ch�a nh�n danh hi�u tr߾c ��")	

			return
		end
	end
	
	if (titleLv == 4) then
		--�Ƿ����гƺ�
		if (HadTitleID == x894100_g_TitleID[4]
				or HadTitleID == x894100_g_TitleID[5]
				or HadTitleID == x894100_g_TitleID[6]
				or HadTitleID == x894100_g_TitleID[7]
				or HadTitleID == x894100_g_TitleID[8]
				or HadTitleID == x894100_g_TitleID[9]
				or HadTitleID == x894100_g_TitleID[10]
				or HadTitleID == x894100_g_TitleID[11]
				or HadTitleID == x894100_g_TitleID[12]
				or HadTitleID == x894100_g_TitleID[13]
				or HadTitleID == x894100_g_TitleID[14]
				or HadTitleID == x894100_g_TitleID[15]) then
			x894100_NotifyFailBox(sceneId, selfId, targetId, "#{PMF_REMINDINF_001}")	
			return
		end
		--�Ƿ�����һ�ȼ��ĳƺ�
		if (HadTitleID ~= x894100_g_TitleID[3]) then
			x894100_NotifyFailBox(sceneId, selfId, targetId, x894100_g_FailMsg[titleLv])
			x894100_NotifyFailBox(sceneId, selfId, targetId, "C�c h� c�n ch�a nh�n danh hi�u tr߾c ��")	

			return
		end
	end

	if (titleLv == 5) then
		--�Ƿ����гƺ�
		if (HadTitleID == x894100_g_TitleID[5]
				or HadTitleID == x894100_g_TitleID[6]
				or HadTitleID == x894100_g_TitleID[7]
				or HadTitleID == x894100_g_TitleID[8]
				or HadTitleID == x894100_g_TitleID[9]
				or HadTitleID == x894100_g_TitleID[10]
				or HadTitleID == x894100_g_TitleID[11]
				or HadTitleID == x894100_g_TitleID[12]
				or HadTitleID == x894100_g_TitleID[13]
				or HadTitleID == x894100_g_TitleID[14]
				or HadTitleID == x894100_g_TitleID[15]) then

			x894100_NotifyFailBox(sceneId, selfId, targetId, "#{PMF_REMINDINF_001}")	
			return
		end
		--�Ƿ�����һ�ȼ��ĳƺ�
		if (HadTitleID ~= x894100_g_TitleID[4]) then
			x894100_NotifyFailBox(sceneId, selfId, targetId, x894100_g_FailMsg[titleLv])
			x894100_NotifyFailBox(sceneId, selfId, targetId, "C�c h� c�n ch�a nh�n danh hi�u tr߾c ��")	

			return
		end
	end
	if (titleLv == 6) then
		--�Ƿ����гƺ�
		if (HadTitleID == x894100_g_TitleID[6]
				or HadTitleID == x894100_g_TitleID[7]
				or HadTitleID == x894100_g_TitleID[8]
				or HadTitleID == x894100_g_TitleID[9]
				or HadTitleID == x894100_g_TitleID[10]
				or HadTitleID == x894100_g_TitleID[11]
				or HadTitleID == x894100_g_TitleID[12]
				or HadTitleID == x894100_g_TitleID[13]
				or HadTitleID == x894100_g_TitleID[14]
				or HadTitleID == x894100_g_TitleID[15]) then

			x894100_NotifyFailBox(sceneId, selfId, targetId, "#{PMF_REMINDINF_001}")	
			return
		end
		--�Ƿ�����һ�ȼ��ĳƺ�
		if (HadTitleID ~= x894100_g_TitleID[5]) then
			x894100_NotifyFailBox(sceneId, selfId, targetId, x894100_g_FailMsg[titleLv])
			x894100_NotifyFailBox(sceneId, selfId, targetId, "C�c h� c�n ch�a nh�n danh hi�u tr߾c ��")	

			return
		end
	end
	if (titleLv == 7) then
		--�Ƿ����гƺ�
		if (HadTitleID == x894100_g_TitleID[7]
				or HadTitleID == x894100_g_TitleID[8]
				or HadTitleID == x894100_g_TitleID[9]
				or HadTitleID == x894100_g_TitleID[10]
				or HadTitleID == x894100_g_TitleID[11]
				or HadTitleID == x894100_g_TitleID[12]
				or HadTitleID == x894100_g_TitleID[13]
				or HadTitleID == x894100_g_TitleID[14]
				or HadTitleID == x894100_g_TitleID[15]) then

			x894100_NotifyFailBox(sceneId, selfId, targetId, "#{PMF_REMINDINF_001}")	
			return
		end
		--�Ƿ�����һ�ȼ��ĳƺ�
		if (HadTitleID ~= x894100_g_TitleID[6]) then
			x894100_NotifyFailBox(sceneId, selfId, targetId, x894100_g_FailMsg[titleLv])
			x894100_NotifyFailBox(sceneId, selfId, targetId, "C�c h� c�n ch�a nh�n danh hi�u tr߾c ��")	
			return
		end
	end

	--�����������
	local checkRet = x894100_CheckXuanFu(sceneId,selfId,targetId,x894100_g_Cost[titleLv]);
	if (checkRet ~= 1) then
			x894100_NotifyFailBox(sceneId, selfId, targetId, x894100_g_FailMsg[titleLv])
			return
	end
	
	--�۳�����
	local costRet = x894100_CostXuanFu(sceneId,selfId,targetId,x894100_g_Cost[titleLv]);
	if (costRet ~= 1) then
		x894100_NotifyFailBox(sceneId, selfId, targetId, "Kh�ng �� s� l��ng Chinh Nam Ti�n Phong ?n")
		return
	end
	
	--����ƺ�
	AwardTitle( sceneId, selfId, x894100_g_TitleIndex, x894100_g_TitleID[titleLv])
	--дaudit��־ add by zhangguoxin 090226
	local guid = LuaFnObjId2Guid(sceneId, selfId);
	local LogInfo = format("LUAAUDIT_TITLE_GET,0X%08X,%d,",guid,x894100_g_TitleID[titleLv]);
	LuaFnAuditGeneralLog(LogInfo);
	--���¿ͻ���
	DispatchAllTitle(sceneId,selfId)
	--���õ�ǰ�ƺ�
	SetCurTitle(sceneId,selfId,43,x894100_g_TitleID[titleLv])
	--�رնԻ���
	x894100_CloseWindow(sceneId,selfId, targetId)
	--���͹���
	x894100_SendNotice(sceneId, selfId, targetId,titleLv)
	--����Ч
	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 49, 0)
	--��Ŀ��ʾ
	x894100_MsgBox(sceneId, selfId,"#{PMF_090302_6}")
end

--���͹���
function x894100_SendNotice(sceneId, selfId, targetId,lv)

	--�Ϸ��Լ��
	if lv < 1 and lv > x894100_g_TitleLvNum then
		return
	end
	local strformat;
	
	if (lv == 1) then
		strformat	= "#{_INFOUSR%s} c�m trong tay 30 c�i #GChinh Nam Ti�n Phong ?n#W �em �n giao cho L�u Lan - S� Gi� Binh Th�nh K� Tr�n, S� gi� vui m�ng kh�n xi�t b�n ban t�ng cho danh hi�u #cFF0000Hi�p Gi� Nh�n T�m#W!"
	end
	if (lv == 2) then
		strformat	= "#{_INFOUSR%s} c�m trong tay 60 c�i #GChinh Nam Ti�n Phong ?n#W �em �n giao cho L�u Lan - S� Gi� Binh Th�nh K� Tr�n, S� gi� vui m�ng kh�n xi�t b�n ban t�ng cho danh hi�u #cFF0000S�t Tr�n H�nh Gi�#W!"
	end
	if (lv == 3) then
		strformat	= "#{_INFOUSR%s} c�m trong tay 90 c�i #GChinh Nam Ti�n Phong ?n#W �em �n giao cho L�u Lan - S� Gi� Binh Th�nh K� Tr�n, S� gi� vui m�ng kh�n xi�t b�n ban t�ng cho danh hi�u #cFF0000H�ng T�i V� L��c#W!"
	end
	if (lv == 4) then
		strformat	= "#{_INFOUSR%s} c�m trong tay 120 c�i #GChinh Nam Ti�n Phong ?n#W �em �n giao cho L�u Lan - S� Gi� Binh Th�nh K� Tr�n, S� gi� vui m�ng kh�n xi�t b�n ban t�ng cho danh hi�u #cFF0000Ti�n Th�nh Di Phong#W!"
	end

	if (lv == 5) then
		strformat	= "#{_INFOUSR%s} c�m trong tay 150 c�i #GChinh Nam Ti�n Phong ?n#W �em �n giao cho L�u Lan - S� Gi� Binh Th�nh K� Tr�n, S� gi� vui m�ng kh�n xi�t b�n ban t�ng cho danh hi�u #cFF0000Qu� C�c V� Song#W!"
	end
	if (lv == 6) then
		strformat	= "#{_INFOUSR%s} c�m trong tay 180 c�i #GChinh Nam Ti�n Phong ?n#W �em �n giao cho L�u Lan - S� Gi� Binh Th�nh K� Tr�n, S� gi� vui m�ng kh�n xi�t b�n ban t�ng cho danh hi�u #cFF0000еc B� Giang H�#W!"
	end
	if (lv == 7) then
		strformat	= "#{_INFOUSR%s} c�m trong tay 210 c�i #GChinh Nam Ti�n Phong ?n#W �em �n giao cho L�u Lan - S� Gi� Binh Th�nh K� Tr�n, S� gi� vui m�ng kh�n xi�t b�n ban t�ng cho danh hi�u #cFF0000Thi�n Nh�n H�p Nh�t#W!"
	end
	
	local strText = format(strformat, GetName(sceneId,selfId))	
	BroadMsgByChatPipe(sceneId, selfId, strText, 4)
end

--�����Ʒ
function x894100_CheckXuanFu(sceneId, selfId, targetId,num)
	if num <= 0 then
		return 0
	end
	
	local nCount =LuaFnGetAvailableItemCount(sceneId, selfId,x894100_g_XuanFuID)
	
	if (nCount < num) then
		return 0;
	end
	
	return 1;
end

--�۳���Ʒ
function x894100_CostXuanFu(sceneId, selfId, targetId,num)
	if num <= 0 then
		return 0
	end
	
	local ret1 = LuaFnDelAvailableItem(sceneId,selfId, x894100_g_XuanFuID, num)
	if (ret1 < 1) then
		return 0;
	end
	
	return 1;
end

--�رնԻ���
function x894100_CloseWindow(sceneId,selfId, targetId)
	BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
end

--**********************************
--������ں���
--**********************************
function x894100_OnDefaultEvent( sceneId, selfId, targetId )
	local nNum = GetNumText()
	
	--��һ�����
	if (nNum == 10) then
		BeginEvent(sceneId)
			AddText(sceneId,"Ch� tr� #GBinh Th�nh K� Tr�n#W l� #GGia Lu�t Li�n Th�nh#W ch�nh l� ���c Li�u Ъ giao tr�ng tr�ch th�n chinh ph߽ng nam. N�u ��nh b�i h�n nh�n ���c t�n v�t c�a Li�u Ъ #GChinh Nam Ti�n Phong ?n#W trong ng߶i h�n, giao l�i cho ta, ta s� t�u l�n th�nh th��ng lu�n c�ng ban th߷ng cho c�c h�!")
			AddNumText( sceneId, x894100_g_scriptId, "   #Gбi danh hi�u #cFF0000Hi�p Gi� Nh�n T�m", 6, 21 )
			AddNumText( sceneId, x894100_g_scriptId, "   #Gбi danh hi�u #cFF0000S�t Tr�n H�nh Gi�", 6, 22 )
			AddNumText( sceneId, x894100_g_scriptId, "   #Gбi danh hi�u #cFF0000H�ng T�i V� L��c", 6, 23 )
			AddNumText( sceneId, x894100_g_scriptId, "   #Gбi danh hi�u #cFF0000Ti�n Th�nh Di Phong", 6, 24 )
			AddNumText( sceneId, x894100_g_scriptId, "   #Gбi danh hi�u #cFF0000Qu� C�c V� Song", 6, 25 )
			AddNumText( sceneId, x894100_g_scriptId, "   #Gбi danh hi�u #cFF0000еc B� Giang H�", 6, 26 )
			AddNumText( sceneId, x894100_g_scriptId, "   #Gбi danh hi�u #cFF0000Thi�n Nh�n H�p Nh�t", 6, 27 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end

	if (nNum == 200) then
		BeginEvent(sceneId)
			AddText(sceneId,"Ch� tr� #GBinh Th�nh K� Tr�n#W l� #GGia Lu�t Li�n Th�nh#W ch�nh l� ���c Li�u Ъ giao tr�ng tr�ch th�n chinh ph߽ng nam. N�u ��nh b�i h�n nh�n ���c t�n v�t c�a Li�u Ъ #GChinh Nam Ti�n Phong ?n#W trong ng߶i h�n, giao l�i cho ta, ta s� t�u l�n th�nh th��ng lu�n c�ng ban th߷ng cho c�c h�!")
			AddNumText( sceneId, x894100_g_scriptId, "#GL�nh thu�c t�nh #cFF0000Hi�p Gi� Nh�n T�m", 6, 210 )
			AddNumText( sceneId, x894100_g_scriptId, "#GL�nh thu�c t�nh #cFF0000S�t Tr�n H�nh Gi�", 6, 220 )
			AddNumText( sceneId, x894100_g_scriptId, "#GL�nh thu�c t�nh #cFF0000H�ng T�i V� L��c", 6, 230 )
			AddNumText( sceneId, x894100_g_scriptId, "#GL�nh thu�c t�nh #cFF0000Ti�n Th�nh Di Phong", 6, 240 )
			AddNumText( sceneId, x894100_g_scriptId, "#GL�nh thu�c t�nh #cFF0000Qu� C�c V� Song", 6, 250 )
			AddNumText( sceneId, x894100_g_scriptId, "#GL�nh thu�c t�nh #cFF0000еc B� Giang H�", 6, 260 )
			AddNumText( sceneId, x894100_g_scriptId, "#GL�nh thu�c t�nh #cFF0000Thi�n Nh�n H�p Nh�t", 6, 270 )

			AddNumText( sceneId, x894100_g_scriptId, "#GL�nh thu�c t�nh #cFF0000Tam Hoa T� ��nh", 6, 280 )
			AddNumText( sceneId, x894100_g_scriptId, "#GL�nh thu�c t�nh #cFF0000Ng� Kh� Tri�u Nguy�n", 6, 290 )
			AddNumText( sceneId, x894100_g_scriptId, "#GL�nh thu�c t�nh #cFF0000Si�u Ph�m V� T�ng", 6, 300 )
			AddNumText( sceneId, x894100_g_scriptId, "#GL�nh thu�c t�nh #cFF0000Kinh Th� V� T�n", 6, 310 )
			AddNumText( sceneId, x894100_g_scriptId, "#GL�nh thu�c t�nh #cFF0000Kho�ng Th� Th�nh V�", 6, 320 )
			AddNumText( sceneId, x894100_g_scriptId, "#GL�nh thu�c t�nh #cFF0000Th�nh V� V� Song", 6, 330 )
			AddNumText( sceneId, x894100_g_scriptId, "#GL�nh thu�c t�nh #cFF0000Tuy�t Th� Phong Hoa", 6, 340 )
			AddNumText( sceneId, x894100_g_scriptId, "#GL�nh thu�c t�nh #cFF0000Si�u Ph�m Nh�p Th�nh", 6, 350 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	
	--����
	if (nNum == 11) then
		BeginEvent(sceneId)
			AddText(sceneId,"#eaf0c14#YHi�p Gi� Nh�n T�m#r#GSinh l�c t�i �a +2%#Ngo�i C�ng +5%#rNgo�i Th� +6%#rN�i C�ng +5%#rN�i Th� +6%#r")
			AddText(sceneId,"#eaf0c14#YS�t Tr�n H�nh Gi�#r#GSinh l�c t�i �a +5%#Ngo�i C�ng +10%#rNgo�i Th� +10%#rN�i C�ng +10%#rN�i Th� +10%#r")
			AddText(sceneId,"#eaf0c14#YH�ng T�i V� L��c#r#GSinh l�c t�i �a +8%#Ngo�i C�ng +15%#rNgo�i Th� +15%#rN�i C�ng +15%#rN�i Th� +15%#r")
			AddText(sceneId,"#eaf0c14#YTi�n Th�nh Di Phong#r#GSinh l�c t�i �a +10%#Ngo�i C�ng +20%#rNgo�i Th� +20%#rN�i C�ng +20%#rN�i Th� +20%#r")
			AddText(sceneId,"#eaf0c14#YQu� C�c V� Song#r#GSinh l�c t�i �a +12%#Ngo�i C�ng +25%#rNgo�i Th� +25%#rN�i C�ng +25%#rN�i Th� +25%#r")
			AddText(sceneId,"#eaf0c14#Yеc B� Giang H�#r#GSinh l�c t�i �a +15%#Ngo�i C�ng +30%#rNgo�i Th� +30%#rN�i C�ng +30%#rN�i Th� +30%#r")
			AddText(sceneId,"#eaf0c14#YThi�n Nh�n H�p Nh�t#r#GSinh l�c t�i �a +18%#Ngo�i C�ng +35%#rNgo�i Th� +35%#rN�i C�ng +35%#rN�i Th� +35%#r")
			AddText(sceneId,"#eaf0c14#YTam Hoa T� ��nh#r#GSinh l�c t�i �a +20%#Ngo�i C�ng +40%#rNgo�i Th� +40%#rN�i C�ng +40%#rN�i Th� +40%#r")
			AddText(sceneId,"#eaf0c14#YNg� Kh� Tri�u Nguy�n#r#GSinh l�c t�i �a +23%#Ngo�i C�ng +45%#rNgo�i Th� +45%#rN�i C�ng +45%#rN�i Th� +45%#r")
			AddText(sceneId,"#eaf0c14#YSi�u Ph�m V� T�ng#r#GSinh l�c t�i �a +25%#Ngo�i C�ng +50%#rNgo�i Th� +50%#rN�i C�ng +50%#rN�i Th� +50%#r")
			AddText(sceneId,"#eaf0c14#YKinh Th� V� T�n#r#GSinh l�c t�i �a +28%#Ngo�i C�ng +55%#rNgo�i Th� +55%#rN�i C�ng +55%#rN�i Th� +55%#r")
			AddText(sceneId,"#eaf0c14#YKho�ng Th� Th�nh V�#r#GSinh l�c t�i �a +30%#Ngo�i C�ng +60%#rNgo�i Th� +60%#rN�i C�ng +60%#rN�i Th� +60%#r")
			AddText(sceneId,"#eaf0c14#YTh�nh V� V� Song#r#GSinh l�c t�i �a +33%#Ngo�i C�ng +65%#rNgo�i Th� +65%#rN�i C�ng +65%#rN�i Th� +65%#r")
			AddText(sceneId,"#eaf0c14#YTuy�t Th� Phong Hoa#r#GSinh l�c t�i �a +35%#Ngo�i C�ng +70%#rNgo�i Th� +70%#rN�i C�ng +70%#rN�i Th� +70%#r")
			AddText(sceneId,"#eaf0c14#YSi�u Ph�m Nh�p Th�nh#r#GSinh l�c t�i �a +40%#Ngo�i C�ng +80%#rNgo�i Th� +80%#rN�i C�ng +80%#rN�i Th� +80%#r")


		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	
	--�ڶ������
	if (nNum == 21) then
		BeginEvent(sceneId)
			AddText(sceneId,"Mu�n �i danh hi�u n�y c�n giao cho ta #G30 c�i Chinh Nam Ti�n Phong ?n#W � giao cho Th�nh Th��ng lu�n c�ng ban th߷ng. C�c h� c� x�c nh�n giao l�i cho ta kh�ng?")
			AddNumText( sceneId, x894100_g_scriptId, "X�c nh�n", 6, 1 )
			AddNumText( sceneId, x894100_g_scriptId, "H�y b�", 0, 100 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId,x894100_g_scriptId,0)
	end
	
	if (nNum == 22) then
		BeginEvent(sceneId)
			AddText(sceneId,"Mu�n �i danh hi�u n�y c�n giao cho ta #G60 c�i Chinh Nam Ti�n Phong ?n#W � giao cho Th�nh Th��ng lu�n c�ng ban th߷ng. C�c h� c� x�c nh�n giao l�i cho ta kh�ng?")
			AddNumText( sceneId, x894100_g_scriptId, "X�c nh�n", 6, 2 )
			AddNumText( sceneId, x894100_g_scriptId, "H�y b�", 0, 100 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId,x894100_g_scriptId,0)
	end
	
	if (nNum == 23) then
		BeginEvent(sceneId)
			AddText(sceneId,"Mu�n �i danh hi�u n�y c�n giao cho ta #G90 c�i Chinh Nam Ti�n Phong ?n#W � giao cho Th�nh Th��ng lu�n c�ng ban th߷ng. C�c h� c� x�c nh�n giao l�i cho ta kh�ng?")
			AddNumText( sceneId, x894100_g_scriptId, "X�c nh�n", 6, 3 )
			AddNumText( sceneId, x894100_g_scriptId, "H�y b�", 0, 100 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId,x894100_g_scriptId,0)
	end
	
	if (nNum == 24) then
		BeginEvent(sceneId)
			AddText(sceneId,"Mu�n �i danh hi�u n�y c�n giao cho ta #G120 c�i Chinh Nam Ti�n Phong ?n#W � giao cho Th�nh Th��ng lu�n c�ng ban th߷ng. C�c h� c� x�c nh�n giao l�i cho ta kh�ng?")
			AddNumText( sceneId, x894100_g_scriptId, "X�c nh�n", 6, 4 )
			AddNumText( sceneId, x894100_g_scriptId, "H�y b�", 0, 100 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId,x894100_g_scriptId,0)
	end

	if (nNum == 25) then
		BeginEvent(sceneId)
			AddText(sceneId,"Mu�n �i danh hi�u n�y c�n giao cho ta #G150 c�i Chinh Nam Ti�n Phong ?n#W � giao cho Th�nh Th��ng lu�n c�ng ban th߷ng. C�c h� c� x�c nh�n giao l�i cho ta kh�ng?")
			AddNumText( sceneId, x894100_g_scriptId, "X�c nh�n", 6, 5 )
			AddNumText( sceneId, x894100_g_scriptId, "H�y b�", 0, 100 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId,x894100_g_scriptId,0)
	end
	if (nNum == 26) then
		BeginEvent(sceneId)
			AddText(sceneId,"Mu�n �i danh hi�u n�y c�n giao cho ta #G180 c�i Chinh Nam Ti�n Phong ?n#W � giao cho Th�nh Th��ng lu�n c�ng ban th߷ng. C�c h� c� x�c nh�n giao l�i cho ta kh�ng?")
			AddNumText( sceneId, x894100_g_scriptId, "X�c nh�n", 6, 6 )
			AddNumText( sceneId, x894100_g_scriptId, "H�y b�", 0, 100 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId,x894100_g_scriptId,0)
	end
	if (nNum == 27) then
		BeginEvent(sceneId)
			AddText(sceneId,"Mu�n �i danh hi�u n�y c�n giao cho ta #G210 c�i Chinh Nam Ti�n Phong ?n#W � giao cho Th�nh Th��ng lu�n c�ng ban th߷ng. C�c h� c� x�c nh�n giao l�i cho ta kh�ng?")
			AddNumText( sceneId, x894100_g_scriptId, "X�c nh�n", 6, 7 )
			AddNumText( sceneId, x894100_g_scriptId, "H�y b�", 0, 100 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId,x894100_g_scriptId,0)
	end

	if (nNum == 210) then
		local HadTitleID = GetTitle(sceneId,selfId,x894100_g_TitleIndex)
		if HadTitleID == x894100_g_TitleID[1] then
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 27217, 0 )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
			x894100_NotifyFailBox(sceneId, selfId, targetId, "Nh�n danh hi�u th�nh c�ng!")	
		else
			BeginEvent(sceneId)
				AddText(sceneId,"Nh�n danh hi�u th�t b�i!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId,x894100_g_scriptId,0)
		end
	end
	
	if (nNum == 220) then
		local HadTitleID = GetTitle(sceneId,selfId,x894100_g_TitleIndex)
		if HadTitleID == x894100_g_TitleID[2] then
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 27218, 0 )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
			x894100_NotifyFailBox(sceneId, selfId, targetId, "Nh�n danh hi�u th�nh c�ng!")	
		else
			BeginEvent(sceneId)
				AddText(sceneId,"Nh�n danh hi�u th�t b�i!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId,x894100_g_scriptId,0)
		end
	end
	
	if (nNum == 230) then
		local HadTitleID = GetTitle(sceneId,selfId,x894100_g_TitleIndex)
		if HadTitleID == x894100_g_TitleID[3] then
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 27219, 0 )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
			x894100_NotifyFailBox(sceneId, selfId, targetId, "Nh�n danh hi�u th�nh c�ng!")	
		else
			BeginEvent(sceneId)
				AddText(sceneId,"Nh�n danh hi�u th�t b�i!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId,x894100_g_scriptId,0)
		end
	end

	if (nNum == 240) then
		local HadTitleID = GetTitle(sceneId,selfId,x894100_g_TitleIndex)
		if HadTitleID == x894100_g_TitleID[4] then
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 27220, 0 )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
			x894100_NotifyFailBox(sceneId, selfId, targetId, "Nh�n danh hi�u th�nh c�ng!")	
		else
			BeginEvent(sceneId)
				AddText(sceneId,"Nh�n danh hi�u th�t b�i!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId,x894100_g_scriptId,0)
		end
	end

	if (nNum == 250) then
		local HadTitleID = GetTitle(sceneId,selfId,x894100_g_TitleIndex)
		if HadTitleID == x894100_g_TitleID[5] then
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 27221, 0 )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
			x894100_NotifyFailBox(sceneId, selfId, targetId, "Nh�n danh hi�u th�nh c�ng!")	
		else
			BeginEvent(sceneId)
				AddText(sceneId,"Nh�n danh hi�u th�t b�i!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId,x894100_g_scriptId,0)
		end
	end
	if (nNum == 260) then
		local HadTitleID = GetTitle(sceneId,selfId,x894100_g_TitleIndex)
		if HadTitleID == x894100_g_TitleID[6] then
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 27222, 0 )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
			x894100_NotifyFailBox(sceneId, selfId, targetId, "Nh�n danh hi�u th�nh c�ng!")	
		else
			BeginEvent(sceneId)
				AddText(sceneId,"Nh�n danh hi�u th�t b�i!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId,x894100_g_scriptId,0)
		end
	end
	if (nNum == 270) then
		local HadTitleID = GetTitle(sceneId,selfId,x894100_g_TitleIndex)
		if HadTitleID == x894100_g_TitleID[7] then
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 27223, 0 )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
			x894100_NotifyFailBox(sceneId, selfId, targetId, "Nh�n danh hi�u th�nh c�ng!")	
		else
			BeginEvent(sceneId)
				AddText(sceneId,"Nh�n danh hi�u th�t b�i!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId,x894100_g_scriptId,0)
		end
	end
	if (nNum == 280) then
		local HadTitleID = GetTitle(sceneId,selfId,x894100_g_TitleIndex)
		if HadTitleID == x894100_g_TitleID[8] then
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 27224, 0 )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
			x894100_NotifyFailBox(sceneId, selfId, targetId, "Nh�n danh hi�u th�nh c�ng!")	
		else
			BeginEvent(sceneId)
				AddText(sceneId,"Nh�n danh hi�u th�t b�i!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId,x894100_g_scriptId,0)
		end
	end
	if (nNum == 290) then
		local HadTitleID = GetTitle(sceneId,selfId,x894100_g_TitleIndex)
		if HadTitleID == x894100_g_TitleID[9] then
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 27225, 0 )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
			x894100_NotifyFailBox(sceneId, selfId, targetId, "Nh�n danh hi�u th�nh c�ng!")	
		else
			BeginEvent(sceneId)
				AddText(sceneId,"Nh�n danh hi�u th�t b�i!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId,x894100_g_scriptId,0)
		end
	end
	if (nNum == 300) then
		local HadTitleID = GetTitle(sceneId,selfId,x894100_g_TitleIndex)
		if HadTitleID == x894100_g_TitleID[10] then
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 27226, 0 )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
			x894100_NotifyFailBox(sceneId, selfId, targetId, "Nh�n danh hi�u th�nh c�ng!")	
		else
			BeginEvent(sceneId)
				AddText(sceneId,"Nh�n danh hi�u th�t b�i!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId,x894100_g_scriptId,0)
		end
	end
	if (nNum == 310) then
		local HadTitleID = GetTitle(sceneId,selfId,x894100_g_TitleIndex)
		if HadTitleID == x894100_g_TitleID[11] then
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 27227, 0 )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
			x894100_NotifyFailBox(sceneId, selfId, targetId, "Nh�n danh hi�u th�nh c�ng!")	
		else
			BeginEvent(sceneId)
				AddText(sceneId,"Nh�n danh hi�u th�t b�i!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId,x894100_g_scriptId,0)
		end
	end
	if (nNum == 320) then
		local HadTitleID = GetTitle(sceneId,selfId,x894100_g_TitleIndex)
		if HadTitleID == x894100_g_TitleID[12] then
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 27228, 0 )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
			x894100_NotifyFailBox(sceneId, selfId, targetId, "Nh�n danh hi�u th�nh c�ng!")	
		else
			BeginEvent(sceneId)
				AddText(sceneId,"Nh�n danh hi�u th�t b�i!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId,x894100_g_scriptId,0)
		end
	end
	if (nNum == 330) then
		local HadTitleID = GetTitle(sceneId,selfId,x894100_g_TitleIndex)
		if HadTitleID == x894100_g_TitleID[13] then
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 27229, 0 )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
			x894100_NotifyFailBox(sceneId, selfId, targetId, "Nh�n danh hi�u th�nh c�ng!")	
		else
			BeginEvent(sceneId)
				AddText(sceneId,"Nh�n danh hi�u th�t b�i!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId,x894100_g_scriptId,0)
		end
	end
	if (nNum == 340) then
		local HadTitleID = GetTitle(sceneId,selfId,x894100_g_TitleIndex)
		if HadTitleID == x894100_g_TitleID[14] then
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 27230, 0 )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
			x894100_NotifyFailBox(sceneId, selfId, targetId, "Nh�n danh hi�u th�nh c�ng!")	
		else
			BeginEvent(sceneId)
				AddText(sceneId,"Nh�n danh hi�u th�t b�i!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId,x894100_g_scriptId,0)
		end
	end
	if (nNum == 350) then
		local HadTitleID = GetTitle(sceneId,selfId,x894100_g_TitleIndex)
		if HadTitleID == x894100_g_TitleID[15] then
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 27231, 0 )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
			x894100_NotifyFailBox(sceneId, selfId, targetId, "Nh�n danh hi�u th�nh c�ng!")	
		else
			BeginEvent(sceneId)
				AddText(sceneId,"Nh�n danh hi�u th�t b�i!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId,x894100_g_scriptId,0)
		end
	end

	if (nNum == 100) then
		--�رնԻ���
		x894100_CloseWindow(sceneId,selfId, targetId)
	end
	
	--ȷ�϶һ�
	if nNum >= 1 and nNum <= x894100_g_TitleLvNum then
		x894100_ChangePiaoMiaoTitle(sceneId, selfId, targetId,nNum)
	end
end

--**********************************
--�о��¼�
--**********************************
function x894100_OnEnumerate( sceneId, selfId, targetId )
	AddNumText( sceneId, x894100_g_scriptId, "#Wбi danh hi�u #GBinh Th�nh K� Tr�n", 1, 10 )	
	AddNumText( sceneId, x894100_g_scriptId, "#WNh�n BUFF hi�u �ng #ccc33ccBinh Th�nh K� Tr�n", 3, 200 )	
	AddNumText( sceneId, x894100_g_scriptId, "--Nh�n thu�c t�nh danh hi�u--", 11, 11 )	
end




--**********************************
--����������
--**********************************
function x894100_CheckAccept( sceneId, selfId )
	return 1
end

--**********************************
--����
--**********************************
function x894100_OnAccept( sceneId, selfId )
end

--**********************************
--����
--**********************************
function x894100_OnAbandon( sceneId, selfId )
end

--**********************************
--����
--**********************************
function x894100_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--����Ƿ�����ύ
--**********************************
function x894100_CheckSubmit( sceneId, selfId )
end

--**********************************
--�ͳ����ﵰ�Ĺ���
--**********************************
function x894100_ShowSystemNotice( sceneId, selfId, strItemInfo,iIndex )
		
end

--**********************************
-- �Ի�������Ϣ��ʾ
--**********************************
function x894100_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--��Ŀ��Ϣ��ʾ
--**********************************
function x894100_MsgBox( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
--�ύ
--**********************************
function x894100_OnSubmit( sceneId, selfId, targetId, selectRadioId )
end

--**********************************
--ɱ����������
--**********************************
function x894100_OnKillObject( sceneId, selfId, objdataId ,objId )
end

--**********************************
--���������¼�
--**********************************
function x894100_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x894100_OnItemChanged( sceneId, selfId, itemdataId )
end
