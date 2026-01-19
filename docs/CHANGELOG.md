# 📜 Changelog (История изменений)

## [3.1.2] - 2026-01-19
### Added
*   **Extreme Mode (Min Size):** New scientific compression preset using Trellis-Quantization Mimic.
*   **Optimized Pipeline:** Updated ImageMagick core logic for better SSIM results.

## [3.0.1] - 2026-01-19
### Added
*   **Word to PDF Conversion:** Added silent conversion for `.docx`, `.doc`, and `.odt` files using LibreOffice headless mode.
*   **Camouflage Mode:** Implemented fake scanner metadata injection (HP, Canon, Xerox, etc.) to match the Windows version features.
*   **Enhanced Compression:** Optimized ImageMagick parameters with JPEG 4:2:0 subsampling and quality 70.
*   **New Notifications:** System tray notifications now include compression statistics (percentage and final size).
*   **Unified UI:** Context menu labels now follow the "PDF: [Mode] ([DPI] dpi)" format.

## [2.0.3] - 2026-01-18
### Added
*   Added LICENSE file.
*   Updated project configuration (.gitignore).

## [2.0.2] - 2026-01-16
### Documentation
*   Инструкция пользователя (`README.md`) теперь включена в состав пакета (`/usr/share/doc/...`).
*   Структура проекта приведена к стандартам Debian Policy.

## [2.0.1] - 2026-01-16
### Fixed
*   Исправлена проблема дублирования пунктов меню при многократной установке.
*   Добавлен `postinst` скрипт для автоматической очистки `~/.local/share/file-manager/actions/` от старых версий.

## [2.0.0] - 2026-01-16
### Changed
*   **Движок:** Полная миграция с GIMP Script-Fu на **ImageMagick**. Ускорение обработки в 10+ раз.
*   **Стабильность:** Устранена проблема падения скриптов на именах файлов с пробелами и кириллицей.
### Added
*   **Smart Size Detection:** Скрипт проверяет, стал ли файл меньше. Если нет — операция отменяется с уведомлением.
*   **Notifications:** Интеграция с системным треем (`notify-send`).

## [1.0.0] - 2026-01-16
### Initial Release
*   Базовая интеграция в Caja.
*   4 пресета качества (75, 150, 200, 300 DPI).
