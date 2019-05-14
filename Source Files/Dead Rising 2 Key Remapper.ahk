;By xcloudx01 - 2010
Fileinstall,AutoHotKey-KeysList.pdf,%A_Temp%\AutoHotKey-KeysList.pdf
OnExit("ExitFunc")

#SINGLEINSTANCE FORCE
;Check if we already know where DR2 is installed.
	ifnotexist,Settings.ini
		{
			;Check where DR2 is installed, only need to do this once.
			ifexist,C:\Program Files (x86)\Steam\steamapps\common\Dead Rising 2
				gamepath = C:\Program Files (x86)\Steam\steamapps\common\Dead Rising 2
			else ifexist C:\Program Files\Steam\steamapps\common\Dead Rising 2
				gamepath = C:\Program Files\Steam\steamapps\common\Dead Rising 2
			else ifexist C:\Program Files\Capcom\Dead Rising 2
				gamepath = C:\Program Files\Capcom\Dead Rising 2
			else ifexist C:\Program Files (x86)\Capcom\Dead Rising 2
				gamepath = C:\Program Files (x86)\Capcom\Dead Rising 2
			ifnotexist,%gamepath%/data/controls/keymap.txt
			{
				msgbox,To continue, please select where Dead Rising 2 is installed.
				selectgamepath:
				Fileselectfolder,gamepath
				ifnotexist,%gamepath%/deadrising2.exe
				{
					if gamepath =
						exitapp
					msgbox, Error: Deadrising2.exe doesn't exist in this folder. Are you sure its here?
					goto selectgamepath
				}
			}
			iniwrite,%gamepath%,Settings.ini,Settings,gamepath
		}
		else
			iniread,gamepath,Settings.ini,Settings,gamepath

