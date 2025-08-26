.nds
.thumb

.include "armips/include/scriptmacros.s"
.include "armips/include/flags.s"
.include "armips/include/soundeffects.s"
.include "armips/include/vars.s"

.include "asm/include/items.inc"
.include "asm/include/moves.inc"
.include "asm/include/movements.inc"
.include "asm/include/species.inc"
.include "asm/include/std_scripts.inc"

.include "armips/scr_seq/event_T01R0301.inc"


// text archive to grab from: 451.txt

.create "build/a012/2_740", 0


scrdef scr_seq_T01R0301_000
scrdef scr_seq_T01R0301_001
scrdef scr_seq_T01R0301_002
scrdef scr_seq_T01R0301_003
scrdef scr_seq_T01R0301_004
scrdef scr_seq_T01R0301_005
scrdef scr_seq_T01R0301_006
scrdef scr_seq_T01R0301_007
scrdef scr_seq_T01R0301_008
scrdef scr_seq_T01R0301_009
scrdef scr_seq_T01R0301_010
scrdef_end

scr_seq_T01R0301_010:
	compare VAR_UNK_4131, 3
	goto_if_eq _0057
	compare VAR_UNK_4131, 4
	goto_if_eq _0057
	compare VAR_UNK_4131, 5
	goto_if_eq _0057
	end

_0057:
	setflag FLAG_HIDE_OAKS_LAB_BULBASAUR_BALL
	setflag FLAG_HIDE_OAKS_LAB_SQUIRTLE_BALL
	setflag FLAG_HIDE_OAKS_LAB_CHARMANDER_BALL
	setvar VAR_UNK_4131, 6
	end

scr_seq_T01R0301_006:
	scrcmd_609
	lockall
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _00C8
	wait_movement
	buffer_players_name 0
	gender_msgbox 39, 40
	closemsg
	apply_movement obj_T01R0301_ookido, _00E0
	wait_movement
	npc_msg 41
	closemsg
	apply_movement obj_T01R0301_ookido, _00F4
	apply_movement obj_player, _00D0
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 42
	wait_button_or_walk_away
	closemsg
	setvar VAR_UNK_4131, 2
	releaseall
	end

	.align 4
_00C8:

	step 12, 5
	step_end
	.align 4
_00D0:

	step 63, 2
	step 12, 3
	step 14, 2
	step_end
	.align 4
_00E0:

	step 0, 1
	step 63, 4
	step 1, 1
	step 63, 3
	step_end
	.align 4
_00F4:

	step 12, 1
	step 14, 3
	step 3, 1
	step_end
scr_seq_T01R0301_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_UNK_4096, 2
	goto_if_eq _0282
	compare VAR_UNK_4131, 3
	goto_if_eq _0277
	compare VAR_UNK_4131, 4
	goto_if_eq _0277
	compare VAR_UNK_4131, 5
	goto_if_eq _0277
	compare VAR_UNK_4131, 2
	goto_if_eq _026C
	compare VAR_SCENE_EMBEDDED_TOWER, 7
	goto_if_eq _04B1
	compare VAR_SCENE_EMBEDDED_TOWER, 5
	goto_if_eq _04A6
	compare VAR_SCENE_EMBEDDED_TOWER, 4
	goto_if_eq _02CB
	goto_if_set FLAG_GOT_HM08, _01B2
	goto_if_set FLAG_UNK_12A, _0195
	buffer_players_name 0
	gender_msgbox 0, 1
	setflag FLAG_UNK_12A
_0195:
	compare VAR_UNK_4135, 0
	goto_if_ne _01AB
	npc_msg 8
	goto _01B2

_01AB:
	buffer_players_name 0
	gender_msgbox 9, 10
_01B2:
	goto_if_set FLAG_UNK_988, _01F2
	callstd std_in_person_evaluate_dex
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _01EC
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _01EC
	check_national_dex_complete VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _01F0
_01EC:
	releaseall
	end

_01F0:
	wait_button
_01F2:
	setflag FLAG_UNK_988
	buffer_players_name 0
	gender_msgbox 4, 5
	npc_msg 28
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0256
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0261
	npc_msg 29
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 90
	faceplayer
	lockall
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	npc_msg 30
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0256:
	npc_msg 31
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0261:
	npc_msg 32
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_026C:
	npc_msg 42
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0277:
	npc_msg 53
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0282:
	goto_if_set FLAG_GOT_HM08, _02C0
	npc_msg 55
	giveitem_no_check ITEM_INFINITY_POUCH, 1
	npc_msg 56
	buffer_players_name 0
	gender_msgbox 6, 7
	setvar VAR_UNK_4110, 2
	setflag FLAG_UNLOCKED_MT_SILVER
	wait_button_or_walk_away
	closemsg
	setflag FLAG_GOT_HM08
	releaseall
	end

