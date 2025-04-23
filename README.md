# UofA-dissertation-template-for-linguistics
This LaTeX template is based on [J. J. Charfman's version for Astronomy](https://da.overleaf.com/latex/templates/university-of-arizona-astronomy-thesis-template/tsfqcgnfmjcx) and has been adapted to linguistics, with added support for both XeLaTeX and PDFLaTeX. This has been tested on LaTeX 2023 AND 2024, and is in line with December 2024 Grad College requirements.

To use this template, you can either download the .zip file or clone the repository. Then you can either use it locally with your favourite editor, or on a remote platform such as [Overleaf](https://www.overleaf.com/).

If you know your way around a makefile and have the necessary prerequisites installed, you can also just call `make` or `make -f Makefile` while in the directory. This will generate a `build/` directory where all your files and the compiled PDF will be dumped.

The main file that brings the dissertation together is `dissertation.tex`. This assigns a class for the document, and calls all necessary packages. Please read throught the comments to understand how to edit the dissertation details, include the required pre-content sections (such as the dedication, ToC, Titlepage, etc.), add chapters, and set the bibliography. Always add necessary packages to this file.

The various sections and chapters are located in the folder `sections`. Each section is a `.tex` that is called by `dissertation.tex`, and has sample text. 
Despite their file type, these files do not contain package information or a preamble, as their contents are appended to `dissertation.tex`. Including a preamble or packages in these sections will return errors.
It is recommended to begin each section with `%!TEX root = ../dissertation.tex`. This ensures that if you accidentally try to compile a section, the compiler actually calls `dissertation.tex` instead, thus returning the document.

## Building on Github with Github Actions:
In addition, `.github/workflows` contains a `yaml` file, that will compile PDFs on Github in the Actions tab. This uses User xu-cheng's
 [latex-action](https://github.com/xu-cheng/latex-action) workflow. Please see their documentation to modify the `yaml` file to compile the dissertation with your chosen compiler. This Action needs to be maintained and modified whenever Github depreciates the code.

In order to compile on Github, click on Actions > Build Latex Document and start the workflow. In case it doesn't work out of the box for a fork, copy the code in `.github/workflows/make_xelatex.yaml` into a fresh file with the same extension and delete the original file. Follow the instructions in the workflow window by clicking in the build window. This will lead you to the location of the PDF file, whose url should be printed like this: `Artifact download URL: https://github.com/[USER]/UofA-dissertation-template-for-linguistics/actions/runs/XXXXXXX/artifacts/XXXXX`
Happy writing.
