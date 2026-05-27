#!/usr/bin/env bash

set -e

PLUGIN_DIR="../BulletJournalGraphs"
PLUGIN_INI="${PLUGIN_DIR}/plugin.ini"

VERSION=$(
    grep '^version=' "$PLUGIN_INI" \
    | head -n1 \
    | cut -d'=' -f2
)

PKGNAME="xournalpp-plugin-bulletjournalgraphs-${VERSION}"
PKGDIR="./deb"

mkdir -p "$PKGDIR/usr/share/xournalpp/plugins"
mkdir -p "$PKGDIR/DEBIAN"

cp -r "$PLUGIN_DIR" \
    "$PKGDIR/usr/share/xournalpp/plugins/"

sed "s/@VERSION@/${VERSION}/g" \
    control.input \
    > "$PKGDIR/DEBIAN/control"

dpkg-deb --build --root-owner-group \
    "$PKGDIR" \
    "${PKGNAME}.deb"

rm -rf "$PKGDIR"

echo "Package created: ${PKGNAME}.deb"
