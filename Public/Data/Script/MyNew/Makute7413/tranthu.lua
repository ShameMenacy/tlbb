x002200_g_scriptId = 002200

function x002200_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent(sceneId)
		AddText(sceneId, "Ta ���c tri�u g�i v� ��y � gi�p c�c ng߽i thu�n ph�c v� nu�i d��ng tr�n th�, h�y cho ta bi�t y�u c�u c�a ng߽i?")		
		AddNumText(sceneId, x002200_g_scriptId,"Luy�n k� n�ng tr�n th�", 6, 1)
		AddNumText(sceneId, x002200_g_scriptId,"Tr�n th� ho�n �ng", 6, 2)
		AddNumText(sceneId, x002200_g_scriptId,"Ki�m tra m�c t�ng tr߷ng", 6, 3)
		AddNumText(sceneId, x002200_g_scriptId,"Tr�n th� sinh s�n", 6, 4)
		AddNumText(sceneId, x002200_g_scriptId,"Nh�n tr�n th� v�a sinh s�n", 6, 5)
		AddNumText(sceneId, x002200_g_scriptId,"D�ng c�n c�t �an n�ng cao ng� t�nh tr�n th�", 6, 6)
		AddNumText(sceneId, x002200_g_scriptId,"Thay �i t�nh c�ch tr�n th�", 6, 7)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,-1)
end

function x002200_OnEventRequest( sceneId, selfId, targetId, eventId )
	local key = GetNumText()
	if key <= 2 then
		CallScriptFunction( 311111, "OnEnumerate", sceneId, selfId, targetId, key )
	end
	if key == 3 then
		CallScriptFunction( 001050, "OnConfirm", sceneId, selfId, targetId )
	end
	if key == 4 then
		CallScriptFunction( 800101, "OnDefaultEvent", sceneId, selfId, targetId )
	end
	if key == 5 then
		CallScriptFunction( 800102, "OnDefaultEvent", sceneId, selfId, targetId )
	end
	if key == 6 then
		CallScriptFunction( 800106, "OnDefaultEvent", sceneId, selfId, targetId )
	end
	if key == 7 then
		CallScriptFunction( 800108, "OnDefaultEvent", sceneId, selfId, targetId )
	end
end