_02C0:
	npc_msg 57
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_02CB:
	scrcmd_836 VAR_SPECIAL_x8005
	compare VAR_SPECIAL_x8005, 1
	goto_if_eq _040D
	goto_if_set FLAG_UNK_0BC, _03DE
	buffer_players_name 0
	gender_msgbox 11, 12
	closemsg
	apply_movement obj_T01R0301_ookido, _04D4
	wait_movement
	setflag FLAG_UNK_0BC
	npc_msg 13
	closemsg
	get_player_facing VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 0
	goto_if_ne _0320
	goto _035A

_0320:
	compare VAR_TEMP_x4001, 3
	goto_if_ne _0339
	goto _037B

_0339:
	compare VAR_TEMP_x4001, 2
	goto_if_ne _0352
	goto _039C

_0352:
	goto _03BD

_035A:
	apply_movement obj_T01R0301_ookido, _0500
	wait_movement
	npc_msg 14
	closemsg
	apply_movement obj_T01R0301_ookido, _0500
	wait_movement
	goto _03DE

_037B:
	apply_movement obj_T01R0301_ookido, _052C
	wait_movement
	npc_msg 14
	closemsg
	apply_movement obj_T01R0301_ookido, _052C
	wait_movement
	goto _03DE

_039C:
	apply_movement obj_T01R0301_ookido, _0558
	wait_movement
	npc_msg 14
	closemsg
	apply_movement obj_T01R0301_ookido, _0558
	wait_movement
	goto _03DE

_03BD:
	apply_movement obj_T01R0301_ookido, _0584
	wait_movement
	npc_msg 14
	closemsg
	apply_movement obj_T01R0301_ookido, _0584
	wait_movement
	goto _03DE

_03DE:
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 8
	goto_if_eq _03FE
	buffer_players_name 0
	gender_msgbox 15, 16
	closemsg
	goto _01B2

_03FE:
	buffer_players_name 0
	gender_msgbox 17, 18
	closemsg
	goto _01B2

_040D:
	goto_if_unset FLAG_UNK_0BC, _04C2
	buffer_players_name 0
	gender_msgbox 19, 20
	closemsg
_0421:
	get_player_facing VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 0
	goto_if_ne _0440
	apply_movement obj_T01R0301_ookido, _0500
	goto _047E

_0440:
	compare VAR_TEMP_x4001, 3
	goto_if_ne _045B
	apply_movement obj_T01R0301_ookido, _052C
	goto _047E

_045B:
	compare VAR_TEMP_x4001, 2
	goto_if_ne _0476
	apply_movement obj_T01R0301_ookido, _0558
	goto _047E

_0476:
	apply_movement obj_T01R0301_ookido, _0584
_047E:
	wait_movement
	buffer_players_name 0
	giveitem_no_check ITEM_JADE_ORB, 1
	closemsg
	npc_msg 21
	closemsg
	setvar VAR_SCENE_EMBEDDED_TOWER, 5
	goto _01B2

_04A6:
	npc_msg 22
	closemsg
	goto _01B2

_04B1:
	npc_msg 23
	closemsg
	setvar VAR_SCENE_EMBEDDED_TOWER, 8
	goto _01B2

_04C2:
	buffer_players_name 0
	gender_msgbox 24, 25
	closemsg
	goto _0421

	.align 4
_04D4:

	step 75, 1
	step 63, 1
	step_end
	.align 4
_0500:

	step 33, 1
	step 63, 1
	step_end
	.align 4
_052C:

	step 34, 1
	step 63, 1
	step_end
	.align 4
_0558:

	step 35, 1
	step 63, 1
	step_end
	.align 4
_0584:

	step 32, 1
	step 63, 1
	step_end
scr_seq_T01R0301_001:
	simple_npc_msg 33
	end

scr_seq_T01R0301_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	buffer_players_name 0
	npc_msg 34
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T01R0301_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	buffer_players_name 0
	npc_msg 35
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T01R0301_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 36
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T01R0301_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	buffer_players_name 0
	gender_msgbox 37, 38
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T01R0301_007:
	compare VAR_UNK_4131, 6
	goto_if_eq _0979
	compare VAR_UNK_4131, 0
	goto_if_eq _097B
	compare VAR_UNK_4131, 3
	goto_if_eq _097B
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_UNK_4131, 4
	goto_if_eq _097D
	compare VAR_UNK_4131, 5
	goto_if_eq _097D
	get_person_coords 0, VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 8
	goto_if_ne _0663
	apply_movement obj_T01R0301_ookido, _09C4
	goto _066B

_0663:
	apply_movement obj_T01R0301_ookido, _09BC
_066B:
	wait_movement
	scrcmd_452 SPECIES_BULBASAUR, 0
	play_cry SPECIES_BULBASAUR, 0
	npc_msg 45
	wait_cry
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _096C
	setvar VAR_SPECIAL_x8004, 1
	setvar VAR_SPECIAL_x8006, 3
	call _0801
	end

