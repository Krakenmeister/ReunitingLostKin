-------------------------------------------------------------------------------------------------
------------------------------------------- KEY INFO --------------------------------------------
-------------------------------------------------------------------------------------------------
-- ReunitingLostKins
-- mission_ragnarite_hold
-- Defender
-------------------------------------------------------------------------------------------------
------------------------------------------- PRELOADS --------------------------------------------
-------------------------------------------------------------------------------------------------
load_script_libraries();

bm = battle_manager:new(empire_battle:new());
local gc = generated_cutscene:new(true);

--generated_cutscene:add_element(sfx_name, subtitle, camera, min_length, wait_for_vo, wait_for_camera, loop_camera)
gc:add_element(nil, "nil", "qb_final_position", 6000, false, true, false);

gb = generated_battle:new(
	true,                                     			-- screen starts black
	false,                                     			-- prevent deployment for player
	false,                                    			-- prevent deployment for ai
	function() gb:start_generated_cutscene(gc) end, 	-- intro cutscene function
	false                                      			-- debug mode
);

gb:set_cutscene_during_deployment(true);

-------------------------------------------------------------------------------------------------
---------------------------------------- INTRO VO & SUBS ----------------------------------------
-------------------------------------------------------------------------------------------------



-------------------------------------------------------------------------------------------------
------------------------------------------ ARMY SETUP -------------------------------------------
-------------------------------------------------------------------------------------------------

------------------------------------------PLAYER---------------------------------------------------
ga_player = gb:get_army(gb:get_player_alliance_num(), 1, ""); -- defender


------------------------------------------ALLY---------------------------------------------------
-----------------------------------------DEPLOYED--#0---------------------------------------------
ga_battle_ragnarite_hold_character_name_ally = gb:get_army(gb:get_player_alliance_num(),"battle_ragnarite_hold_character_name_ally"); -- Caster Char 
ga_battle_ragnarite_hold_character_name_dummy = gb:get_army(gb:get_non_player_alliance_num(),"battle_ragnarite_hold_character_name_dummy"); -- Dummy char 
-------------------------------------------------------------------------------------------------
----------------------------------------- ARMY TELEPORT -----------------------------------------
-------------------------------------------------------------------------------------------------
ga_battle_ragnarite_hold_character_name_ally:teleport_to_start_location_offset_on_message("battle_started",0,0);-- tp to current location, for semi locked
--ga_battle_ragnarite_hold_character_name_ally:defend_on_message("battle_started", 154.4, 438.4, 1); -- x/y radius

ga_battle_ragnarite_hold_character_name_dummy:teleport_to_start_location_offset_on_message("battle_started",0,0);-- tp to current location, for semi locked
--ga_battle_ragnarite_hold_character_name_dummy:defend_on_message("battle_started", 157.4, 311.6, 1); -- x/y radius

-------------------------------------------------------------------------------------------------
------------------------------------------- CUTSCENE --------------------------------------------
-------------------------------------------------------------------------------------------------



-------------------------------------------------------------------------------------------------
------------------------------------------ ORDERS -------------------------------------------
-------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------
------------------------------------------- OBJECTIVES ------------------------------------------
-------------------------------------------------------------------------------------------------


-------------------------------------------------------------------------------------------------
--------------------------------------------- HINTS/MESSAGES ---------------------------------------------
-------------------------------------------------------------------------------------------------

