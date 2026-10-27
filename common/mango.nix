{ config, pkgs, inputs, ... }:
{
	imports = [
		inputs.mango.hmModules.mango
	];

	wayland.windowManager.mango = {
		enable = true;
		settings = {
			bind = [
				# window management
				"SUPER+SHIFT,q,restore_minimized"
				"SUPER,q,minimized"
				"SUPER,z,killclient"
				"SUPER,f,togglefloating"
				"SUPER+SHIFT,f,toggle_all_floating"
				"SUPER,e,togglemaximizescreen"
				"SUPER,F11,togglefullscreen"
				"SUPER,v,toggle_scratchpad"
				"SUPER,space,overcircle"
				"SUPER,c,overcircle,next"

				# layouts
				"SUPER,F1,setlayout,scroller"
				"SUPER,F2,setlayout,fair"
				"SUPER,F3,setlayout,tile"
				"SUPER,F4,setlayout,monocle"
				"SUPER,F5,switch_layout"

				# applications
				"SUPER,g,spawn,tofi-drun"
				"SUPER,t,spawn,kitty fish"
				"SUPER,r,toggle_named_scratchpad,discord,none,discord"
				"SUPER+SHIFT,r,toggle_named_scratchpad,steam,none,steam"

				# tags
				"SUPER,0,view,0"
				"SUPER,1,view,1"
				"SUPER,2,view,2"
				"SUPER,3,view,3"
				"SUPER,4,view,4"
				"SUPER,5,view,5"
				"SUPER,6,view,6"
				"SUPER,7,view,7"
				"SUPER,8,view,8"
				"SUPER,9,view,9"
				"SUPER,x,view,00"

				"SUPER+SHIFT,0,toggletag,0"
				"SUPER+SHIFT,1,toggletag,1"
				"SUPER+SHIFT,2,toggletag,2"
				"SUPER+SHIFT,3,toggletag,3"
				"SUPER+SHIFT,4,toggletag,4"
				"SUPER+SHIFT,5,toggletag,5"
				"SUPER+SHIFT,6,toggletag,6"
				"SUPER+SHIFT,7,toggletag,7"
				"SUPER+SHIFT,8,toggletag,8"
				"SUPER+SHIFT,9,toggletag,9"

				# movement
				"SUPER,w,focusdir,up"
				"SUPER,a,focusdir,left"
				"SUPER,s,focusdir,down"
				"SUPER,d,focusdir,right"

				"SUPER+SHIFT,w,move_client,up"
				"SUPER+SHIFT,a,move_client,left"
				"SUPER+SHIFT,s,move_client,down"
				"SUPER+SHIFT,d,move_client,right"
			];
			mousebind = [
				"SUPER,btn_left,moveresize,curmove"
				"SUPER,btn_right,moveresize,curresize"
			];
			circle_layout = [
				"grid,deck,dwindle"
			];
			window_rule = [
				"is_named_scratchpad:1,app_id:discord"
				"is_named_scratchpad:1,app_id:steam"
			];
		};
	};
}
