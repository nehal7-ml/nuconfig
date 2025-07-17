
# env.nu
#
# Installed by:
# version = "0.104.1"
#
# Previously, environment variables were typically configured in `env.nu`.
# In general, most configuration can and should be performed in `config.nu`
# or one of the autoload directories.
#
# This file is generated for backwards compatibility for now.
# It is loaded before config.nu and login.nu
#
# See https://www.nushell.sh/book/configuration.html
#
# Also see `help config env` for more options.
#
# You can remove these comments if you want or leave
# them for future reference.
# bun completions
# [ -s "/home/nehal/.bun/_bun" ] ; source "/home/nehal/.bun/_bun"

if not ($env |  'VOLTA_HOME' in $env) {
    # If VOLTA_HOME is not a column in $env, define it.
    $env.VOLTA_HOME = ($env.HOME | path join ".volta")
}


let volta_home = ($env.VOLTA_HOME | default ($env.HOME | path join ".volta"))

$env.PATH = ($env.PATH
    | append ($env.HOME + '/.local/bin')
	  | append ('/snap/bin')
    | append ($env.HOME + '/.cargo/bin')
    | prepend ($volta_home | path join "bin"))




zoxide init nushell | save -f ~/.zoxide.nu
