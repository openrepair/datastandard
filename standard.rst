
The Standard
=======================

Guiding principles
------------------

As members of the Open Repair Alliance, organisations are committed to
share data that is accessible, useful and usable for a range of
partners.

To ensure this, organisations are expected to consider that their Open
Repair data is:

-  Structured - data is valid in line with the requirements of the standard

-  Comparable - data can be linked across publishers through codelists and shared references

-  Open - data is appropriately licensed and published

-  Accurate - data is as accurate as possible

-  Timely - data is kept up-to-date and updated regularly

The standard is focused on collecting and sharing information about
repair of small electricals and consumer electronics. Due to the open
nature of the standard, it could in the future lead to adaptations to
cater for other areas of repair information.

Collected data
--------------

This section describes the data that we collect as part of the standard.

There is a wide variety of data that can be and is being collected on
the topic of repair. We recognise that not all organisations have the
need or capacity to collect all of this data, and further we recognise
the tension between the ideal data we would like to collect and the
ability to actually collect that data in busy repair environments,
usually by volunteers.

As such, the standard is grouped into logical ‘modules’ that group
together related questions, and within these modules questions are
classified as required or optional. Modules are described as either
primary or additional. To be fully compliant with the standard, data
must aim to include all required fields in the primary modules.

Organisations may optionally choose to collect and share data in
additional modules. In order to be fully compliant with the standard, if
an additional module is collected, then all required fields within that
module must be included.

The decision to define a question as ‘required’ is based on a number of
factors surrounding use cases and benefits of the data the question
would produce, and the complexity of data collection for that question,
including who is being asked to collect the data and how - for example,
we wish to avoid overloading volunteers with data collection. Every
required question should be traceable back to a particular use case and
goal.

Modules
~~~~~~~

The following outlines the primary and additional modules, and lists the
required fields within each of these. The Alliance aims to release
further information on all the considered questions - those which are
optional and those that are in additional modules - in due course.

Primary
^^^^^^^

+--------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+--------------------------+
| **Module**         | **Description**                                                                                                                                                                         | **Required fields**   | **Optional**             |
+====================+=========================================================================================================================================================================================+=======================+==========================+
| Product related    | Information about the product/device that someone has attempted to fix. To help relate repair issues to particular groupings of product.                                                | -  Partner category   | -  Product category      |
|                    |                                                                                                                                                                                         |                       |                          |
|                    |                                                                                                                                                                                         |                       | -  Brand                 |
|                    |                                                                                                                                                                                         |                       |                          |
|                    |                                                                                                                                                                                         |                       | -  Model                 |
|                    |                                                                                                                                                                                         |                       |                          |
|                    |                                                                                                                                                                                         |                       | -  Year of manufacture   |
+--------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+--------------------------+
| Repair related     | Information about the attempted fix and its outcome. To help ascertain common ways in which devices fail and the results of repair attempts.                                            | -  Repair status      | -  Repair barrier        |
|                    |                                                                                                                                                                                         |                       |                          |
|                    |                                                                                                                                                                                         | -  Problem            |                          |
+--------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+--------------------------+
| Session related    | Information about when the repair took place and through which entity, e.g. a specific community repair group on a particular date. To help verify the provenance of the repair data.   | -  ID                 | -  Group identifier      |
|                    |                                                                                                                                                                                         |                       |                          |
|                    |                                                                                                                                                                                         | -  Date               |                          |
|                    |                                                                                                                                                                                         |                       |                          |
|                    |                                                                                                                                                                                         | -  Country            |                          |
+--------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+--------------------------+
| Provider related   | Information about the data provider, i.e. which organisation collected and submitted the data.                                                                                          | -  Data provider      | -  Record date           |
+--------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+--------------------------+

Additional
^^^^^^^^^^

+-----------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| **Module**            | **Description**                                                                                                                                                                                                                                            |
+=======================+============================================================================================================================================================================================================================================================+
| Impact related        | Information about the wider environmental or social impact of the repair - e.g. waste weight diverted, hours volunteered, etc. - This information can be calculated based on other information, e.g. product category, number of repairers at a session.   |
+-----------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Repairer related      | Information about the person that undertook the repair.                                                                                                                                                                                                    |
+-----------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Participant related   | Information about the person that owns the device/brought it to be fixed.                                                                                                                                                                                  |
+-----------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Feedback related      | Information asked of the participant about their experience of the repair attempt/event. Also feedback from the repairer on the ease of the repair, the repairability of the product etc.                                                                  |
+-----------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Please note that there currently are no agreed questions for additional
modules.

Fields
~~~~~~

This section provides detailed information on each of the fields
included in the standard.

Repair-related
^^^^^^^^^^^^^^

