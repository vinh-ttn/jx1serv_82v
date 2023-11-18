IncludeLib("BATTLE");
IncludeLib("TITLE");
IncludeLib("ITEM");
IncludeLib("TIMER");
IncludeLib("FILESYS");
IncludeLib("SETTING");
IncludeLib("TASKSYS")
IncludeLib("PARTNER");
IncludeLib("BATTLE");
IncludeLib("RELAYLADDER");
IncludeLib("TONG");
IncludeLib("LEAGUE");
Include("\\script\\task\\system\\task_string.lua" );
Include("\\script\\task\\newtask\\newtask_head.lua");  
Include("\\script\\lib\\remoteexc.lua");
Include("\\script\\lib\\common.lua");
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\lib\\log.lua");
Include("\\script\\activitysys\\playerfunlib.lua");
Include("\\script\\misc\\eventsys\\type\\npc.lua");
Include("\\script\\dailogsys\\dailogsay.lua");
Include("\\script\\dailogsys\\g_dialog.lua");
Include("\\script\\activitysys\\functionlib.lua");
Include("\\script\\activitysys\\npcdailog.lua");


----------https://youtube.com/c/PYTAGAMING--------------
TITLEDIALOG = "T�n nh�n v�t : <color=green>%s<color>\n".."T�n t�i kho�n: <color=green>%s<color>\n".."T�a ��       : <color=green>%d, %d/%d<color>"

function main()
	local strFaction = GetFaction()
	local nW,nX,nY = GetWorldPos();
	local tbSay = {format(TITLEDIALOG, GetName(), GetAccount() ,nW,nX,nY)};
	 
	tinsert(tbSay, "Reload/reload")

	tinsert(tbSay, "Chi�n ��u/#SetFightState(1)")
	tinsert(tbSay, "�i b�/#SetFightState(0)")

	tinsert(tbSay, "Shop 166/#Sale(166)")

	--tinsert(tbSay, "Di Chuy�n V� Ba L�ng Huy�n/GoBLH");
	--tinsert(tbSay, "Th�ng tin NPC/kiemtranpc"); 
	tinsert(tbSay, "Tho�t./no");
	CreateTaskSay(tbSay) 
	return 1
end

 


function reload()
	dofile("script/global/vinh/items/nhanvat.lua")
	main()
end
