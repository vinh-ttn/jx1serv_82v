
Include("\\script\\global\\vinh\\simcity\\main.lua")



function add_npc_vinh()


	-- SimCity: them Trieu Man o 7 thanh
	add_simcity_npc()
	

	-- KeoXe: them VoKy o TuongDuong
	add_dialognpc({ 
		{103,78,1608,3235,"\\script\\global\\vinh\\simcity\\controllers\\keoxe.lua","V� K�"}, 
	})

	-- Ban ngua
	local startX = 1557
	local startY = 3184
	add_dialognpc({ 
		{233,78,startX+2,startY+2,"\\script\\global\\vinh\\npc\\banngua\\caocap.lua","B�n ng�a cao c�p"},  --189
		{233,78,startX+4,startY+4,"\\script\\global\\vinh\\npc\\banngua\\hobao.lua","B�n h� b�o"},  -- 190
		{233,78,startX+6,startY+6,"\\script\\global\\vinh\\npc\\banngua\\hoangkim.lua","B�n ng�a Ho�ng Kim"}, --191
		{233,78,startX+8,startY+8,"\\script\\global\\vinh\\npc\\banngua\\kiemthe.lua","B�n ng�a Ki�m Th�"},  -- 193
	})

	


end