**Product category**
''''''''''''''''''''

EEE- “powered” - devices
                        

*Description:* A value drawn from a list of ORDS category strings. See
`*Product categories* <#product-category-values>`__ These values
represent a reduced set of categories based on all item types seen
across partner members. They represent those regularly seen at community
repair events, as well as those relevant to policy discussions. If an
item type does not fall into an existing own category, it is included in
an aggregate category, e.g. “Small home electrical” or “Misc”.

*Use cases:* Categorisation allows for useful analysis that can be used
to inform policy and tell stories about repair.

*Ease of collection:* These values are not generally collected or
supplied but mapped from provided values to ORDS values. See `*Partner
category* <#partner-category>`__.

Non-EEE- “unpowered” - items
                            

This version of ORDS will continue to focus on EEE products, as they are
most commonly presented at repair events and the most relevant from a
policymaking perspective for the foreseeable future.

**Partner category**
''''''''''''''''''''

*Description:* The original product categorisation supplied within the
partner dataset i.e. the categories used to map to the ORDS product
categories.

*Use cases:* Including this value alongside the ORDS category will allow
for alternative ways of analysing the data by end users. It will also
allow for the identification of errors, mistranslation, ambiguity and
judgement-calls in the mapping.

*Ease of collection:* Partners have always supplied their own categories
within their datasets. The most valuable categorisations have uniformity
and convention, i.e. they relate to predefined sets of values and are
sanity checked at source. Some partner categorisation comes as free text
and sometimes in languages other than English. Normalising the supplied
categorisation makes the process of mapping less prone to error,
mistranslation, ambiguity and subjectivity.

**Repair status**
'''''''''''''''''

*Description:* This is the outcome of the repair attempt that was
undertaken on the device at the event.

-  1: “Fixed” - if the repairer and owner were satisfied the item can continue to be used

-  2: “Repairable” - if the repairer and owner didn’t complete a repair, but identified what reasonable additional steps or professional help is needed

-  3: “End of life” - if the repairer and the owner decided that it is not cost-effective or realistic to repair the device

-  0: An empty or zero value is recorded as “Unknown”

*Use cases:* The repair status allows us to report on rates of repair on
the devices we see at repair events. In conjunction with the product
category and repair barrier, we can investigate which types of products
are most difficult to repair in a community context, and why.

*Ease of collection:* Most providers currently record information on the
repair outcome. Mapping is required to go from current partner values to
the ORDS recommended values - see Appendix E. Repair groups are keen to
record this information already, as they can report on their own repair
success to volunteers and funders.

**Repair barrier**
''''''''''''''''''

*Description:* Values that can be ascribed when a repair status is
designated as “End of life”.

-  spare parts not available

-  spare parts too expensive

-  no way to open the product

-  repair information not available

-  lack of equipment

*Use cases:* This information is important for policy discussions, as it
gives an indication of the most common recurrent barriers encountered.
It was identified in conversation with iFixit, based on European policy
processes they’ve followed in recent years.

*Ease of collection:* To date this information is not commonly recorded
by partners and is therefore optional. Some of the historic problem text
may yield values.

**Date**
''''''''

*Description:* Event date

*Use cases:* Useful for analysis.

*Ease of collection:* In most cases partners keep a record of the dates
of their repair events.

**Brand**
'''''''''

*Description:* Name of the item “brand” if it is identifiable.

*Use cases:* Useful for analysis.

*Ease of collection:* Brand is not always identifiable, some items
brought to an event may be of a “generic” make.

**Model**
'''''''''

*Description:* Name, number or code that identifies the particular
version of the item.

*Use cases:* Useful for analysis.

*Ease of collection:* Model is not always identifiable.

**Year of manufacture**
'''''''''''''''''''''''

*Description:* The year, or approximate year, that the item was made or
released.

*Use cases:* Useful for analysis.

*Ease of collection:* Not always identifiable.

Session-related
^^^^^^^^^^^^^^^

**Country**
'''''''''''

*Description:* This is the country where the repair event (and thus the
repair attempt) took place.

*Use cases:* The inclusion of this field allows for the breakdown and
comparison of information by country. For example, does the fix rate
vary between countries? What are the relative occurrences of different
barriers to repair per country?

*Ease of collection:* Partners should find it easy to provide this
information, if they are recording the group who undertook the fix, and
know where the group is based. Ideally partners can include the country
per row in their dataset if not already, based on the location of the
group that completed the repair, in the form of a 3 letter ISO code,
e.g. “DEU”, “AUT”. If provided in the original partner data it has been
included as is. If it has not been provided, the country has been
assumed to be the main country of the partner organisation.

**Record date**
'''''''''''''''

