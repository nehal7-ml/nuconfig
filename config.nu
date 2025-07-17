
# config.nu
#
# Installed by:
# version = "0.104.1"
#
# This file is used to override default Nushell settings, define
# (or import) custom commands, or run any other startup tasks.
# See https://www.nushell.sh/book/configuration.html
#
# This file is loaded after env.nu and before login.nu
#
# You can open this file in your default editor using:
# config nu
#
# See `help config nu` for more options
#
# You can remove these comments if you want or leave

# them for future reference.

$env.config.shell_integration.osc133 = false
$env.config.show_banner = false

mkdir ($nu.data-dir | path join "vendor/autoload")
starship init nu | save -f ($nu.data-dir | path join "vendor/autoload/starship.nu")

alias nvm = zsh ~/.nvm/nvm.sh 

source ~/.zoxide.nu

# android sdk
#
alias emulator = /home/nehal/Android/sdk/emulator/emulator
alias android-studio = /usr/local/android-studio/bin/studio
alias adb = /home/nehal/Android/sdk/platform-tools/adb

alias cd = z 

~/wsl/WSLHostPatcher.exe
nu ~/.config/nushell/scripts/display_banner.nu
