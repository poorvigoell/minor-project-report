# Minor Project Report — LaTeX Source

**Project Title:** Pheromone-Guided Graph Neural Networks for Adaptive Fraud Ring Detection in Dynamic Lending Networks

**Institution:** Indira Gandhi Delhi Technical University for Women (IGDTUW)

**Team:** Poorvi, Saniya, Sanya Saxena

---

## How to Compile (Overleaf)

1. Upload the zip (or clone and upload) to [Overleaf](https://overleaf.com)
2. Set the **main document** to `main.tex`
3. Set the **compiler** to `pdfLaTeX`
4. Click **Recompile**

## How to Compile (Local)

Requires a full TeX distribution (TeX Live / MiKTeX) with `biber` and `makeglossaries`:

```bash
pdflatex main.tex
biber main
makeglossaries main
pdflatex main.tex
pdflatex main.tex
```

Or simply run:

```bash
latexmk -pdf main.tex
```

## Project Structure

```
├── main.tex                  # Root document
├── ecproject.sty             # IGDTUW house style
├── .latexmkrc                # latexmk config (Overleaf + local)
├── AuxFiles/
│   ├── Packages.tex          # All usepackage declarations
│   ├── ProjectBib.bib        # Bibliography (28 entries, IEEE style)
│   └── Glossaries.tex        # Acronyms & symbols
├── Chapter1/                 # Introduction (Saniya)
├── Chapter2/                 # Literature Review (Saniya 2.1 & 2.3, Poorvi 2.2)
├── Chapter3/                 # System Design & Methodology (Poorvi)
├── Chapter4/                 # Implementation (Poorvi & Sanya)
├── Chapter5/                 # Results & Discussion (Saniya)
├── Chapter6/                 # Conclusion & Future Scope (Team)
├── CoverPages/               # Abstract, Certificate, Declaration, Ack, Plagiarism
├── Appendix/                 # Appendix
└── Figures/                  # All figures (PNG)
```
