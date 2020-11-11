# Open Repair Data Standard

A standard for the collection and sharing of open data on electronics repair.

More information available at the [OpenRepair website](https://openrepair.org/open-data/open-standard/).


## Prerequisites

A "docx" format file in the root folder. A Google document may be exported as "docx".

Each section in the docx file should begin with a string that matches this regex: `^Section [1-9]: ` 

Document tables should not contain merged cells.

Embedded internal links to headings (e.g. See Appendix A) break PDF generation and should be omitted.

Images should be embedded within a "normal text" paragraph.

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

$ `pip install sphinx`

$ `pip install recommonmark`

$ `pip install sphinx_rtd_theme`

$ `make html`

[How to format images in the markup](https://www.sphinx-doc.org/en/master/usage/restructuredtext/basics.html#images)

View output at `./_build/html/index.html`

See conf.py for all configuration options.

Full documentation at [Sphinx Documentation](https://www.sphinx-doc.org/en/master/).

[Documenting Your Project Using Sphinx](https://pythonhosted.org/an_example_pypi_project/sphinx.html)


## PDF Exporter

$ `pip install rst2pdf`

$ `sphinx-build -b pdf ./ ./_pdf`

[rst2pdf: Use a text editor. Make a PDF.](https://github.com/rst2pdf/rst2pdf)

### Notes

The generated file is not well formatted and ends up with the name of the first 
rst file. See _pdf/about.pdf for result.

Compare to _pdf/Open Repair Data Standard v0.2.pdf - Google Doc generated pdf.


