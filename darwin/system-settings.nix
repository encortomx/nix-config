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
        persistent-apps = [
          "/Applications/Zen.app"
          "/Applications/Ghostty.app"
          "/Applications/Spotify.app"
          "/Applications/Google Chrome.app"
          "/Applications/PhpStorm.app"
          "/Applications/Cursor.app"
          "/Applications/Visual Studio Code.app"
          "/Applications/GitKraken.app"
          "/Applications/Insomnia.app"
          "/Applications/Slack.app"
        ];
        persistent-others = [
          {
            folder = {
              path = "/Applications";
              arrangement = "name";
              displayas = "folder";
              showas = "grid";
            };
          }
          {
            folder = {
              path = "/Users/davidsanchez/Downloads";
              arrangement = "date-added";
              displayas = "folder";
              showas = "grid";
            };
          }
        ];
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
          ShowExternalHardDrivesOnDesktop = false;
          ShowHardDrivesOnDesktop = false;
          ShowMountedServersOnDesktop = false;
          ShowRemovableMediaOnDesktop = false;
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