;GUI
	Gui, Add, Edit, x104 y60 w70 h20 vtab uppercase, % Getbind(1)
	Gui, Add, Edit, x104 y80 w70 h20 vf1 uppercase, % Getbind(3)
	Gui, Add, Edit, x104 y100 w70 h20 vw uppercase, % Getbind(4)
	Gui, Add, Edit, x104 y120 w70 h20 va uppercase, % Getbind(6)
	Gui, Add, Edit, x104 y140 w70 h20 vs uppercase, % Getbind(5)
	Gui, Add, Edit, x104 y160 w70 h20 vd uppercase, % Getbind(7)
	Gui, Add, Edit, x104 y180 w70 h20 vlcontrol uppercase, % Getbind(11)
	Gui, Add, Edit, x104 y200 w70 h20 vlshift uppercase, % Getbind(10)
	Gui, Add, Edit, x104 y220 w70 h20 vup uppercase, % Getbind(15)
	Gui, Add, Edit, x104 y240 w70 h20 vdown uppercase, % Getbind(16)
	Gui, Add, Edit, x104 y260 w70 h20 vleft uppercase, % Getbind(17)
	Gui, Add, Edit, x104 y280 w70 h20 vright uppercase, % Getbind(18)
	Gui, Add, Edit, x266 y60 w70 h20 vesc uppercase, % Getbind(9)
	Gui, Add, Edit, x266 y80 w70 h20 venter uppercase, % Getbind(8)
	Gui, Add, Edit, x266 y100 w70 h20 vx uppercase, % Getbind(22)
	Gui, Add, Edit, x266 y120 w70 h20 vc uppercase, % Getbind(23)
	Gui, Add, Edit, x266 y140 w70 h20 v1 uppercase, % Getbind(24)
	Gui, Add, Edit, x266 y160 w70 h20 v2 uppercase, % Getbind(25)
	Gui, Add, Edit, x266 y180 w70 h20 v3 uppercase, % Getbind(26)
	Gui, Add, Edit, x266 y200 w70 h20 v4 uppercase, % Getbind(27)
	Gui, Add, Edit, x266 y220 w70 h20 vq uppercase, % Getbind(30)
	Gui, Add, Edit, x266 y240 w70 h20 vh uppercase, % Getbind(35)
	Gui, Add, Edit, x266 y260 w70 h20 vequals uppercase, % Getbind(40)
	Gui, Add, Edit, x266 y280 w70 h20 vminus uppercase, % Getbind(41)
	Gui, Add, Edit, x416 y120 w70 h20 vz uppercase, % Getbind(44)
	Gui, Add, Edit, x416 y140 w70 h20 vspace uppercase, % Getbind(45)
	Gui, Add, Edit, x416 y160 w70 h20 vm uppercase, % Getbind(46)
	Gui, Add, Edit, x416 y180 w70 h20 ve uppercase, % Getbind(49)
	Gui, Add, Edit, x416 y200 w70 h20 vt uppercase, % Getbind(63)
	Gui, Add, Button, x236 y310 w100 h20 gSubmit, Save
	Gui, Add, Button, x26 y310 w100 h20 gDefaults, Restore Defaults
	Gui, Add, Text, x26 y60 w70 h20 , Map
	Gui, Add, Text, x26 y80 w70 h20 , F1
	Gui, Add, Text, x26 y100 w70 h20 , Forward
	Gui, Add, Text, x26 y120 w70 h20 , Left
	Gui, Add, Text, x26 y140 w70 h20 , Back
	Gui, Add, Text, x26 y160 w70 h20 , Right
	Gui, Add, Text, x26 y180 w70 h20 , Control
	Gui, Add, Text, x26 y200 w70 h20 , Shift
	Gui, Add, Text, x26 y220 w70 h20 , Menu up
	Gui, Add, Text, x26 y240 w70 h20 , Menu down
	Gui, Add, Text, x26 y260 w70 h20 , Menu left
	Gui, Add, Text, x26 y280 w70 h20 , Menu right
	Gui, Add, Text, x186 y60 w70 h20 , Pause
	Gui, Add, Text, x186 y80 w70 h20 , Select
	Gui, Add, Text, x186 y100 w70 h20 , Drop Item
	Gui, Add, Text, x186 y120 w70 h20 , Answer Call
	Gui, Add, Text, x186 y140 w70 h20 , Inv left
	Gui, Add, Text, x186 y160 w70 h20 , Pocket Item
	Gui, Add, Text, x186 y180 w70 h20 , Inv right
	Gui, Add, Text, x186 y200 w70 h20 , Inv slot 4
	Gui, Add, Text, x186 y220 w80 h20 , Call/Quit poker
	Gui, Add, Text, x186 y240 w70 h20 , Help
	Gui, Add, Text, x186 y260 w70 h20 , Zoom in map
	Gui, Add, Text, x186 y280 w70 h20 , Zoom out map
	Gui, Add, Text, x346 y120 w70 h20 , Z
	Gui, Add, Text, x346 y140 w70 h20 , Jump
	Gui, Add, Text, x346 y160 w70 h20 , Map
	Gui, Add, Text, x346 y180 w70 h20 , Interact
	Gui, Add, Text, x346 y200 w70 h20 , Watch
	Gui, Add, Text, x26 y340 w480 h20 , Special keys must be WRITTEN.
	Gui, Add, Button, x190 y335 w25 h20 gKeysHelp, ?
	Gui, Font, S15 CDefault Bold, Verdana
	Gui, Add, Text, x116 y10 w320 h30 , Dead Rising 2 Key mapper
	Gui, Show, x650 y390 h368 w510, Dead Rising 2 Key mapper
	Return

	KeysHelp:
		run, %A_Temp%\AutoHotKey-KeysList.pdf
	return

