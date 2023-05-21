# thesis-USN

Based on the template provided by [CoPCSE@NTNU](https://github.com/COPCSE-NTNU/thesis-NTNU).

The current repository provides a LaTeX thesis template that should in principle be applicable for theses at all study levels – bachelor, master and PhD. It is closely based on the standard LaTeX report document class with added packages and customisations. The purpose of the document provided in `thesis.tex` is threefold. It should serve (i) as a description of the document class, (ii) as an example of how to use it, and (iii) as a thesis template.

The template does not have any official status, and it is not a general USN-level requirement to use it.

## Setting up

You can use the template with [Overleaf](http://overleaf.com), and you are strongly encouraged to do so. The alternative is to install local copy of LaTeX on your laptop (not adviced, huge, difficult).

You should **fork** this repository so that you have your own files to edit and you can always merge with the upstream changes to the template, in case the template is updated.

### Setup using Overleaf

There are two ways for setting up the [**Overleaf**](http://overleaf.com) project with the template:

* Use the `.zip` copy and upload. (NB! Doesn't provide ability to update if
    template changes)
* Fork this repo so that you have your own files to edit.

### Building document locally

The template also provides a simple `Makefile` which allows you to build the document locally. This requires that you have a LaTeX compiler, such as [`texlive`](https://www.tug.org/texlive/), installed locally, which has to provide the commands `pdflatex` and `biber`.
