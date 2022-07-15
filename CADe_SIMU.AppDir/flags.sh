
# Changes the default Wine colors to the KDE Plasma Breeze theme

cp --no-clobber "${HERE}/default.reg" "${WINEPREFIX}/"

cat >> "${WINEPREFIX}/default.reg" <<\EOF

[HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ThemeManager]
"ThemeActive"="0"

[HKEY_CURRENT_USER\Control Panel\Colors]
"ActiveBorder"="239 240 241"
"ActiveTitle"="71 80 87"
"AppWorkSpace"="239 240 241"
"Background"="26 26 26"
"ButtonAlternateFace"="179 180 181"
"ButtonDkShadow"="248 249 249"
"ButtonFace"="239 240 241"
"ButtonHilight"="248 249 249"
"ButtonLight"="179 180 181"
"ButtonShadow"="179 180 181"
"ButtonText"="0 0 0"
"GradientActiveTitle"="71 80 87"
"GradientInactiveTitle"="239 240 241"
"GrayText"="100 101 102"
"Hilight"="61 174 233"
"HilightText"="255 255 255"
"HotTrackingColor"="61 174 233"
"InactiveBorder"="239 240 241"
"InactiveTitle"="239 240 241"
"InactiveTitleText"="189 195 195"
"InfoText"="0 0 0"
"InfoWindow"="255 255 225"
"Menu"="248 249 249"
"MenuBar"="239 240 241"
"MenuHilight"="61 174 233"
"MenuText"="0 0 0"
"Scrollbar"="239 240 241"
"TitleText"="255 255 255"
"Window"="255 255 255"
"WindowFrame"="179 180 181"
"WindowText"="0 0 0"

EOF
# Extract the app files from outside AppImage

[ ! -f "${WINEPREFIX}/already_copied" ] && {
  for item in "${HERE}"/prefix/drive_c/*; do
  [ ! "${item}" == "${HERE}/prefix/drive_c/windows" ] && {
    cp -r "${item}" "${WINEPREFIX}/drive_c"
  }
  done
  touch "${WINEPREFIX}/already_copied"
}


cp --no-clobber "${HERE}/default.reg" "${WINEPREFIX}/"
echo '[HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ThemeManager]' >> "${WINEPREFIX}/default.reg"
echo '"ThemeActive"="0"' >> "${WINEPREFIX}/default.reg"

