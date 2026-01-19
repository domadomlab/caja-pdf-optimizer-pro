# Caja PDF Optimizer Pro 🚀 (Linux Edition) v3.0.1

[🇷🇺 Русский](README.md) | [🇺🇸 English](README.en.md)

---

**Professional tool for PDF compression and document conversion directly from the Caja context menu.**
**Профессиональный инструмент для сжатия PDF и конвертации документов прямо из контекстного меню Caja.**

---

## ✨ Features / Возможности

### 📘 Word & Office Support
Convert `.docx`, `.doc`, and `.odt` to optimized PDF with one click (powered by LibreOffice).
*Конвертация документов Office в PDF "на лету" без открытия редактора.*

### 🕵️ Camouflage Mode (Privacy 2.0)
Strips real metadata and injects random scanner signatures (HP, Canon, Xerox, etc.). Your digital files look like hardware scans.
*Очистка метаданных и подмена "отпечатков" под реальные офисные сканеры.*

### 📉 Enhanced Compression
JPEG 4:2:0 subsampling and optimized Quality 70 settings for maximum size reduction (up to 90%) with sharp text.
*Продвинутое сжатие (4:2:0) для минимального веса при сохранении читаемости.*

---

## 🚀 Quality Presets / Режимы Сжатия

| Mode | DPI | Use Case | Size Reduction |
| :--- | :--- | :--- | :--- |
| **PDF: Eco** | 75 | Messengers, quick drafts | ~85-95% |
| **PDF: Email** | 150 | Official sharing (Standard) | ~60-80% |
| **PDF: Print** | 200 | Office printing | ~40-60% |
| **PDF: High** | 300 | High-quality archiving | ~10-25% |

---

## 🛠 Installation / Установка

1.  Download the latest `.deb` package from [Releases](https://github.com/domadomlab/caja-pdf-optimizer-pro/releases).
2.  Install it:
    ```bash
    sudo apt install ./caja-pdf-optimizer_3.0.1_all.deb
    ```
3.  Restart Caja:
    ```bash
    caja -q
    ```

---

## 📦 Dependencies / Зависимости
`imagemagick`, `ghostscript`, `libreoffice`, `libnotify-bin`.

---
*(c) 2026 DomCorp. Licensed under MIT.*