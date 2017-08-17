--��Ϸ�ݵ� --byҹӥ 

--�ű���
x100021_g_scriptId = 100021

x100021_g_LootItem_1 = {
39910004,39910003,39910002,39910001,20310103,20310102,20310101,20310100,20310118,30505817,
20500006,20500007,20500008,20501006,20501007,20501008,20502006,20502007,20502008,
20500006,20500007,20500008,20501006,20501007,20501008,20502006,20502007,20502008,
50701001,50501002,50502005,50502006,50502007,50502008,50503001,50504002,
50501001,50501002,50502005,50502006,50502007,50502008,50503001,50504002,
50501001,50501002,50502005,50502006,50502007,50502008,50503001,50504002,
50401001,50401002,50402005,50402006,50402007,50402008,50403001,50404002,
50411001,50411002,50412005,50412006,50412007,50412008,50413001,50413002,
50401001,50401002,50402005,50402006,50402007,50402008,50403001,50404002,
50401001,50401002,50402005,50402006,50402007,50402008,50403001,50404002,
39910011,39910012,39910017,39910018,39910019,39910020,39910021,39910022,39910023,39910024,39910025,
39910011,39910012,39910017,39910018,39910019,39910020,39910021,39910022,39910023,39910024,39910025,
20310180,20310181,20310182,20310183,30509014,30900016,39910034,39910035,
20310180,20310181,20310182,20310183,30509014,30900016,39910034,39910035,
20310180,20310181,20310182,20310183,30509014,30900016,39910034,39910035,
}
--**********************************
-- OnTime
--**********************************
function x100021_OnSceneTimer(sceneId)

	--��������Ч����ҵ��б�....
	local PlayerList = {}

	--����Ч���˼����б�....
	local numPlayer = 0
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0, nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		if LuaFnIsObjValid(sceneId, nHumanId) == 1 and LuaFnIsCanDoScriptLogic(sceneId, nHumanId) == 1 and LuaFnIsCharacterLiving(sceneId, nHumanId) == 1 then
			PlayerList[numPlayer+1] = nHumanId
			numPlayer = numPlayer + 1
		end
	end

	--�����ѡһ�����....
       local nQuarter = mod(GetQuarterTime(),100);
        if nQuarter < 52 or nQuarter >= 56  then
              CallScriptFunction( x100021_g_scriptId, "TipAllHuman", sceneId, "���ڲ��ǻʱ��(13:00-14:00)���޽�����ƷŶ!" )
              return 0
        end
	if numPlayer <= 9 then
	       CallScriptFunction( x100021_g_scriptId, "TipAllHuman", sceneId, "�콵����ʧ�ܣ�ͨ����������ͼ��������������10�˲��ܻ�ȡ��������鿴��ͼ����!" )
		return 0
	end

	local PlayerId = PlayerList[ random(numPlayer) ]

	local nItemId
	nItemId = x100021_g_LootItem_1[random( getn(x100021_g_LootItem_1) )]
	local bagpos01 = TryRecieveItem( sceneId, PlayerId, nItemId, QUALITY_MUST_BE_CHANGE )	-- �Ų��¾�û����
	local itemInfo1 = GetBagItemTransfer( sceneId, PlayerId, bagpos01 )
	LuaFnItemBind( sceneId, PlayerId, bagpos01 )
	local strText = format("#gffff00�ش�ϲѶ�������»��ͨ�����������ݣ���β�������#gff00f0#{_INFOUSR%s}#gffff00���ϣ������һ��#gff00f0#{_INFOMSG%s}��#gffff00ֻҪ��ͨ���������������л����ô�������Ŷ��", GetName(sceneId,PlayerId), itemInfo1)										
	BroadMsgByChatPipe(sceneId, PlayerId, strText, 4)

	rand = random(1000)
	if rand < 100 then
		local bagpos02 = TryRecieveItem( sceneId, PlayerId, 20310118, QUALITY_MUST_BE_CHANGE )	-- �Ų��¾�û����
		local itemInfo2 = GetBagItemTransfer( sceneId, PlayerId, bagpos02 )
		LuaFnItemBind( sceneId, PlayerId, bagpos02 )
		local strText = format("#gffff00�ش�ϲѶ�������»��ͨ�����������ݣ���β�������#gff00f0#{_INFOUSR%s}#gffff00���ϣ������һ��#gff00f0#{_INFOMSG%s}��#gffff00ֻҪ��ͨ���������������л����ô�������Ŷ��", GetName(sceneId,PlayerId), itemInfo2)										
		BroadMsgByChatPipe(sceneId, PlayerId, strText, 4)
	end

	rand = random(1000)
	if rand < 5 then
		local bagpos03 = TryRecieveItem( sceneId, PlayerId, 30505817, QUALITY_MUST_BE_CHANGE )	-- �Ų��¾�û����
		local itemInfo3 = GetBagItemTransfer( sceneId, PlayerId, bagpos03 )
		LuaFnItemBind( sceneId, PlayerId, bagpos03 )
		local strText = format("#gffff00�ش�ϲѶ�������»��ͨ�����������ݣ���β�������#gff00f0#{_INFOUSR%s}#gffff00���ϣ������һ��#gff00f0#{_INFOMSG%s}��#gffff00ֻҪ��ͨ���������������л����ô�������Ŷ��", GetName(sceneId,PlayerId), itemInfo3)										
		BroadMsgByChatPipe(sceneId, PlayerId, strText, 4)
	end

end

--**********************************
--��Ϣ��ʾ
--**********************************
function x100021_MsgBox( sceneId, selfId, str )	
	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
--��ʾ���и��������....
--**********************************
function x100021_TipAllHuman( sceneId, Str )

	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0, nHumanNum-1  do
		local PlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		if LuaFnIsObjValid( sceneId, PlayerId ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, PlayerId ) == 1 then
			BeginEvent(sceneId)
				AddText(sceneId, Str)
			EndEvent(sceneId)
			DispatchMissionTips(sceneId, PlayerId)
		end
	end

end
