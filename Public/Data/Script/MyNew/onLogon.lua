--Script Logon by S�i �z
x380002_g_scriptId = 380002

--********************************--
--*        On Default Event      *--
--********************************--
function x380002_OnDefaultEvent(sceneId,selfId)
local nam = LuaFnGetName(sceneId,selfId)
local Sex = GetSex(sceneId,selfId)

	if Sex == 0 then
		Sex = " n� hi�p "
	else 
		Sex = " thi�u hi�p "
	end
	
	BeginEvent(sceneId)  
		AddText(sceneId,"#77")
		AddText(sceneId,"Ch�o m�ng #cFF0000"..nam.."#W"..Sex.."�n v�i th� gi�i #GThi�n Long B�t B� 3#W.")						
		AddText(sceneId,"Phi�n b�n #GThi�n Long B�t B� 3#W edit b�i #GM�n Nguy�n#W - #cFF0000Makute7413#W.")						
		AddText(sceneId,"C� r�t nhi�u ch�c n�ng th� v� �ang ch� ��i"..Sex.."kh�m ph�, c�n ch� g� n�a?")						
		AddText(sceneId,"Ch�c"..Sex.."ch�i game vui v�!")						
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,-1)
	
end
