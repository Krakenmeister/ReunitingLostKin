cm:add_first_tick_callback_new(function()
	local r = cm:get_region("wh_main_gianthome_mountains_khazid_bordkarag")
	if r and not r:is_null_interface() then
		cm:change_custom_settlement_name(r:settlement(), "Kraka Ravnsvake")
	end

	cm:treasury_mod(cm:get_local_faction_name(true), -999999)
	cm:treasury_mod(cm:get_local_faction_name(true), 200)

	cm:callback(function()
		local char = cm:get_faction(cm:get_local_faction_name(true)):faction_leader()
		cm:convert_force_to_type(char:military_force(), "HORDE")
	end, 7)
end)
