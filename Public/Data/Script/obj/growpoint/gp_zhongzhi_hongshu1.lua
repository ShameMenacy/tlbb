--生长 餴琺脚本,红薯幼苗
--脚本号
--g_ScriptId = 711012

--此生长 餴琺编号
x711012_g_GpId = 513

--下m祎 c醝生长 餴琺to� 鸬 编号
x711012_g_GpIdNext = 514

function	 x711012_OnRecycle(sceneId,selfId,targetId)
	itemBoxX = GetItemBoxWorldPosX(sceneId,targetId)
	itemBoxZ = GetItemBoxWorldPosZ(sceneId,targetId)
	ItemBoxId = ItemBoxEnterScene(itemBoxX,itemBoxZ,x711012_g_GpIdNext,sceneId,QUALITY_MUST_BE_CHANGE,0)
	-- 餴琺到生长 餴琺to� 鸬 主人GUID
	ItemBoxOwnerGUID = GetItemBoxOwner(sceneId, targetId)		--参数喧ngSceneID,ItemBoxID
	--给ItemBox设定主人
	SetItemBoxOwner(sceneId,ItemBoxId,ItemBoxOwnerGUID)

	SetItemBoxMaxGrowTime(sceneId,ItemBoxId,450000)	--设定回收时间
	return 1
end