*Description:* The date on which the record was inserted or last updated
to the provider’s database. This is not necessarily the same as the date
the repair attempt took place. The data may have been uploaded after the
repair event.

*Use cases:* The inclusion of this field can help to simplify the
aggregation process by flagging the data has changed since the last
aggregation process.

*Ease of collection:* if using an electronic system, providers should be
able to easily record a date when repair records are inserted or updated
in their database.

**ID**
''''''

*Description:* Unique record identifier

*Use cases:* Essential in data analysis.

*Ease of collection:* In most cases partners hold unique ids for their
records.

**Group identifier**
''''''''''''''''''''

*Description:* Unique group identification name, number or code.

*Use cases:* Can be useful in data analysis.

*Ease of collection:* In most cases partners are able to identify
particular groups responsible for clusters of data. Where a partner does
not have subsidiary groups the partner name will be used unless
otherwise specified. Group identifiers do not have to explicitly name a
group, obfuscation such as id or code is sufficient.

**Data provider**
'''''''''''''''''

*Description:* Uniquely identifies the partner providing the data.

*Use cases:* Can be useful in data analysis.

*Ease of collection:* Can in most cases be assumed but partners are
welcome to specify the exact words, phrase, spelling, punctuation and
casing as they see fit.

Field reference
---------------

Field names and data types
~~~~~~~~~~~~~~~~~~~~~~~~~~

For some fields a formal set of options is required, referred to here as
a ‘codelist’. An *open codelist* provides suggested codes, but
publishers can extend these lists with new codes on the basis of
consensus with other publishers, or by using a code prefixed with ‘x\_‘
to indicate that it is a local ‘eXtension’ to the codelist. A *closed
codelist* provides mandatory codes and publishers should only use values
provided in the official list. Changes to closed codelists should take
place through the governance and revision process.

+-----------------------+---------------------------+--------------------------------------------------------------------------------------------------------+
| *Title*               | *Field Name*              | *Type*                                                                                                 |
+=======================+===========================+========================================================================================================+
| ID                    | *id*                      | Unique identifier from the partner organisation. Does not have to be unique across all partner data.   |
+-----------------------+---------------------------+--------------------------------------------------------------------------------------------------------+
| Partner category      | *partner\_category*       | Option from partner codelist.                                                                          |
+-----------------------+---------------------------+--------------------------------------------------------------------------------------------------------+
| Product category      | *product\_category*       | Option from open codelist.                                                                             |
+-----------------------+---------------------------+--------------------------------------------------------------------------------------------------------+
| Brand                 | *brand*                   | Free text.                                                                                             |
+-----------------------+---------------------------+--------------------------------------------------------------------------------------------------------+
| Model                 | *model*                   | Free text.                                                                                             |
+-----------------------+---------------------------+--------------------------------------------------------------------------------------------------------+
| Year of manufacture   | *year\_of\_manufacture*   | Year. YYYY.                                                                                            |
+-----------------------+---------------------------+--------------------------------------------------------------------------------------------------------+
| Problem               | *problem*                 | Free text. Personal data should be removed, e.g. email addresses,.                                     |
+-----------------------+---------------------------+--------------------------------------------------------------------------------------------------------+
| Repair status         | *repair\_status*          | Option from closed codelist.                                                                           |
+-----------------------+---------------------------+--------------------------------------------------------------------------------------------------------+
| Repair barrier        | *eol\_repair\_barrier*    | Option from closed codelist. Optional. Only relevant where repair\_status = “End of life”.             |
+-----------------------+---------------------------+--------------------------------------------------------------------------------------------------------+
| Group identifier      | *group\_identifier*       | String. Unique.                                                                                        |
|                       |                           |                                                                                                        |
|                       |                           | A unique identifier across all members that can identify the group responsible for the repair.         |
+-----------------------+---------------------------+--------------------------------------------------------------------------------------------------------+
| Date                  | *date*                    | Date. YYYY-MM-DD format.                                                                               |
|                       |                           |                                                                                                        |
|                       |                           | The date of the repair event.                                                                          |
+-----------------------+---------------------------+--------------------------------------------------------------------------------------------------------+
| Data provider         | *data\_provider*          | Option from open codelist. Name of partner organisation.                                               |
+-----------------------+---------------------------+--------------------------------------------------------------------------------------------------------+
| Country               | *country*                 | String. 3 letter ISO code, e.g. “GBR”.                                                                 |
+-----------------------+---------------------------+--------------------------------------------------------------------------------------------------------+
| Record date           | *record\_date*            | Date. YYYY-MM-DD format.                                                                               |
|                       |                           |                                                                                                        |
|                       |                           | The date that the record was created/last updated.                                                     |
+-----------------------+---------------------------+--------------------------------------------------------------------------------------------------------+

Product category values
~~~~~~~~~~~~~~~~~~~~~~~

+-------------------------------------+
| Desktop computer                    |
+=====================================+
| Flat screen display                 |
+-------------------------------------+
| Laptop                              |
+-------------------------------------+
| Paper shredder                      |
+-------------------------------------+
| PC Accessory                        |
+-------------------------------------+
| Printer/scanner                     |
+-------------------------------------+
| Digital Compact Camera              |
+-------------------------------------+
| DSLR / Video Camera                 |
+-------------------------------------+
| Handheld entertainment device       |
+-------------------------------------+
| Headphones                          |
+-------------------------------------+
| Mobile                              |
+-------------------------------------+
| Tablet                              |
+-------------------------------------+
| Hi-Fi integrated                    |
+-------------------------------------+
| Hi-Fi separates                     |
+-------------------------------------+
| Musical instrument                  |
+-------------------------------------+
| Portable radio                      |
+-------------------------------------+
| Projector                           |
+-------------------------------------+
| TV and gaming-related accessories   |
+-------------------------------------+
| Aircon / Dehumidifier               |
+-------------------------------------+
| Decorative or safety lights         |
+-------------------------------------+
| Fan                                 |
+-------------------------------------+
| Hair & Beauty item                  |
+-------------------------------------+
| Kettle                              |
+-------------------------------------+
| Lamp                                |
+-------------------------------------+
| Power tool                          |
+-------------------------------------+
| Small kitchen item                  |
+-------------------------------------+
| Toaster                             |
+-------------------------------------+
| Toy                                 |
+-------------------------------------+
| Vacuum                              |
+-------------------------------------+
| Misc                                |
+-------------------------------------+

Repair status values
~~~~~~~~~~~~~~~~~~~~

+----------+---------------+
| *Code*   | *String*      |
+==========+===============+
| 0        | Unknown       |
+----------+---------------+
| 1        | Fixed         |
+----------+---------------+
| 2        | Repairable    |
+----------+---------------+
| 3        | End of life   |
+----------+---------------+

Repair barrier values 
~~~~~~~~~~~~~~~~~~~~~~

+------------------------------------+
| Spare parts not available          |
+====================================+
| Spare parts too expensive          |
+------------------------------------+
| No way to open product             |
+------------------------------------+
| Repair information not available   |
+------------------------------------+
| Lack of equipment                  |
+------------------------------------+

Producing and sharing compliant data
------------------------------------

Compliant data is data that

-  contains the required data as agreed per this standard

-  conforms to the field definitions as agreed per this standard

-  is provided in the format as agreed per this standard

-  is licensed as agreed per this standard

-  is publicly available for download

Data format
~~~~~~~~~~~

For data to be comparable, the values recorded for each field need to
conform as prescribed e.g. a date value should conform to the agreed
date format. See `*Field names and data
types* <#field-names-and-data-types>`__ for a detailed field reference.

The data should be supplied in Comma Separated Values (CSV) format,
where each row represents a single repair attempt, and will contain
columns for each of the required fields listed above as well as
additional fields where possible. The first row should be a header row
and contain the column names matching those of the field names described
in `*Field names and data types* <#field-names-and-data-types>`__. The
header row should be in English if possible.

Should there be a discrepancy between the prescribed data format and the
supplied data format it would be desirable that a changelog or manifest
or some form of documentation describing the differences be supplied
also.

The data definitions will undergo review as and when the standard
evolves.

Data collection tools
~~~~~~~~~~~~~~~~~~~~~

The Open Repair Alliance does not prescribe any particular tools for
data collection or provision, however individual members are encouraged
to share advice and help on any tools they have found useful. Partners
are welcome to reach out to the organising body for assistance and
advice in regard to tools and processes.

Data publishing
~~~~~~~~~~~~~~~

The Open Repair Alliance aims to publish every 6 months. The processed
datasets are stored in a `*public version control
repository* <https://github.com/openrepair/data>`__ and made available
for download at
`*openrepair.org* <http://openrepair.org/open-data/downloads>`__.

Data Versioning
~~~~~~~~~~~~~~~

Further discussion by the Alliance is needed to determine the
requirements of keeping the history of the data collected through the
Open Repair Data Standard. At present, members commit to maintaining
their own historical records and to amend previously released data
points only to ensure increased accuracy.

Data Licensing
~~~~~~~~~~~~~~

Supplied data must be licensed under the `*Creative Commons
Attribution-ShareAlike 4.0 International (CC BY-SA
4.0* <https://creativecommons.org/licenses/by-sa/4.0/>`__).

As the Data Standard evolves, licensing will be reviewed in order to
best address the potential commercial use of the data by third parties.