;GUI Button Functions
	Defaults:
		controlgui("tab")
		controlgui("f1")
		controlgui("w")
		controlgui("s")
		controlgui("a")
		controlgui("d")
		controlgui("enter")
		controlgui("esc")
		controlgui("lshift")
		controlgui("lcontrol")
		controlgui("up")
		controlgui("down")
		controlgui("left")
		controlgui("right")
		controlgui("x")
		controlgui("c")
		controlgui("1")
		controlgui("2")
		controlgui("3")
		controlgui("4")
		controlgui("q")
		controlgui("h")
		controlgui("equals")
		controlgui("minus")
		controlgui("z")
		controlgui("space")
		controlgui("m")
		controlgui("e")
		controlgui("t")
		gosub,Submit
		return

	GuiClose:
		ExitApp

	Submit:
		gui,submit,nohide
		Filedelete,%gamepath%/data/controls/keymap.txt
		FileAppend,
		(
		COMMAND_FRONTEND_PAUSEMENU(                        KEY_%tab%,                PRESSED,        KEY_%lshift%,        HELD,            AND)
		COMMAND_PAUSEMENU(                                KEY_%tab%,                PRESSED,        KEY_%lshift%,        HELD,             AND)
		COMMAND_OLD_PAUSEMENU(                            KEY_%f1%,                    PRESSED,        NONE,            NONE,            NONE)
		COMMAND_PAUSEMENU_UP(                            KEY_%w%,                    PRESSED,        KEY_%up%,            PRESSED,        OR)
		COMMAND_PAUSEMENU_DOWN(                            KEY_%s%,                    PRESSED,        KEY_%down%,        PRESSED,        OR)
		COMMAND_PAUSEMENU_LEFT(                            KEY_%a%,                    PRESSED,        KEY_%left%,        PRESSED,        OR)
		COMMAND_PAUSEMENU_RIGHT(                        KEY_%d%,                    PRESSED,        KEY_%right%,        PRESSED,        OR)
		COMMAND_PAUSEMENU_SELECT(                        KEY_%enter%,                PRESSED,        NONE,            NONE,            NONE)
		COMMAND_PAUSEMENU_BACK(                            KEY_%esc%,                PRESSED,        NONE,            NONE,            NONE)
		COMMAND_PAUSEMENU_FAST(                            KEY_%lshift%,                HELD,            NONE,            NONE,            NONE)
		COMMAND_PAUSEMENU_SLOW(                            KEY_%lcontrol%,            HELD,            NONE,            NONE,            NONE)

		COMMAND_OLD_FRONTEND_PAUSEMENU(                    KEY_%f1%,                    PRESSED,        NONE,            NONE,            NONE)

		COMMAND_FRONTEND_UP(                            KEY_%up%,                    PRESSED,        NONE,            NONE,            NONE)
		COMMAND_FRONTEND_DOWN(                            KEY_%down%,                PRESSED,        NONE,            NONE,            NONE)
		COMMAND_FRONTEND_LEFT(                            KEY_%left%,                PRESSED,        NONE,            NONE,            NONE)
		COMMAND_FRONTEND_RIGHT(                            KEY_%right%,                PRESSED,        NONE,            NONE,            NONE)
		COMMAND_FRONTEND_A_BUTTON(                        KEY_%enter%,                PRESSED,        NONE,            NONE,            NONE)
		COMMAND_FRONTEND_A_BUTTON_RELEASE(                KEY_%enter%,                RELEASED,        NONE,            NONE,            NONE)
		COMMAND_FRONTEND_B_BUTTON(                        KEY_%esc%,                PRESSED,        NONE,            NONE,            NONE)
		COMMAND_FRONTEND_X_BUTTON(                        KEY_%x%,                    PRESSED,        NONE,            NONE,            NONE)
		COMMAND_FRONTEND_Y_BUTTON(                        KEY_%c%,                    PRESSED,        NONE,            NONE,            NONE)
		COMMAND_FRONTEND_L1_BUTTON(                        KEY_%1%,                    PRESSED,        NONE,            NONE,            NONE)
		COMMAND_FRONTEND_R1_BUTTON(                        KEY_%2%,                    PRESSED,        NONE,            NONE,            NONE)
		COMMAND_FRONTEND_L2_BUTTON(                        KEY_%3%,                    PRESSED,        NONE,            NONE,            NONE)
		COMMAND_FRONTEND_R2_BUTTON(                        KEY_%4%,                    PRESSED,        NONE,            NONE,            NONE)
		COMMAND_FRONTEND_START_BUTTON(                    KEY_%enter%,                PRESSED,        KEY_%esc%,        PRESSED,        OR)

		COMMAND_PLAYER_DISMISS_DIALOG(                    KEY_%q%,                    PRESSED,        NONE,            NONE,            NONE)

		COMMAND_FRONTEND_RIGHT_HELD(                    KEY_%c%,                    HELD,            NONE,            NONE,            NONE)

		COMMAND_HIGHROLLERS_POKER_QUIT(                    KEY_%q%,                    PRESSED,        NONE,            NONE,            NONE)
		COMMAND_HIGHROLLERS_POKER_TIPS(                    KEY_%h%,                    PRESSED,        NONE,            NONE,            NONE)
		COMMAND_HIGHROLLERS_POKER_PAUSE(                KEY_%esc%,                PRESSED,        NONE,            NONE,            NONE)

		COMMAND_FRONTEND_MAP_L2(                        KEY_%4%,                    ACCELREPEAT,    NONE,            NONE,            NONE)
		COMMAND_FRONTEND_MAP_R2(                        KEY_%3%,                    ACCELREPEAT,    NONE,            NONE,            NONE)
		COMMAND_FRONTEND_MAP_L1(                        KEY_%equals%,                HELD,    NONE,            NONE,            NONE)
		COMMAND_FRONTEND_MAP_R1(                        KEY_%minus%,                HELD,    NONE,            NONE,            NONE)


		COMMAND_FRONTEND_GENACTION1(                    KEY_%z%,                    PRESSED,        NONE,            NONE,            NONE)
		COMMAND_FRONTEND_GENACTION2(                    KEY_%space%,                PRESSED,        NONE,            NONE,            NONE)
		COMMAND_FRONTEND_GENACTION3(                    KEY_%m%,                    PRESSED,        NONE,            NONE,            NONE)

		COMMAND_PLAYER_MINIGAME_OK(                        KEY_%space%,                PRESSED,        NONE,            NONE,            NONE)
		COMMAND_PLAYER_MINIGAME_EXIT(                    KEY_%e%,                    PRESSED,        NONE,            NONE,            NONE)
		COMMAND_PLAYER_MINIGAME_A(                        KEY_%s%,                    PRESSED,        NONE,            NONE,            NONE)
		COMMAND_PLAYER_MINIGAME_B(                        KEY_%d%,                    PRESSED,        NONE,            NONE,            NONE)
		COMMAND_PLAYER_MINIGAME_X(                        KEY_%a%,                    PRESSED,        NONE,            NONE,            NONE)
		COMMAND_PLAYER_MINIGAME_Y(                        KEY_%w%,                    PRESSED,        NONE,            NONE,            NONE)

		COMMAND_AI_VIEW_MAP(                            KEY_%tab%,                PRESSED,        NONE,            NONE,            NONE)

		COMMAND_SKIP_SCRIPT(                            KEY_%enter%,                PRESSED,        NONE,            NONE,            NONE)
		COMMAND_SKIP_CINEMATIC(                            KEY_%esc%,                PRESSED,        KEY_%space%,        PRESSED,        OR)

		COMMAND_AI_PAUSE_GAME(                            KEY_%esc%,                PRESSED,        NONE,            NONE,            NONE)

		COMMAND_AI_INTERACT_WITH_PHONE(                    KEY_%c%,                    PRESSED,        NONE,            NONE,            NONE)
		COMMAND_AI_INTERACT_WITH_WATCH(                    KEY_%t%,                    PRESSED,        NONE,            NONE,            NONE)

		COMMAND_PLAYER_X(                                LEFT_THUMBSTICK_X,         NONE,            NONE,            NONE,            NONE)
		COMMAND_PLAYER_Y(                                LEFT_THUMBSTICK_Y,        NONE,            NONE,            NONE,            NONE)
		COMMAND_PLAYER_RUN_DIR(                            LEFT_THUMBSTICK_DIR,    NONE,            NONE,            NONE,            NONE)
		COMMAND_PLAYER_RUN_MAG(                            LEFT_THUMBSTICK_MAG,    NONE,            NONE,            NONE,            NONE)
		COMMAND_KBOARD_EMULATE_LTHUMB_UP(                KEY_%w%,                    HELD,            NONE,            NONE,            NONE)
		COMMAND_KBOARD_EMULATE_LTHUMB_DOWN(                KEY_%s%,                    HELD,            NONE,            NONE,            NONE)
		COMMAND_KBOARD_EMULATE_LTHUMB_LEFT(                KEY_%a%,                    HELD,            NONE,            NONE,            NONE)
		COMMAND_KBOARD_EMULATE_LTHUMB_RIGHT(            KEY_%d%,                    HELD,            NONE,            NONE,            NONE)

		COMMAND_PLAYER_JUMP(                            KEY_%space%,                PRESSED,        NONE,            NONE,            NONE)
		COMMAND_PLAYER_CROUCH(                            KEY_%c%,                    PRESSED,        NONE,            NONE,            NONE)
		COMMAND_PLAYER_DODGE(                            KEY_%lcontrol%,            PRESSED,        NONE,            NONE,            NONE)

		COMMAND_PC_F2(                                    KEY_F2,                    PRESSED,        NONE,            NONE,            NONE)

		COMMAND_PLAYER_BUTTON_PRESS(                    KEY_%e%,                    PRESSED,        NONE,            NONE,            NONE)
		COMMAND_PLAYER_OBJECT_PICKUP(                    KEY_%e%,                    PRESSED,        NONE,            NONE,            NONE)
		COMMAND_PLAYER_USE(                                KEY_%e%,                    PRESSED,        NONE,            NONE,            NONE)
		COMMAND_PLAYER_ITEMS_DROP(                        KEY_%down%,                PRESSED,        KEY_%x%,            PRESSED,        OR)
		COMMAND_PLAYER_ITEMS_HIDE(                        KEY_%up%,                    PRESSED,        KEY_%2%,            PRESSED,        OR)

		COMMAND_PLAYER_CALLOUT(                            KEY_%q%,                    PRESSED,        NONE,            NONE,            NONE)

		COMMAND_AI_VEHICLE_ENTER_EXIT(                    KEY_%e%,                    PRESSED,        NONE,            NONE,            NONE)
		COMMAND_AI_VEHICLE_STEERING_X(                    LEFT_THUMBSTICK_X,        NONE,            NONE,            NONE,            NONE)
		COMMAND_AI_VEHICLE_STEERING_Y(                    LEFT_THUMBSTICK_Y,        NONE,            NONE,            NONE,            NONE)
		COMMAND_AI_VEHICLE_ACCELERATE(                    KEY_%w%,                    HELD,            NONE,            NONE,            NONE)
		COMMAND_AI_VEHICLE_ACCELERATE_TRIGGER(            KEY_%w%,                    HELD,            NONE,            NONE,            NONE)
		COMMAND_AI_VEHICLE_BRAKE(                        KEY_%s%,                    HELD,            KEY_%space%,        PRESSED,        OR)
		COMMAND_AI_VEHICLE_BRAKE_TRIGGER(                KEY_%s%,                    HELD,            KEY_%space%,        PRESSED,        OR)
		),%gamepath%/data/controls/keymap.txt



		Filedelete,%gamepath%/data/controls/mousemap.txt
		FileAppend,
		(
		COMMAND_FRONTEND_ML_BUTTON(                        BUTTON_1,            PRESSED,        NONE,        NONE,        NONE)
		COMMAND_FRONTEND_RML_BUTTON(                    BUTTON_1,            RELEASED,        NONE,        NONE,        NONE)
		COMMAND_FRONTEND_MR_BUTTON(                        BUTTON_2,            PRESSED,        NONE,        NONE,        NONE)
		COMMAND_FRONTEND_MW_UP(                            MOUSE_WHEEL_UP,        HELD,            NONE,        NONE,        NONE)
		COMMAND_FRONTEND_MW_DOWN(                        MOUSE_WHEEL_DOWN,    HELD,            NONE,        NONE,        NONE)

		COMMAND_USER_CAM_LEFTRIGHT(                        MOUSE_RAW_X,        NONE,            NONE,        NONE,        NONE)
		COMMAND_USER_CAM_UPDOWN(                        MOUSE_RAW_Y,        NONE,            NONE,        NONE,        NONE)
		COMMAND_USER_CAM_WEAPONAIM_LEFTRIGHT(            MOUSE_RAW_X,        NONE,            NONE,        NONE,        NONE)
		COMMAND_USER_CAM_WEAPONAIM_UPDOWN(                MOUSE_RAW_Y,        NONE,            NONE,        NONE,        NONE)

		COMMAND_DEBUGCAMERA_MOVEFORWARDBACK(            KEY_%w%,                NONE,            NONE,        NONE,        NONE)
		COMMAND_DEBUGCAMERA_PITCHUPDOWN(                RIGHT_THUMBSTICK_Y,    NONE,            NONE,        NONE,        NONE)
		COMMAND_DEBUGCAMERA_HEADLEFTRIGHT(                RIGHT_THUMBSTICK_X,    NONE,            NONE,        NONE,        NONE)

		COMMAND_AI_MOVE_PENDULUM_X(                        RIGHT_THUMBSTICK_X,    NONE,            NONE,        NONE,    NONE)
		COMMAND_AI_MOVE_PENDULUM_Y(                        RIGHT_THUMBSTICK_Y,    NONE,            NONE,        NONE,    NONE)

		COMMAND_PLAYER_MAIN_ITEMS_CYCLE_LEFT(            MOUSE_WHEEL_DOWN,    HELD,            KEY_%1%,        PRESSED,    OR)
		COMMAND_PLAYER_MAIN_ITEMS_CYCLE_RIGHT(            MOUSE_WHEEL_UP,        HELD,            KEY_%3%,        PRESSED,    OR)
		COMMAND_PLAYER_SECONDARY_ITEMS_CYCLE_LEFT(        MOUSE_WHEEL_DOWN,    HELD,            KEY_%1%,        PRESSED,    OR)
		COMMAND_PLAYER_SECONDARY_ITEMS_CYCLE_RIGHT(        MOUSE_WHEEL_UP,        HELD,            KEY_%3%,        PRESSED,    OR)

		COMMAND_PLAYER_ZOOM_IN(                            MOUSE_WHEEL_UP,        HELD,            NONE,        NONE,        NONE)
		COMMAND_PLAYER_ZOOM_OUT(                        MOUSE_WHEEL_DOWN,    HELD,            NONE,        NONE,        NONE)

		COMMAND_USER_CAM_RESET(                            BUTTON_3,            PRESSED,        NONE,        NONE,        NONE)

		COMMAND_PLAYER_FIRE_WEAPON(                        BUTTON_1,            PRESSED,            NONE,    NONE,    NONE)
		COMMAND_PLAYER_RAPID_FIRE(                        BUTTON_1,            HELD,            NONE,        NONE,        NONE)
		COMMAND_PLAYER_QUICK_ATTACK(                    BUTTON_1,            PRESSED,        NONE,        NONE,        NONE)
		COMMAND_PLAYER_HEAVY_ATTACK(                    BUTTON_2,            PRESSED,        NONE,        NONE,        NONE)
		COMMAND_PLAYER_CHARGE(                            BUTTON_1,            HELD,            NONE,        NONE,        NONE)
		COMMAND_PLAYER_CHARGEATTACK_SHORT(                BUTTON_1,            HELD,            NONE,        NONE,        NONE)
		COMMAND_PLAYER_CHARGEATTACK_LONG(                BUTTON_1,            HELD,            NONE,        NONE,        NONE)
		COMMAND_PLAYER_RAPID_FIRE_RT(                    BUTTON_1,            HELD,            NONE,        NONE,        NONE)
		COMMAND_PLAYER_RAPID_FIRE_LT(                    BUTTON_2,            HELD,            NONE,        NONE,        NONE)
		COMMAND_PLAYER_TOGGLE_ALTERNATE_WEAPON_VIEW(    BUTTON_2,            HELD,            NONE,        NONE,        NONE)
		COMMAND_PLAYER_THROW(                            BUTTON_2,            HELD,            BUTTON_1,    PRESSED,    AND)
		COMMAND_PLAYER_THROW_RT(                        BUTTON_2,            HELD,            BUTTON_1,    PRESSED,    AND)
		COMMAND_PLAYER_THROW_CHARGE(                    BUTTON_2,            HELD,            BUTTON_1,    PRESSED,    AND)
		COMMAND_PLAYER_PRIME(                            BUTTON_1,            PRESSED,        NONE,        NONE,        NONE)
		COMMAND_PLAYER_RELEASE_PRIMED(                    BUTTON_1,            RELEASED,        NONE,        NONE,        NONE)
		COMMAND_PLAYER_QUICK_TIMED_RELEASE(                BUTTON_1,            QUICKTIMEDRELEASE, NONE,        NONE,        NONE)
		COMMAND_PLAYER_SPRAY(                            BUTTON_1,            HELD,            NONE,        NONE,        NONE)

		COMMAND_PLAYER_CALL_SURVIVOR_GOTO_POINT(        BUTTON_2,            HELD,            KEY_%q%,        PRESSED,    AND)

		COMMAND_PLAYER_HAND_TO_HAND_SHIFT(                KEY_%lshift%,            HELD,            NONE,        NONE,        NONE)
		COMMAND_PLAYER_HAND_TO_HAND_PUNCH_HELD(            KEY_%q%,                HELD,            NONE,        NONE,        NONE)
		COMMAND_PLAYER_HAND_TO_HAND_PUNCH_RELEASED(        KEY_%q%,                RELEASED,        NONE,        NONE,        NONE)
		COMMAND_PLAYER_HAND_TO_HAND_KICK(                KEY_%lshift%,            HELD,            KEY_%q%,        PRESSED,    AND)
		COMMAND_PLAYER_HAND_TO_HAND_KICK_HELD(            KEY_%lshift%,            HELD,            NONE,        NONE,        NONE)
		COMMAND_PLAYER_HAND_TO_HAND_KICK_RELEASED(        KEY_%lshift%,            RELEASED,        NONE,        NONE,        NONE)

		COMMAND_PLAYER_HAND_TO_HAND_A_HELD(                KEY_%space%,            HELD,            NONE,        NONE,        NONE)
		COMMAND_PLAYER_HAND_TO_HAND_A_RELEASED(            KEY_%space%,            RELEASED,        NONE,        NONE,        NONE)
		COMMAND_PLAYER_HAND_TO_HAND_A_PRESSED(            KEY_%space%,            PRESSED,        NONE,        NONE,        NONE)
		COMMAND_PLAYER_HAND_TO_HAND_B_HELD(                KEY_%e%,                HELD,            NONE,        NONE,        NONE)
		COMMAND_PLAYER_HAND_TO_HAND_B_RELEASED(            KEY_%e%,                RELEASED,        NONE,        NONE,        NONE)
		COMMAND_PLAYER_HAND_TO_HAND_B_PRESSED(            KEY_%e%,                PRESSED,        NONE,        NONE,        NONE)
		COMMAND_PLAYER_HAND_TO_HAND_X_HELD(                BUTTON_1,            HELD,            NONE,        NONE,        NONE)
		COMMAND_PLAYER_HAND_TO_HAND_X_RELEASED(            BUTTON_1,            RELEASED,        NONE,        NONE,        NONE)
		COMMAND_PLAYER_HAND_TO_HAND_X_PRESSED(            BUTTON_1,            PRESSED,        NONE,        NONE,        NONE)
		COMMAND_PLAYER_HAND_TO_HAND_Y_HELD(                KEY_%q%,                HELD,            NONE,        NONE,        NONE)
		COMMAND_PLAYER_HAND_TO_HAND_Y_RELEASED(            KEY_%q%,                RELEASED,        NONE,        NONE,        NONE)
		COMMAND_PLAYER_HAND_TO_HAND_Y_PRESSED(            KEY_%q%,                PRESSED,        NONE,        NONE,        NONE)

		COMMAND_AI_RIDEABLE_ON(                            BUTTON_1,            PRESSED,        NONE,        NONE,        NONE)
		COMMAND_AI_RIDEABLE_OFF(                        KEY_%e%,                PRESSED,        NONE,        NONE,        NONE)
		COMMAND_AI_RIDEABLE_TURN(                        LEFT_THUMBSTICK_X,    NONE,            NONE,        NONE,        NONE)
		COMMAND_AI_RIDEABLE_BRAKE(                        KEY_%s%,                HELD,            NONE,        NONE,        NONE)
		COMMAND_AI_RIDEABLE_PUMP(                        KEY_%w%,                HELD,            BUTTON_1,    HELD,        OR)
		COMMAND_AI_RIDEABLE_JUMP(                        KEY_%space%,            HELD,            NONE,        NONE,        NONE)

		COMMAND_AI_PUSHABLE_TURN(                        LEFT_THUMBSTICK_X,    NONE,        NONE,                    NONE,    NONE)
		COMMAND_AI_PUSHABLE_ACCELERATE(                    KEY_%w%,                HELD,        NONE,                    NONE,    NONE)
		COMMAND_AI_PUSHABLE_REVERSE(                    KEY_%s%,                HELD,        NONE,                    NONE,    NONE)
		COMMAND_AI_PUSHABLE_DUMP(                        BUTTON_1,            PRESSED,    NONE,                    NONE,    NONE)
		COMMAND_AI_PUSHABLE_ALTERNATE_CHARGE(            BUTTON_1,            HELD,        NONE,                    NONE,    NONE)
		COMMAND_AI_PUSHABLE_CHARGE(                        KEY_%space%,            HELD,        NONE,                    NONE,    NONE)

		COMMAND_PLAYER_PUSH_HAMSTER_BALL(                BUTTON_1,            PRESSED,    BUTTON_1,                HELD,    OR)
		),%gamepath%/data/controls/mousemap.txt
		msgbox Settings saved!
		return


;Functions
	Getbind(line#)
	{
		global gamepath
		filereadline,line,%gamepath%\data\controls\keymap.txt,%line#%

		;where does the keys word start?
			stringgetpos,linepos,line,KEY,L
			linepos += 4
		;Trim the var to the start of the keys word
			stringtrimleft,line,line,%linepos%
		;Where does the keys word end?
			stringgetpos,lineposend,line,`,,L
		;trim & return
			stringmid,line,line,0,%lineposend%
		return %line%
	}

	ControlGui(x) ;reset the input variable and gui input edit box
	{
		Guicontrol,,%x%,%x%
		return
	}



ExitFunc()
{
	filedelete,%A_Temp%\AutoHotKey-KeysList.pdf
}
