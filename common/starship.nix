{ config, lib, ...}:

{

	programs.starship = {
		enable = true;
		settings = {
			format = lib.concatStrings [
					"[█](fg:#b16286)$directory[](fg:#b16286 bg:#689d6a)"
					"$git_branch$git_status[](fg:#689d6a bg:#458588)"
					"[$c$cpp$rust$golang$nodejs$bun$php$java$kotlin$haskell$python](bg:#458588 fg:#282828)[](bg:#569699 fg:#458588)"
					"$package[](fg:#569699)"
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

			package = {
				format = "[ is $symbol$version]($style)";
				style = "bg:#569699 fg:#282828";
			};

			rust = {
				format = "[ $symbol($version) ]($style)";
				style = "bg:#458588 fg:#282828";
			};
		};
	};
}
