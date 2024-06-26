# Open Repair Data Standard

The Open Repair Data Standard (ORDS) is a standard for the collection and sharing of open data on electronics repair.  

This repository contains the source files for building the technical documentation of ORDS.  The published version can be seen at https://standard.openrepair.org, and more information is available at the [OpenRepair website](https://openrepair.org/open-data/open-standard/).


## Prerequisites

A "docx" format file in the root folder. A Google document may be exported as "docx".

A "pdf" format file in the _pdf folder. A Google document may be exported as "pdf". 
Amend the link to the pdf file in _templates/layout.html.

Each section in the docx file should begin with a string that matches this regex: `^Section [1-9]: ` 

Document tables should not contain merged cells.

Embedded internal links to headings only work within the same section as they are converted to anchors.

Images should be embedded within a "normal text" paragraph else they will appear as a heading.

Image files can be exported by saving the (Google) document as "html", find them in the zipfile's images folder.

Place exported image files in `datastandard/media`. 

## Preparation

Install the document converter.

$ `apt install pandoc`

Prepare the source files - converts docx to restructured text and splits sections.

$ `bash prepare.sh -file '<filename>.docx'`

This should produce four files:

* 'about.rst'
* 'governance.rst'
* 'standard.rst'
* 'document.rst'

Edit the sections as necessary.

## Build

Assuming Python and pip are installed:

`$ pip install sphinx`

`$ pip install recommonmark`

`$ pip install sphinx_rtd_theme`

`$ pip install sphinx-rtd-dark-mode`

`$ pip install rst2pdf`

`$ make html`

[How to format images in the markup](https://www.sphinx-doc.org/en/master/usage/restructuredtext/basics.html#images)

View output at `./_build/html/index.html`

! Don't forget to copy the PDF files from the _pdf folder to _build/html/pdf

See conf.py for all configuration options.

Full documentation at [Sphinx Documentation](https://www.sphinx-doc.org/en/master/).

[Documenting Your Project Using Sphinx](https://pythonhosted.org/an_example_pypi_project/sphinx.html)

