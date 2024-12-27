#
# Toolbx
#
# Toolbx is a tool for Linux, which allows the use of interactive command line environments for software development and troubleshooting the host operating system, without having to install software on the host
# Link: https://containertoolbx.org/

# ------------------------------------------------------------------------------
# Configuration
# ------------------------------------------------------------------------------

SPACESHIP_TOOLBX_SHOW="${SPACESHIP_TOOLBX_SHOW=true}"
SPACESHIP_TOOLBX_ASYNC="${SPACESHIP_TOOLBX_ASYNC=true}"
SPACESHIP_TOOLBX_PREFIX="${SPACESHIP_TOOLBX_PREFIX="$SPACESHIP_PROMPT_DEFAULT_PREFIX"}"
SPACESHIP_TOOLBX_SUFFIX="${SPACESHIP_TOOLBX_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_TOOLBX_SYMBOL="${SPACESHIP_TOOLBX_SYMBOL="🔧 "}"
SPACESHIP_TOOLBX_COLOR="${SPACESHIP_TOOLBX_COLOR="#613583"}"

# ------------------------------------------------------------------------------
# Section
# ------------------------------------------------------------------------------

# Show toolbx status
# spaceship_ prefix before section's name is required!
# Otherwise this section won't be loaded.
spaceship_toolbx() {
  # If SPACESHIP_TOOLBX_SHOW is false, don't show toolbox section
  [[ $SPACESHIP_TOOLBX_SHOW == false ]] && return

  # Check if toolbox is available for execution
  spaceship::exists toolbox || return

  # Check if toolbox_prompt_info is available for execution
  spaceship::exists toolbox_prompt_info || return

  local _version="$(toolbox --version | cut -b17-)"

  # If not in toolbx, exit
  [[ "$(toolbox_prompt_info)" == "" ]] && return

  # Display toolbox section
  # spaceship::section utility composes sections. Flags are optional
  spaceship::section::v4 \
    --color "$SPACESHIP_TOOLBX_COLOR" \
    --prefix "$SPACESHIP_TOOLBX_PREFIX" \
    --suffix "$SPACESHIP_TOOLBX_SUFFIX" \
    --symbol "$SPACESHIP_TOOLBX_SYMBOL" \
    "$_version"
}
