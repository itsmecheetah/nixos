{ config, lib, ...}:

{

	programs.starship = {
		enable = true;
		settings = {
			format = lib.concatStrings [
					"[█](#d65d0e)[󱄅]$hostname[](#d79921 fg:#d65d0e)"
					"$directory[](fg:#b16286 bg:#689d6a)"
					"$git_branch$git_status[](fg:#689d6a bg:#458588)"
					"$c$cpp$rust$golang$nodejs$bun$php$java$kotlin$haskell$python[](fg:#458588 bg:#555555)"
					"$all\n$character"
			];
		};
	};
}
