
# Extract the app files from outside AppImage

[ ! -f "${WINEPREFIX}/already_copied" ] && {
  for item in "${HERE}"/prefix/drive_c/*; do
  [ ! "${item}" == "${HERE}/prefix/drive_c/windows" ] && {
    cp -r "${item}" "${WINEPREFIX}/drive_c"
  }
  done
  touch "${WINEPREFIX}/already_copied"
}


# Extract the app files from outside AppImage

[ ! -f "${WINEPREFIX}/already_copied" ] && {
  for item in "${HERE}"/prefix/drive_c/*; do
  [ ! "${item}" == "${HERE}/prefix/drive_c/windows" ] && {
    cp -r "${item}" "${WINEPREFIX}/drive_c"
  }
  done
  touch "${WINEPREFIX}/already_copied"
}


# Extract the app files from outside AppImage

[ ! -f "${WINEPREFIX}/already_copied" ] && {
  for item in "${HERE}"/prefix/drive_c/*; do
  [ ! "${item}" == "${HERE}/prefix/drive_c/windows" ] && {
    cp -r "${item}" "${WINEPREFIX}/drive_c"
  }
  done
  touch "${WINEPREFIX}/already_copied"
}

