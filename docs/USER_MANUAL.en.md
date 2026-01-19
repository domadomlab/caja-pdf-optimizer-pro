# 📘 User Manual
> **Caja PDF Optimizer Suite v3.0.1**

[🇷🇺 На русском](../README.md) | [🇺🇸 English](../README.en.md)

## ⚙️ Installation

### Via DEB Package (Recommended)
1.  Go to the `dist/` directory.
2.  Install the package:
    ```bash
    sudo apt install ./caja-pdf-optimizer_3.0.1_all.deb
    ```
3.  **Restart Caja** to update the menu:
    ```bash
    caja -q
    ```

## 🎮 Usage
1.  Open **Caja** file manager.
2.  Right-click on any **PDF, DOCX, or DOC file**.
3.  Select **PDF: Email (150 DPI)**.
4.  Wait for the notification:
    > "Done: test.docx (Squeezed by 75%)"

## 🎚️ Quality Presets

| Mode | DPI | Use Case |
| :--- | :--- | :--- |
| **PDF: Eco** | 75 | **Web / Email** (Maximum compression) |
| **PDF: Email** | 150 | **Office / Standard** (Balanced) |
| **PDF: Print** | 200 | **Archive / High** (Important docs) |
| **PDF: High** | 300 | **Print** (Original fidelity) |

## ❓ FAQ

**Q: The compressed file is larger than the original!**
A: This happens if the original was a vector PDF (text-only) and you converted it to a raster image. The tool is designed for scans and images. Smart Detection will warn you about this.

**Q: Menu entry did not appear.**
A: Ensure you ran `caja -q`. Also check if `caja-actions` or `caja-extensions-common` is installed.

---
*© 2026 Dom Corp. All rights reserved.*
