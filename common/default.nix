 { config, pkgs, lib, ... }:

{
    boot.loader.systemd-boot.enable = true;
    boot.loader.efi.canTouchEfiVariables = true;

    networking.networkmanager.enable = true;
    networking.nftables.enable = true;
    networking.firewall.allowedTCPPorts = [ 22 ];

    time.timeZone = "America/Los_Angeles";

    i18n.defaultLocale = "en_US.UTF-8";
    i18n.extraLocaleSettings = {
        LC_ADDRESS = "en_US.UTF-8";
        LC_IDENTIFICATION = "en_US.UTF-8";
        LC_MEASUREMENT = "en_US.UTF-8";
        LC_MONETARY = "en_US.UTF-8";
        LC_NAME = "en_US.UTF-8";
        LC_NUMERIC = "en_US.UTF-8";
        LC_PAPER = "en_US.UTF-8";
        LC_TELEPHONE = "en_US.UTF-8";
        LC_TIME = "en_US.UTF-8";
    };

    services.flatpak.enable = true;

    # Plasma
    # services.displayManager.sddm.enable = true;
    # services.desktopManager.plasma6.enable = true;

    programs.hyprland = {
        enable = true;
        xwayland.enable = true;
    };

    services.keyd = {
        enable = true;

        keyboards.default = {
            ids = [ "*" ];

            settings.main = {
                capslock = "leftmeta";
                leftmeta = "capslock";
            };
        };
    };

    services.gnome.gnome-keyring.enable = true;
    security.pam.services.sddm.enableGnomeKeyring = true;

    services.printing.enable = true;

    services.openssh.enable = true;

    services.pulseaudio.enable = false;
    security.rtkit.enable = true;
    services.pipewire = {
        enable = true;
        alsa.enable = true;
        alsa.support32Bit = true;
        pulse.enable = true;
        #jack.enable = true;
    };

    users.users."orangecheetah" = {
        isNormalUser = true;
        description = "orangecheetah";
        extraGroups = [ "networkmanager" "wheel" ];
    };

    nix.settings.experimental-features = [ "nix-command" "flakes" ];
    nixpkgs.config.allowUnfree = true;

    programs.firefox.enable = true;

    programs.steam = {
        enable = true;
        extraCompatPackages = [ pkgs.proton-ge-bin ];
    };

    programs.gamescope.enable = true;

    xdg.portal = {
	enable = true;
	extraPortals = [ pkgs.xdg-desktop-portal-hyprland ];
	config = {
	     common.default = [ "hyprland" "gtk" ];
	     hyprland.default = [ "hyprland" "gtk" ];
	};
    };

    environment.systemPackages = with pkgs; [
        pulseaudio
	dunst
        mpv
	rustPlatform.rustLibSrc
        rustup
	rustc
        egl-wayland
        qt5.qtwayland
        qt6.qtwayland
        noto-fonts
	unimatrix
	home-manager
        btop
	cursor-clip
	unzip
	ungoogled-chromium
	lunar-client
	grim
	slurp
	davinci-resolve
	libnotify
	fsel
    ];

		virtualisation.virtualbox.host.enable = true;

    environment.variables = {
	EDITOR = "neovide";
	VISUAL = "neovide";
    };

    fonts.packages = with pkgs; [
	nerd-fonts.anonymice
    ];

    programs.appimage = {
        enable = true;
        package = pkgs.appimage-run.override {
            extraPkgs = pkgs: with pkgs; [
                libxshmfence
                libxkbfile
                nss
                atk
                gtk3
                alsa-lib
                libX11
                libXi
                libXau
            ];
        };
    };

    programs.dconf.enable = true;
    programs.gamemode.enable = true;

    system.stateVersion = "26.05";
}
