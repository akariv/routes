# Walks Within Riding Distance

A guide to walks within riding distance of Amstelveen, with the GPX tracks
that go with them, served via GitHub Pages.

**View the guide:** https://akariv.github.io/routes/

## Contents

- `index.html` — the guide itself: nineteen walks ordered by riding distance
  from Amstelveen, with terrain/distance/kids filters, a radial overview map,
  and (for the ten walks with a freely available GPX) an embedded track shape
  that opens into a pannable OpenStreetMap view. The button under the radial
  map opens all ten tracks together on one map, colored by landscape.
- `map.html` — a simple Leaflet viewer that draws all downloaded GPX tracks
  on one map. Click a route in the sidebar to zoom to it, click its color
  swatch to toggle it, and use the ⇩ link to download the GPX file.
- `*.gpx` — the tracks themselves:

| File | Route |
| --- | --- |
| `awd.gpx` | Het Tientje van Waternet (Amsterdamse Waterleidingduinen) |
| `bos.gpx` | Amsterdamse Bos |
| `broek.gpx` | Laarzenpad (Broek in Waterland) |
| `heide.gpx` | Wester- en Bussumerheide |
| `jonker.gpx` | Nieuwkoop |
| `vinkeveen.gpx` | Vinkeveense Plassen & Baambrugge |
| `amsterdam_circularwalk-13km-zunderdorp-ransdorp-durgerdam.gpx` | Zunderdorp – Ransdorp – Durgerdam (13 km) |
| `781-laarzenpad-naardermeer-jan-2017.gpx` | Laarzenpad Naardermeer |
| `352-oppad-en-kromme-rade.gpx` | Oppad en Kromme Rade |
| `map_0.gpx` | Konikroute (Nationaal Park Zuid-Kennemerland) |

- `download-gpx.sh` / `download-gpx-round2.sh` — the scripts originally used to
  fetch the freely available tracks from their sources.

## Sources

Tracks come from the route publishers linked inside the download scripts
(Waternet, Wandelnet, Natuurmonumenten, Laag Holland, Ontdek Gooise Meren,
plaece.nl, routen.be, gps-route.org). All are freely downloadable walking
routes; rights remain with their respective publishers.
