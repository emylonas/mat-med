for txt in *.md; do
    { echo '---\ntitle: CIRUELAS MONTESES\nplant-name: 1 CIRUELAS MONTESES\nplant-number: 001\nplant-xml: /assets/xml/plant001.xml\nlayout: single-xml\n'; cat "$md"; } >"$md.tmp" && mv "$md.tmp" "$md"
done