scr_seq_T01R0301_008:
	compare VAR_UNK_4131, 6
	goto_if_eq _0979
	compare VAR_UNK_4131, 0
	goto_if_eq _097B
	compare VAR_UNK_4131, 4
	goto_if_eq _097B
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_UNK_4131, 3
	goto_if_eq _097D
	compare VAR_UNK_4131, 5
	goto_if_eq _097D
	get_person_coords 0, VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 8
	goto_if_ne _0711
	apply_movement obj_T01R0301_ookido, _09C4
	goto _0719

_0711:
	apply_movement obj_T01R0301_ookido, _09BC
_0719:
	wait_movement
	scrcmd_452 SPECIES_SQUIRTLE, 0
	play_cry SPECIES_SQUIRTLE, 0
	npc_msg 44
	wait_cry
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _096C
	setvar VAR_SPECIAL_x8004, 7
	setvar VAR_SPECIAL_x8006, 4
	call _0801
	end

scr_seq_T01R0301_009:
	compare VAR_UNK_4131, 6
	goto_if_eq _0979
	compare VAR_UNK_4131, 0
	goto_if_eq _097B
	compare VAR_UNK_4131, 5
	goto_if_eq _097B
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_UNK_4131, 3
	goto_if_eq _097D
	compare VAR_UNK_4131, 4
	goto_if_eq _097D
	get_person_coords 0, VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 8
	goto_if_ne _07BF
	apply_movement obj_T01R0301_ookido, _09C4
	goto _07C7

_07BF:
	apply_movement obj_T01R0301_ookido, _09BC
_07C7:
	wait_movement
	scrcmd_452 SPECIES_CHARMANDER, 0
	play_cry SPECIES_CHARMANDER, 0
	npc_msg 43
	wait_cry
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _096C
	setvar VAR_SPECIAL_x8004, 4
	setvar VAR_SPECIAL_x8006, 5
	call _0801
	end

_0801:
	scrcmd_453
	get_party_count VAR_SPECIAL_x8005
	compare VAR_SPECIAL_x8005, 6
	goto_if_eq _098B
	compare VAR_SPECIAL_x8004, 1
	goto_if_ne _082F
	hide_person obj_T01R0301_monstarball_3
	setflag FLAG_HIDE_OAKS_LAB_BULBASAUR_BALL
	goto _0852

_082F:
	compare VAR_SPECIAL_x8004, 7
	goto_if_ne _084A
	hide_person obj_T01R0301_monstarball_2
	setflag FLAG_HIDE_OAKS_LAB_SQUIRTLE_BALL
	goto _0852

_084A:
	hide_person obj_T01R0301_monstarball
	setflag FLAG_HIDE_OAKS_LAB_CHARMANDER_BALL
_0852:
	buffer_players_name 0
	buffer_species_name 1, VAR_SPECIAL_x8004, 0, 0
	npc_msg 46
	npc_msg 48
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	give_mon VAR_SPECIAL_x8004, 5, 0, 0, 0, VAR_SPECIAL_RESULT
	buffer_species_name 1, VAR_SPECIAL_x8004, 0, 0
	npc_msg 49
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	closemsg
	compare VAR_SPECIAL_RESULT, 0
	call_if_eq _0929
	touchscreen_menu_show
	get_person_coords 0, VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 8
	goto_if_eq _0908
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	compare VAR_SPECIAL_x8004, 1
	goto_if_ne _08D3
	apply_movement obj_player, _0998
	goto _08F6

_08D3:
	compare VAR_SPECIAL_x8004, 7
	goto_if_ne _08EE
	apply_movement obj_player, _09A4
	goto _08F6

_08EE:
	apply_movement obj_player, _09B0
_08F6:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	goto _0912

_0908:
	apply_movement obj_player, _09CC
	wait_movement
_0912:
	npc_msg 52
	wait_button_or_walk_away
	closemsg
	releaseall
	copyvar VAR_UNK_4131, VAR_SPECIAL_x8006
	setvar VAR_SCENE_EMBEDDED_TOWER, 1
	return

_0929:
	setvar VAR_TEMP_x4000, 0
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	nickname_input VAR_SPECIAL_x8005, VAR_TEMP_x4000
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	touchscreen_menu_hide
	bufferpartymonnick 1, VAR_SPECIAL_x8005
	npc_msg 50
	getmenuchoice VAR_SPECIAL_RESULT
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0929
	return

_096C:
	scrcmd_453
	npc_msg 47
	wait_button_or_walk_away
	closemsg
	touchscreen_menu_show
	releaseall
_0979:
	end

_097B:
	end

_097D:
	buffer_rivals_name 1
	npc_msg 54
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_098B:
	touchscreen_menu_show
	npc_msg 51
	wait_button_or_walk_away
	closemsg
	releaseall
	return

	.align 4
_0998:

	step 13, 1
	step 14, 3
	step_end
	.align 4
_09A4:

	step 13, 1
	step 14, 2
	step_end
	.align 4
_09B0:

	step 13, 1
	step 14, 1
	step_end
	.align 4
_09BC:

	step 3, 1
	step_end
	.align 4
_09C4:

	step 0, 1
	step_end
	.align 4
_09CC:

	step 1, 1
	step_end
	.align 4


.close
