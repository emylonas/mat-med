for md in plant001.md; 
    do { echo '---\ntitle:CIRUELAS MONTESES\nplant-name:CIRUELAS MONTESES\nplant-number:001\nplant-xml:/assets/xml/plant001.xml\nlayout:single-xml\n---'; cat "$md"; } >"$md.tmp" && mv "$md.tmp" "$md"
done