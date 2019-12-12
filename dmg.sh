rtf2r/rtf2r -l 5000 license.rtf
rtf2r/rtf2r -l 5005 license-ja.rtf

hdiutil create -volname test -srcfolder test -ov -format UDZO test.dmg

hdiutil convert -format UDCO test.dmg -o test.ro

hdiutil unflatten test.ro.dmg

Rez -a base.r -o test.ro.dmg
Rez -a license.r -o test.ro.dmg
Rez -a license-ja.r -o test.ro.dmg

hdiutil flatten test.ro.dmg

rm license.r
rm license-ja.r
rm test.dmg
mv test.ro.dmg test.dmg

