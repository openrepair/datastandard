# Open Repair Data Standard

A standard for the collection and sharing of open data on electronics repair.

More information available at the [OpenRepair website](https://openrepair.org/open-data/open-standard/).


## Requirements

Export the Google document in "docx" format to root folder.

Install the document converter.

$ `apt install pandoc`

Prepare the source files - converts docx to markdown (strict) and splits sections.

$ `bash prepare.sh -file '<filename>.docx'`

This should produce four files:

* 'about.md'
* 'governance.md'
* 'standard.md'
* 'document.md'

Edit the sections as necessary.

##### _To Do: reduce the need for edits:_

* _Specify docx formatting rules_
* _Investigate strict markdown issues, e.g. tables_


## Build

Assuming Python and pip are installed:

$ `pip install sphinx`

$ `pip install recommonmark`

$ `pip install sphinx_rtd_theme`

$ `make html`

View output at `./_build/html/index.html`

See conf.py for all configuration options.

Full documentation at [Read the Docs](https://docs.readthedocs.io/).



