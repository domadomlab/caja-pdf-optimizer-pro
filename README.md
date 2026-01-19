# Caja PDF Optimizer Pro 🚀 (Linux Edition) v3.2.0

[🇷🇺 Русский](README.md) | [🇺🇸 English](README.en.md)

---

**Professional tool for PDF compression and document conversion directly from the Caja context menu.**
**Единственная утилита для Linux, использующая научный подход к сжатию документов через контекстное меню.**

---

## ✨ Features / Возможности

### 🔬 Universal Scientific Engine (New in v3.2.0)
**Trellis-Quantization Mimic** is now applied to ALL modes. Uses **Lanczos filtering** and **adaptive 95% resizing** to remove digital noise and sharpen text.
*Научное сжатие во всех режимах (75-300 DPI). Удаление шума матрицы и интеллектуальная упаковка JPEG.*

### 📘 Word & Office Support
Convert `.docx`, `.doc`, and `.odt` to optimized PDF with one click (powered by LibreOffice).
*Фоновая конвертация документов Office в PDF.*

### 🕵️ Camouflage Mode
Strips real metadata and injects random scanner signatures.
*Маскировка под реальные офисные сканеры.*

---

## 📉 Compression Modes / Режимы Сжатия

| Mode | DPI | Size Reduction | Use Case |
| :--- | :--- | :--- | :--- |
| **PDF: Extreme** | 30 | **-85-90%** | Satellite / Min Size |
| **PDF: Eco** | 75 | **-75-85%** | Web / Messengers |
| **PDF: Email** | 150 | **-60-75%** | Official / Standard |
| **PDF: Print** | 200 | **-40-60%** | Office printing |
| **PDF: High** | 300 | **-20-35%** | Original fidelity |

---

## 🛠 Installation / Установка

1.  Download the latest `.deb` package from [Releases](https://github.com/domadomlab/caja-pdf-optimizer-pro/releases).
2.  Install it:
    ```bash
    sudo apt install ./caja-pdf-optimizer_3.2.0_all.deb
    ```
3.  Restart Caja:
    ```bash
    caja -q
    ```

---

*(c) 2026 DomCorp. Licensed under MIT.*
