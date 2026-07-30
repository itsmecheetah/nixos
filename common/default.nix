{ config, pkgs, lib, ... }:

{
    boot.loader.systemd-boot.enable = true;
    boot.loader.efi.canTouchEfiVariables = true;

    networking.networkmanager.enable = true;

    time.timeZone = "America/Los_Angeles";

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
    services.displayManager.ssdm.enable = true;
    services.desktopManager.plasma6.enable = true;

    services.printing.enable = true;

    # Audio
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
        description: "orangecheetah";
        extraGroups = [ "networkmanager" "wheel" ];
    };

    nix.settings.experimental-features = [ "nix-command" "flakes" ];
    nixpkgs.config.allowUnfree = true;

    programs.firefox.enable = true;

    environment.systemPackages = with pkgs; [
        pulseaudio
        mpv
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
                libXao
            ];
        };
    };

    programs.dconf.enable = true;

    system.stateVersion = "26.05";
}
