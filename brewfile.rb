# Applications
cask "warp"
cask "lulu"
cask "cloudflare-warp"
cask "brave-browser"
cask "1password"
cask "github"
cask "visual-studio-code"
brew "pnpm"
brew "yarn"
cask "sync"
cask "polypane"
cask "adobe-creative-cloud"
cask "figma"
cask "raycast"
cask "slack"
cask "discord"
cask "spotify"
cask "zoom"

# Fonts
cask "font-inter"
cask "font-libre-franklin"
cask "font-meslo-for-powerlevel10k"

# Install VS Code extensions
vscode_extensions = [
  "aaron-bond.better-comments",
  "ambar.bundle-size",
  "bradlc.vscode-tailwindcss",
  "christian-kohler.path-intellisense",
  "davidanson.vscode-markdownlint",
  "dbaeumer.vscode-eslint",
  "ecmel.vscode-html-css",
  "esbenp.prettier-vscode",
  "fabiospampinato.vscode-diff",
  "formulahendry.auto-rename-tag",
  "irongeek.vscode-env",
  "jock.svg",
  "mechatroner.rainbow-csv",
  "mongodb.mongodb-vscode",
  "mquandalle.graphql",
  "ms-azuretools.vscode-docker",
  "ms-vscode-remote.remote-containers",
  "ms-vscode-remote.remote-ssh",
  "ms-vscode-remote.remote-ssh-edit",
  "ms-vscode-remote.vscode-remote-extensionpack",
  "ms-vscode.js-debug-nightly",
  "ms-vscode.remote-explorer",
  "ms-vscode.remote-server",
  "pkief.material-icon-theme",
  "quicktype.quicktype",
  "ritwickdey.liveserver",
  "stalyo.select-quotes",
  "tyriar.lorem-ipsum",
  "unifiedjs.vscode-mdx",
  "unional.vscode-sort-package-json",
  "wmaurer.change-case",
  "yatki.vscode-surround",
  "yoavbls.pretty-ts-errors",
  "yzhang.markdown-all-in-one"
]

vscode_extensions.each do |extension|
  system "code --install-extension #{extension} || true"
end
