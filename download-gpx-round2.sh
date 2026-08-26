#!/usr/bin/env bash
# Round 2: the two that returned an HTML page last time. I dug the real
# download endpoints out of that HTML, so these should work now.
set -u
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
UA="Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126 Safari/537.36"
get () {
  local name="$1" url="$2" out="$DIR/$1.gpx"
  printf '  %-12s ' "$name"
  curl -sSL --max-time 45 -A "$UA" "$url" -o "$out" 2>/dev/null
  if [ -s "$out" ] && head -c 4000 "$out" | grep -qi '<gpx'; then
    printf 'ok   (%s KB)\n' "$(( $(wc -c <"$out") / 1024 ))"
  else
    printf 'still not GPX (%s bytes)\n' "$(wc -c <"$out" 2>/dev/null || echo 0)"
    mv "$out" "$out.notgpx" 2>/dev/null
  fi
}
echo "Saving into: $DIR"; echo
get broek "https://odp.laagholland.com/route/download/1365/gpx?stream=1"
get heide "https://hilversum.plaece.nl/route/download/17378/gpx?stream=1"
echo
echo "Still worth a browser click if you fancy three more (save into this folder"
echo "under exactly these names). On each page use the 'Download de route' button:"
echo "  naardermeer.gpx  https://www.natuurmonumenten.nl/natuurgebieden/naardermeer/route/wandelroute-laarzenpad-naardermeer"
echo "  oppad.gpx        https://www.natuurmonumenten.nl/natuurgebieden/kortenhoefse-plassen/route/wandelroute-oppad-en-kromme-rade-vlak-bij-hilversum"
echo "  konik.gpx        https://www.natuurmonumenten.nl/natuurgebieden/nationaal-park-zuid-kennemerland/route/wandelroute-konikroute-nationaal-park-zuid"
echo "And one more, via the 'Download this route' button:"
echo "  zunderdorp.gpx   https://www.gps-route.org/hike/netherlands/northholland/amsterdam/circularwalk-13km-zunderdorp-ransdorp-durgerdam"
