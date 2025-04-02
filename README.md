# UofA-dissertation-template-for-linguistics
This LaTeX template is based on [J. J. Charfman's version for Astronomy](https://da.overleaf.com/latex/templates/university-of-arizona-astronomy-thesis-template/tsfqcgnfmjcx) and has been adapted to linguistics, with added support for both XeLaTeX and PDFLaTeX. This has been tested on LaTeX 2023 AND 2024, and is in line with December 2024 Grad College requirements.

To use this template, you can either download the .zip file or clone the repository. Then you can either use it locally with your favourite editor, or on a remote platform such as [Overleaf](https://www.overleaf.com/).

If you know your way around a makefile and have the necessary prerequisites installed, you can also just call `make` or `make -f Makefile` while in the directory. This will generate a `build/` directory where all your files and the compiled PDF will be dumped.


## Building on Github with Github Actions:
In addition, `.github/workflows` contains a `yaml` file, that will compile PDFs on Github in the Actions tab. This uses User xu-cheng's
 [latex-action](https://github.com/xu-cheng/latex-action) workflow. Please see their documentation to modify the `yaml` file to compile the dissertation with your chosen compiler. This Action needs to be maintained and modified whenever Github depreciates the code.

In order to compile on Github, click on Actions > Build Latex Document and start the workflow. In case it doesn't work out of the box for a fork, copy the code in `.github/workflows/make_xelatex.yaml` into a fresh file with the same extension and delete the original file. Follow the instructions in the workflow window by clicking in the build window. This will lead you to the location of the PDF file, whose url should be printed like this: `Artifact download URL: https://github.com/meghavarshini/UofA-dissertation-template-for-linguistics/actions/runs/XXXXXXX/artifacts/XXXXX`
Happy writing.
