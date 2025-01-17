#!/bin/bash

# Dowload the AppImage packager
wget -c https://github.com/sudo-give-me-coffee/wine32-deploy/releases/download/continuous/Wine-4.21-x86_64.AppImage

# Make it executable
chmod +x Wine-4.21-x86_64.AppImage

# Create a bottle
./Wine-4.21-x86_64.AppImage create-bottle "CADe_SIMU"

# ./Wine-4.21-x86_64.AppImage install "CADe_SIMU" src/CADe_SIMU_V3\ Idioma_3.0/CADe_SIMU.exe

# Copy source files
cp -pr src/CADe_SIMU_V3\ Idioma_3.0 CADe_SIMU/prefix/drive_c/Program\ Files

# Set main executable
./Wine-4.21-x86_64.AppImage set-main-executable "CADe_SIMU" "C:\Program Files\CADe_SIMU_V3 Idioma_3.0\CADe_SIMU.exe"

# Set name
./Wine-4.21-x86_64.AppImage set-name "CADe_SIMU" "CADe_SIMU"

# Set icon
./Wine-4.21-x86_64.AppImage set-icon "CADe_SIMU" "src/CADe_SIMU.png"

# Set category
./Wine-4.21-x86_64.AppImage set-category "CADe_SIMU" "Office"

# Create appdir
./Wine-4.21-x86_64.AppImage create-appdir "CADe_SIMU"

# Test
# ./Wine-4.21-x86_64.AppImage test CADe_SIMU

# Try to minimize the package
echo "[Question] Minimizing the package will remove unused files, and you'll need to confirm their removal."
echo "The application will open, just enter the password (4962) and close it. Then a list of unused will appear."
read -p "Do you want to minimize the package? (y/N): " response

if [[ "$response" == "y" ]]; then
  ./Wine-4.21-x86_64.AppImage minimize CADe_SIMU
fi

# Search for missing dlls
echo ""
echo "The application will open to search for missing dlls, just explore its functions and close the app. The password is 4962."
read -p "Press any key to continue. " response
./Wine-4.21-x86_64.AppImage search-for-missing-dlls CADe_SIMU

# Finally, package
echo ""
echo ""
echo "Packaging..."
./Wine-4.21-x86_64.AppImage package CADe_SIMU
