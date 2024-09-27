# Expand save panel by default

defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# Expand print panel by default

defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

# Save to disk (not to iCloud) by default

defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# Set Help Viewer windows to non-floating mode

defaults write com.apple.helpviewer DevMode -bool true

# Disable automatic capitalization as it’s annoying when typing code

defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

# Disable smart dashes as they’re annoying when typing code

defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# Disable automatic period substitution as it’s annoying when typing code

defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false

# Disable smart quotes as they’re annoying when typing code

defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# Disable auto-correct

defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Increase sound quality for Bluetooth headphones/headsets

defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40

# Disable press-and-hold for keys in favor of key repeat

defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# Save screenshots to the desktop

defaults write com.apple.screencapture location -string "${HOME}/Desktop"

# Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)

defaults write com.apple.screencapture type -string "png"

# Disable shadow in screenshots

defaults write com.apple.screencapture disable-shadow -bool true

# Enable subpixel font rendering on non-Apple LCDs

# Reference: https://github.com/kevinSuttle/macOS-Defaults/issues/17#issuecomment-266633501

defaults write NSGlobalDomain AppleFontSmoothing -int 1

# Enable HiDPI display modes (requires restart)

sudo defaults write /Library/Preferences/com.apple.windowserver DisplayResolutionEnabled -bool true

# Finder: disable window animations and Get Info animations

defaults write com.apple.finder DisableAllAnimations -bool true

# Show icons for hard drives, servers, and removable media on the desktop

defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Finder: show all filename extensions

defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Finder: show status bar

defaults write com.apple.finder ShowStatusBar -bool true

# Finder: show path bar

defaults write com.apple.finder ShowPathbar -bool true

# Display full POSIX path as Finder window title

defaults write com.apple.finder \_FXShowPosixPathInTitle -bool true

# When performing a search, search the current folder by default

defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Avoid creating .DS_Store files on network or USB volumes

defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# Use list view in all Finder windows by default

# Four-letter codes for the other view modes: `icnv`, `clmv`, `glyv`

defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# Expand the following File Info panes:

# “General”, “Open with”, and “Sharing & Permissions”

defaults write com.apple.finder FXInfoPanesExpanded -dict \
 General -bool true \
 OpenWith -bool true \
 Privileges -bool true

# Wipe all (default) app icons from the Dock

# This is only really useful when setting up a new Mac, or if you don’t use

# the Dock to launch apps.

defaults write com.apple.dock persistent-apps -array

# Don’t animate opening applications from the Dock

defaults write com.apple.dock launchanim -bool false

# Disable Dashboard

defaults write com.apple.dashboard mcx-disabled -bool true

# Don’t show Dashboard as a Space

defaults write com.apple.dock dashboard-in-overlay -bool true

# Don’t automatically rearrange Spaces based on most recent use

defaults write com.apple.dock mru-spaces -bool false

# Remove the auto-hiding Dock delay

defaults write com.apple.dock autohide-delay -float 0

# Remove the animation when hiding/showing the Dock

defaults write com.apple.dock autohide-time-modifier -float 0

# Set delay on dock to 1000 seconds to effectively disable it

defaults write com.apple.Dock autohide-delay -float 1000

# Disable hot corners

defaults write com.apple.dock wvous-tl-corner -int 0
defaults write com.apple.dock wvous-tr-corner -int 0
defaults write com.apple.dock wvous-bl-corner -int 0
defaults write com.apple.dock wvous-br-corner -int 0

# Prevent Time Machine from prompting to use new hard drives as backup volume

defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

# Disable local Time Machine backups

hash tmutil &> /dev/null && sudo tmutil disablelocal

# Prevent Photos from opening automatically when devices are plugged in

defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true

# Disable opening and closing window animations

defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false

# Disable “natural” (Lion-style) scrolling

defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# Restart dock

killall Dock
