{ config, lib, ...}:

{

	programs.starship = {
		enable = true;
		settings = {
			format = lib.concatStrings [
					"[█](fg:#b16286)$directory[](fg:#b16286 bg:#689d6a)"
					"$git_branch$git_status[](fg:#689d6a bg:#458588)"
					"[$time](bg:#458588 fg:#282828)[](bg:#886a45 fg:#458588)"
					"$sudo[](fg:#886a45)"
					"\n$all$character"
			];

			directory = {
				format = "[ $path ]($style)";
				style = "bg:#b16286 fg:#282828";
			};

			git_branch = {
				format = "[[ $symbol$branch ]($style)]($style)";
				style = "bg:#689d6a fg:#282828";
			};

			git_status = {
				format = "[[($all_status$ahead_behind )]($style)]($style)";
				style = "bg:#689d6a fg:#282828";
			};

			time = {
				disabled = false;
				format = "[  $time ]($style)";
				style = "bg:#458588 fg:#282828";
			};

			sudo = {
				disabled = false;
				format = "[ as 󰓠 ]($style)";
				style = "bg:#886a45 fg:#282828";
			};

			rust = {
				disabled = true;
			};

			package = {
				disabled = true;
			};
		};
	};
}
