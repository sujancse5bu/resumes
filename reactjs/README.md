# Sujan Mridha - React.js Developer Resume (LaTeX)

This directory contains the modular LaTeX source files and fonts for the single-page resume matching the exact layout, teal color palette (`#00786C`), and Poppins typography from the source PDF.

---

## 📁 File Structure

| File | Description |
| :--- | :--- |
| [`main.tex`](file:///e:/web/resumes/reactjs/main.tex) | Main LaTeX resume file containing your content and structured sections. |
| [`resume.cls`](file:///e:/web/resumes/reactjs/resume.cls) | Modern LaTeX class defining geometry, typography, color palette, and custom macros. |
| [`fonts/`](file:///e:/web/resumes/reactjs/fonts) | Official Google Font Poppins TrueType files (`Poppins-Light`, `Poppins-ExtraLight`, `Poppins-SemiBold`, `Poppins-Regular`, `Poppins-Bold`, `Poppins-Medium`, `Poppins-Italic`). |

---

## 📑 Section Order

1. **Header & Contact Information**
2. **Professional Summary**
3. **SKILLS** (Frontend, Backend & APIs, Databases, Cloud & DevOps)
4. **WORK EXPERIENCE** (Lyxa SAL, Flux IT)
5. **PROJECTS** (Lyxa Console Panels, BIOVICA, Connectivity Wise, Skim Legal)
6. **EDUCATION**
   - M.Sc. in CSE — University of Barishal (2023 – 2024, CGPA: 3.04)
   - B.Sc. in CSE — University of Barishal (2018 – 2022, CGPA: 3.19)

---

## 🎨 Color Palette & Typography

- **Primary Color:** `#00786C` (`rgb(0, 120, 108)`) — Candidate name and section headers.
- **Text Color:** `#1A1A1A` / `#000000` — High-contrast dark charcoal and black.
- **Font Family:** **Poppins** (Google Fonts)
  - `Poppins-SemiBold` (600) — Name, role, company names, job titles, degrees, project names, skill categories.
  - `Poppins-Light` (300) — Body text, descriptions, bullet points, education details, contact information.
  - `Poppins-ExtraLight` (200) — Uppercase letter-spaced section titles.

---

## ⚙️ How to Compile

Compile with **XeLaTeX** or **LuaLaTeX**:

```bash
# Using XeLaTeX
xelatex main.tex

# Or using LuaLaTeX
lualatex main.tex
```

> **Note:** The template automatically uses the TTF fonts in the [`fonts/`](file:///e:/web/resumes/reactjs/fonts) directory if Poppins is not installed globally on your operating system.
