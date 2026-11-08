#!/usr/bin/env bash
# Installs the Movie Maker templates into DaVinci Resolve (macOS / Linux).
# Close DaVinci Resolve before running, then reopen it afterwards.
set -e
SRC="$(cd "$(dirname "$0")" && pwd)"

case "$(uname -s)" in
  Darwin) DEST="$HOME/Library/Application Support/Blackmagic Design/DaVinci Resolve/Fusion/Templates/Edit" ;;
  Linux)  DEST="$HOME/.local/share/DaVinciResolve/Fusion/Templates/Edit" ;;
  *) echo "Unsupported OS. Copy the folders manually (see README)."; exit 1 ;;
esac

for T in Transitions Titles Effects; do
  mkdir -p "$DEST/$T/Movie Maker"
  cp "$SRC/$T/Movie Maker/"*.setting "$DEST/$T/Movie Maker/"
  echo "Installed $T"
done
echo
echo "Done! Restart DaVinci Resolve and look for \"Movie Maker\" in the Effects Library."
