{ ... }:

{
  system = {
    defaults = {
      dock = {
        autohide = true;
        orientation = "bottom";
        show-recents = false;
        tilesize = 36;
        minimize-to-application = true;
      };

      finder = {
        AppleShowAllExtensions = true;
        ShowPathbar = true;
        ShowStatusBar = true;
        FXEnableExtensionChangeWarning = false;
        FXPreferredViewStyle = "Nlsv";
        _FXShowPosixPathInTitle = true;
        QuitMenuItem = true;
      };

      trackpad = {
        Clicking = true;
        TrackpadThreeFingerDrag = true;
      };

      NSGlobalDomain = {
        ApplePressAndHoldEnabled = false;
        InitialKeyRepeat = 15;
        KeyRepeat = 2;

        "com.apple.mouse.tapBehavior" = 1;
        "com.apple.trackpad.enableSecondaryClick" = true;

        AppleInterfaceStyle = "Dark";
        AppleShowAllExtensions = true;
        AppleShowScrollBars = "Automatic";

        NSAutomaticCapitalizationEnabled = false;
        NSAutomaticDashSubstitutionEnabled = false;
        NSAutomaticPeriodSubstitutionEnabled = false;
        NSAutomaticQuoteSubstitutionEnabled = false;
        NSAutomaticSpellingCorrectionEnabled = false;

        NSDocumentSaveNewDocumentsToCloud = false;
      };

      screencapture = {
        location = "~/Pictures/Screenshots";
        type = "png";
      };

      ActivityMonitor = {
        IconType = 5;
        ShowCategory = 100;
      };

      CustomUserPreferences = {
        "com.apple.finder" = {
          ShowExternalHardDrivesOnDesktop = true;
          ShowHardDrivesOnDesktop = true;
          ShowMountedServersOnDesktop = true;
          ShowRemovableMediaOnDesktop = true;
          FXICloudDriveDesktop = true;
          FXICloudDriveDocuments = true;
          FXICloudDriveEnabled = true;
        };

        "com.apple.desktopservices" = {
          DSDontWriteNetworkStores = true;
          DSDontWriteUSBStores = true;
        };
      };
    };

    keyboard = {
      enableKeyMapping = true;
      remapCapsLockToControl = false;
    };
  };
}
