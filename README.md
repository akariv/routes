# Walking Routes around Amsterdam

A small collection of GPX tracks for walks in and around Amsterdam, with an
interactive map viewer served via GitHub Pages.

**View the map:** https://akariv.github.io/routes/

## Contents

- `index.html` — Leaflet-based viewer that draws all tracks on an OpenStreetMap
  base layer. Click a route in the sidebar to zoom to it, click its color
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
