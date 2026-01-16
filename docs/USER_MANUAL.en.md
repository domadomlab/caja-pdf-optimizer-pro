# 📘 User Manual
> **Caja PDF Optimizer Suite v2.0.2**

[🇷🇺 На русском](../README.md) | [🇺🇸 English](../README.en.md)

## ⚙️ Installation

### Via DEB Package (Recommended)
1.  Go to the `dist/` directory (or download the release).
2.  Install the package:
    ```bash
    sudo dpkg -i caja-pdf-optimizer_2.0.2_all.deb
    sudo apt-get install -f
    ```
3.  **Restart Caja** to update the menu:
    ```bash
    caja -q
    ```

## 🎮 Usage
1.  Open **Caja** file manager.
2.  Right-click on any **PDF file**.
3.  Select **Caja-Actions actions** -> **Optimize PDF (150 DPI)**.
4.  Wait for the notification:
    > "Done: 5.2MB -> 1.1MB"

## 🎚️ Quality Presets

| Mode | DPI | Use Case |
| :--- | :--- | :--- |
| **075 DPI** | 75 | **Web / Email** (Maximum compression) |
| **150 DPI** | 150 | **Office / Standard** (Balanced) |
| **200 DPI** | 200 | **Archive / High** (Important docs) |
| **300 DPI** | 300 | **Print** (Print quality) |

## ❓ FAQ

**Q: The compressed file is larger than the original!**
A: This happens if the original was a vector PDF (text-only) and you converted it to a raster image. The tool is designed for scans and images. Smart Detection will warn you about this.

**Q: Menu entry did not appear.**
A: Ensure you ran `caja -q`. Also check if `caja-actions` or `caja-extensions-common` is installed.

---
*© 2026 Dom Corp. All rights reserved.*
