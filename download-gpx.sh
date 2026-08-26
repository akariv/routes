#!/usr/bin/env bash
# Downloads the freely available GPX tracks for the Amstelveen walks list.
# Run it from anywhere:  bash ~/Downloads/routes/download-gpx.sh
# It only writes .gpx files into the folder it lives in. Nothing else.

set -u
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
UA="Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126 Safari/537.36"
ok=0; bad=0

get () { # get <name> <url>
  local name="$1" url="$2" out="$DIR/$1.gpx"
  printf '  %-14s ' "$name"
  curl -sSL --max-time 45 -A "$UA" -H 'Accept: application/gpx+xml,application/xml,*/*' "$url" -o "$out" 2>/dev/null
  if [ -s "$out" ] && head -c 4000 "$out" | grep -qi '<gpx'; then
    printf 'ok   (%s KB)\n' "$(( $(wc -c <"$out") / 1024 ))"; ok=$((ok+1))
  else
    printf 'FAILED — not a GPX (server returned %s bytes)\n' "$(wc -c <"$out" 2>/dev/null || echo 0)"
    mv "$out" "$out.notgpx" 2>/dev/null; bad=$((bad+1))
  fi
}

echo "Saving into: $DIR"
echo

get awd        "https://awd-media.waternet.nl/globalassets/awd/beleef/wandelroutes/tientje-van-waternet/het-tientje-van-waternet.gpx"
get jonker     "https://wandelnet.api.routemaker.nl/content/gpx/wandelnet/1470.gpx"
get vinkeveen  "https://api.ubase.nl/route/download/43574/gpx"
get bos        "https://amstelveen.plaece.nl/route/download/1413/gpx"
get broek      "https://www.laagholland.com/nl/route/route/laarzenpadroute/gpx"
get heide      "https://www.ontdekgooisemeren.nl/nl/route/route/wester-en-bussummerheide-wandelroute/gpx"
get zunderdorp "https://www.routen.be/route/13489/download/gpx"

echo
echo "$ok downloaded, $bad failed."
echo
echo "Anything marked FAILED needs a click in the browser instead — same for these three,"
echo "whose download is a JavaScript button (save each as naardermeer.gpx / oppad.gpx / konik.gpx here):"
echo "  naardermeer  https://www.natuurmonumenten.nl/natuurgebieden/naardermeer/route/wandelroute-laarzenpad-naardermeer"
echo "  oppad        https://www.natuurmonumenten.nl/natuurgebieden/kortenhoefse-plassen/route/wandelroute-oppad-en-kromme-rade-vlak-bij-hilversum"
echo "  konik        https://www.natuurmonumenten.nl/natuurgebieden/nationaal-park-zuid-kennemerland/route/wandelroute-konikroute-nationaal-park-zuid"
echo
echo "Filenames matter — I match them by name. Then tell me and I will draw the tracks."
