{ config, lib, ...}:

{

	programs.starship = {
		enable = true;
		settings = {
			format = lib.concatStrings [
					"[█](fg:#b16286)$directory[](fg:#b16286 bg:#689d6a)"
					"$git_branch$git_status[](fg:#689d6a bg:#458588)"
					"$c$cpp$rust$golang$nodejs$bun$php$java$kotlin$haskell$python[](fg:#458588)"
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
		};
	};
}
