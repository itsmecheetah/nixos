{ inputs, ... }:

{
  imports = [ inputs.nixcord.homeModules.nixcord ];

  programs.nixcord = {
    enable = true;
    discord.vencord.enable = true;
    config.plugins = {
      betterFolders = {
        enable = true;
        closeAllHomeButton = true;
      };
      betterGifAltText.enable = true;
      characterCounter.enable = true;
      favoriteEmojiFirst.enable = true;
      forceOwnerCrown.enable = true;
      fullSearchContext.enable = true;
      gameActivityToggle.enable = true;
      gifPaste.enable = true;
      iLoveSpam.enable = true;
      imageZoom = {
        enable = true;
        square = true;
      };
      implicitRelationships.enable = true;
      ircColors = {
        enable = true;
        applyColorOnlyInDms = true;
      };
      loadingQuotes = {
        enable = true;
        replaceEvents = false;
      };
      memberCount.enable = true;
      messageClickActions.enable = true;
      messageLogger.enable = true;
      moreQuickReactions = {
        enable = true;
        reactionCount = 16;
      };
      mutualGroupDms.enable = true;
      noOnboardingDelay.enable = true;
      noTypingAnimation.enable = true;
      pauseInvitesForever.enable = true;
      permissionFreeWill = {
        enable = true;
        lockout = false;
      };
      permissionsViewer.enable = true;
      petpet.enable = true;
      pictureInPicture.enable = true;
      previewMessage.enable = true;
      readAllNotificationsButton.enable = true;
      relationshipNotifier = {
        enable = true;
        notices = true;
      };
      replyTimestamp.enable = true;
      reverseImageSearch.enable = true;
      sendTimestamps.enable = true;
      serverInfo.enable = true;
      showHiddenThings = {
        enable = true;
        showModView = false;
      };
      silentTyping.enable = true;
      translate.enable = true;
      userMessagesPronouns = {
        enable = true;
        showSelf = false;
      };
      validReply.enable = true;
      validUser.enable = true;
      voiceChatDoubleClick.enable = true;
      voiceDownload.enable = true;
      voiceMessages.enable = true;
      volumeBooster.enable = true;
    };
    extraConfig.plugins = {
      messageClickActions = {
        enableDeleteOnClick = false;
        enableDoubleClickToEdit = true;
        enableDoubleClickToReply = true;
        requireModifier = false;
      };
      noBlockedMessages = {
        applyToIgnoredUsers = true;
        ignoreBlockedMessages = false;
        ignoreMessages = false;
      };
      platformIndicators = {
        badges = true;
      };
      showHiddenChannels = {
        hideUnreads = true;
      };
      showMeYourName = {
        displayNames = false;
        friendNicknames = "dms";
        inReplies = false;
        mode = "user-nick";
      };
      silentTyping = {
        contextMenu = true;
        isEnabled = true;
        showIcon = true;
      };
      translate = {
        shavian = true;
        sitelen = true;
        target = "en";
        toki = true;
      };
    };
  };
}
