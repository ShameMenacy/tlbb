--辽西NPC
--剑定
--7～10级鉴定商

x021008_g_scriptId = 021008
x021008_g_shoptableindex = 141

--**********************************
--事件交互入口
--**********************************
function x021008_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "Ta t� nh trong l頽h v馽 gi醡 鸶nh c鹡g c� ch鷗 b鋘 l鉵h, c� th� gi鷓 g� cho c醕 h� ch錸g?" )
		AddNumText( sceneId, x021008_g_scriptId, "Mua Ph� gi醡 鸶nh", 7, 0 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--事件列表选中一项
--**********************************
function x021008_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 0 then
		DispatchShopItem( sceneId, selfId, targetId, x021008_g_shoptableindex )
	end
end
