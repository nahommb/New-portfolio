#!/bin/bash
set -e

# Install Flutter SDK
git clone https://github.com/flutter/flutter.git -b stable --depth 1
export PATH="$PATH:`pwd`/flutter/bin"

# Enable web support
flutter config --enable-web

# Get dependencies
flutter pub get

# Build for web
flutter build web --release
