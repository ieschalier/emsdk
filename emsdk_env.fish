# This script is sourced by the user and uses
# their shell. Try not to use bashisms.

# Do not execute this script without sourcing,
# because it won't have any effect then.
# That is, always run this script with
#
#     . ./emsdk_env.sh
# or
#     source ./emsdk_env.sh
#
# instead of just plainly running with
#
#     ./emsdk_env.sh
#
# which won't have any effect.

set SRC "$BASH_SOURCE"
if test "$SRC" = ""
  set SRC "$0"
end
set -x CURDIR $PWD
cd (dirname "$SRC")
set -e SRC

./emsdk construct_env $argv
. ./emsdk_set_env.sh

cd $CURDIR
