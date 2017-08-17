--楼兰NPC
--马骁鸣
--普通

x001158_g_ScriptId	= 001158

--**********************************
--事件交互入口
--**********************************
function x001158_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "  Trong T鈟 V馽, B誧h L誧 朽 l� lo読 th� c咿i hi猰 c�. Tr呔c 疴y ch� c� qu� t痗 m緄 c� th� c咿i nh遪g lo読 th� c咿i sang tr鱪g n鄖. Nh遪g gi� 疴y l読 kh醕, ng叨i T鈟 v裞 n鄖 xem B誧h L誧 朽 l� lo読 th� c咿i t唼ng tr遪g cho s� t鄆 ph�....#r T読 h� 疴y hi畁 c� b醤: " )
		AddNumText( sceneId, x001158_g_ScriptId, "Mua v c咿i", 7, 1 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--事件列表选中一项
--**********************************
function x001158_OnEventRequest( sceneId, selfId, targetId )
	local	key	= GetNumText()
	if key == 1 then
		DispatchShopItem( sceneId, selfId, targetId, 185 )
	end
end

--**********************************
--对话框提示
--**********************************
function x001158_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
