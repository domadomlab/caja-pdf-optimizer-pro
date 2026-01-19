#!/bin/bash
set -e

# Конфигурация
VERSION="3.0.0"
PKG_NAME="caja-pdf-optimizer"
FULL_NAME="${PKG_NAME}_${VERSION}_all"
BASE_DIR="$(cd "$(dirname "$0")/.." && pwd)"
BUILD_DIR="${BASE_DIR}/build"
DIST_DIR="${BASE_DIR}/dist"
SRC_DIR="${BASE_DIR}/src"

echo "=== Building $PKG_NAME v$VERSION ==="

# 1. Очистка
rm -rf "$BUILD_DIR"
mkdir -p "$BUILD_DIR/$FULL_NAME/DEBIAN"
mkdir -p "$BUILD_DIR/$FULL_NAME/usr/bin"
mkdir -p "$BUILD_DIR/$FULL_NAME/usr/share/file-manager/actions"
mkdir -p "$BUILD_DIR/$FULL_NAME/usr/share/doc/$PKG_NAME"

# 2. Копирование скриптов
echo "-> Copying binaries..."
cp "$SRC_DIR/caja-pdf-optimizer" "$BUILD_DIR/$FULL_NAME/usr/bin/"
chmod 755 "$BUILD_DIR/$FULL_NAME/usr/bin/caja-pdf-optimizer"

# 3. Копирование метаданных
echo "-> Copying control files..."
cp "${BASE_DIR}/packaging/debian/control" "$BUILD_DIR/$FULL_NAME/DEBIAN/"
cp "${BASE_DIR}/packaging/debian/postinst" "$BUILD_DIR/$FULL_NAME/DEBIAN/"
chmod 755 "$BUILD_DIR/$FULL_NAME/DEBIAN/postinst"

# 4. Копирование документации
echo "-> Copying documentation..."
cp "${BASE_DIR}/docs/USER_MANUAL.md" "$BUILD_DIR/$FULL_NAME/usr/share/doc/$PKG_NAME/README.md"
cp "${BASE_DIR}/docs/CHANGELOG.md" "$BUILD_DIR/$FULL_NAME/usr/share/doc/$PKG_NAME/CHANGELOG.md"
chmod 644 "$BUILD_DIR/$FULL_NAME/usr/share/doc/$PKG_NAME/"*

# 5. Генерация Actions (.desktop файлов)
echo "-> Generating desktop actions..."
generate_action() {
    ORDER=$1
    DPI=$2
    # Локализация имен
    case $DPI in
        075) LABEL="PDF: Eco (75 dpi)" ;;
        150) LABEL="PDF: Email (150 dpi)" ;;
        200) LABEL="PDF: Print (200 dpi)" ;;
        300) LABEL="PDF: High (300 dpi)" ;;
    esac

    NAME="opt_pdf_${ORDER}_${DPI}.desktop"
    
    cat > "$BUILD_DIR/$FULL_NAME/usr/share/file-manager/actions/$NAME" <<EOF
[Desktop Entry]
Type=Action
Name=$LABEL
Tooltip=Optimize PDF or Word to $DPI DPI
Icon=application-pdf
Profiles=profile-zero;
TargetLocation=true
TargetContext=true
TargetToolbar=true

[X-Action-Profile profile-zero]
MimeTypes=application/pdf;application/msword;application/vnd.openxmlformats-officedocument.wordprocessingml.document;application/vnd.oasis.opendocument.text;
Exec=/usr/bin/caja-pdf-optimizer $DPI %F
Name=Default
EOF
}

generate_action "01" "075"
generate_action "02" "150"
generate_action "03" "200"
generate_action "04" "300"

# 6. Сборка пакета
echo "-> Building .deb..."
mkdir -p "$DIST_DIR"
dpkg-deb --build "$BUILD_DIR/$FULL_NAME" "$DIST_DIR/$FULL_NAME.deb"

# 7. Создание ZIP архива
echo "-> Creating release archive..."
cd "$DIST_DIR"
zip "Caja_PDF_Optimizer_Suite_v${VERSION}_Release.zip" "$FULL_NAME.deb"
cd "$BASE_DIR"

echo "=== Build Complete! ==="
echo "Artifacts are in: $DIST_DIR"