
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
ability to collect that data in busy repair environments, usually by
volunteers.

As such, the standard is grouped into logical ‘modules’ that group
together related fields, and within these modules fields are classified
as required or optional. Modules are described as either primary or
additional. To be fully compliant with the standard, data must aim to
include all required fields in the primary modules.

The decision to define a field as ‘required’ is based on a number of
factors surrounding use cases and benefits of the data the question
would produce, and the complexity of data collection for that question,
including who is being asked to collect the data and how - for example,
we wish to avoid overloading volunteers with data collection. Every
required field should be traceable back to a particular use case and
goal.

Input fields
------------

Overview
~~~~~~~~

+--------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+--------------------------+
| *Module*           | *Description*                                                                                                                                                                           | *Required fields*             | *Optional*               |
+====================+=========================================================================================================================================================================================+===============================+==========================+
| Product related    | Information about the product/device that someone has attempted to fix. To help relate repair issues to particular groupings of products.                                               | -  Partner product category   | -  Product category      |
|                    |                                                                                                                                                                                         |                               |                          |
|                    |                                                                                                                                                                                         |                               | -  Brand                 |
|                    |                                                                                                                                                                                         |                               |                          |
|                    |                                                                                                                                                                                         |                               | -  Year of manufacture   |
+--------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+--------------------------+
| Repair related     | Information about the attempted fix and its outcome. To help ascertain common ways in which devices fail and the results of repair attempts.                                            | -  Repair status              | -  Repair barrier        |
|                    |                                                                                                                                                                                         |                               |                          |
|                    |                                                                                                                                                                                         | -  Problem                    |                          |
+--------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+--------------------------+
| Session related    | Information about when the repair took place and through which entity, e.g. a specific community repair group on a particular date. To help verify the provenance of the repair data.   | -  ID                         | -  Group identifier      |
|                    |                                                                                                                                                                                         |                               |                          |
|                    |                                                                                                                                                                                         | -  Event date                 |                          |
|                    |                                                                                                                                                                                         |                               |                          |
|                    |                                                                                                                                                                                         | -  Country                    |                          |
+--------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+--------------------------+
| Provider related   | Information about the data provider, i.e. which organisation collected and submitted the data.                                                                                          | -  Data provider              | -  Record date           |
+--------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+--------------------------+

Details
~~~~~~~

This section provides detailed information on each of the fields
included in the standard.

Product-related
^^^^^^^^^^^^^^^

**Product category**
''''''''''''''''''''

EEE- “powered” - devices
                        

*Description:* A value drawn from a list of ORDS category strings. See
`*Product categories* <#ords-product-category-values>`__. These values
represent a reduced set of categories based on all item types seen
across partner members. They are a cross-section of those regularly seen
at community repair events, as well as those relevant to policy
discussions. If an item type does not fall into an existing category, it
is included in an aggregate category, e.g. “Small home electrical” or
“Misc”.

*Use cases:* Product categorisation allows for analysis on individual
categories or combinations of categories. Repair rates and barriers
across categories can be compared. We can use this to inform policy
discussions on specific product categories.

*Ease of collection:* These values are not generally collected or
supplied but mapped from partner-provided category values to ORDS
category values. See `*Partner product
category* <#partner-product-category>`__.

Non-EEE- “unpowered” - items
                            

ORDS focuses on EEE products, as they are more commonly presented at
repair events and the most relevant from a policymaking perspective for
the foreseeable future.

**Partner product category**
''''''''''''''''''''''''''''

*Description:* The original product categorisation supplied within the
partner dataset i.e. the categories used to map to the ORDS product
categories.

*Use cases:* Including this value alongside the ORDS category will allow
for alternative ways of analysing the data by end-users. It will also
allow for the identification of errors, mistranslation, ambiguity and
judgement-calls in the mapping, allowing for data quality enhancements.

*Ease of collection:* Partners have always supplied their own categories
within their datasets. The most valuable categorisations have uniformity
and convention, i.e. they relate to predefined sets of values and are
sanity checked at source. Ideally they are already mapped to the `*ORDS
product category values* <#ords-product-category-values>`__. Some
partner categorisation comes as free text and sometimes in languages
other than English. During processing the partner category is often
concatenated with another field, e.g. “product\_kind” or “item\_type”,
e.g. “Household appliances electric ~ Coffee maker”, this extra detail
helps in the mapping. Normalising the supplied categorisation makes the
process of mapping less prone to error, mistranslation, ambiguity and
subjectivity.

**Brand**
'''''''''

*Description:* Name of the item’s “brand” if it is identifiable.

*Use cases:* Useful for analysing the relationship between design
practices of specific manufacturers and the repairability of their
products brought to repair events.

*Ease of collection:* Brand is not always identifiable, some items
brought to an event may be of a “generic” make.

**Year of manufacture**
'''''''''''''''''''''''

*Description:* The year, or approximate year, that the item was made or
released.

*Use cases:* Useful for analysing the lifespan or durability of various
product categories or brands.

*Ease of collection:* Not always known or identifiable.

Repair-related
^^^^^^^^^^^^^^

**Repair status**
'''''''''''''''''

*Description:* This is the outcome of the repair attempt that was
undertaken on the device at the event.

-  1: “Fixed” - if the repairer and owner were satisfied that the item can continue to be used

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

**Problem**
'''''''''''

*Description:* A description of the problem identified with the device
during the repair.

*Use cases*: Common problems with categories devices can be identified,
suggesting where design improvements could be made, or for which parts
provision of spares is most required.

*Ease of collection*: All partners currently record information on
problems encountered during the repair attempt. This is currently in
free text format, which makes it difficult to perform analysis at
present. We intend to provide a list of fault types to select from in a
future update to ORDS.

**Repair barrier**
''''''''''''''''''

*Description:* A value that can be ascribed when a repair status is
designated as “End of life”. One of the following options - note that
either the text or number code is acceptable:

1. Spare parts not available

2. Spare parts too expensive

3. No way to open the product

4. Repair information not available

5. Lack of equipment

6. Product too worn out

*Use cases:* This information is important for policy discussions, as it
gives an indication of the most common recurrent barriers encountered.
It was identified in conversation with iFixit, based on European policy
processes they’ve followed in recent years.

*Ease of collection:* Some of the historic problem text may yield values
and partners are adapting data collection to comply with this field from
2021.

Session-related
^^^^^^^^^^^^^^^

**ID**
''''''

*Description:* Unique record identifier

*Use cases:* Essential for the ORDS aggregation process and essential in
data analysis.

*Ease of collection:* In most cases partners hold unique ids for their
records although some data is provided with a timestamp as ID and this
has been known to be non-unique in a small number of cases. An ID value
separate from any date value is preferred.

**Event Date**
''''''''''''''

*Description:* Date on which the repair event took place.

*Use cases:* Useful for analysing the trends of other fields over time.
For example, the prevalence of certain product categories, or the repair
success rate..

*Ease of collection:* In most cases partners keep a record of the dates
of their repair events.

**Country**
'''''''''''

*Description:* This is the country where the repair event (and thus the
repair attempt) took place.

*Use cases:* The inclusion of this field allows for the breakdown and
comparison of information by country. For example, does the repair
success rate vary between countries? What are the relative occurrences
of different barriers to repair per country?

*Ease of collection:* Partners should find it easy to provide this
information, if they are recording the group who undertook the fix, and
know where the group is based. Ideally partners can include the country
per row in their dataset if not already, based on the location of the
group that completed the repair, in the form of a 3 letter ISO code,
e.g. “DEU”, “AUT”. If provided in the original partner data it has been
included as is. If it has not been provided, the country has been
assumed to be the main country of the partner organisation.

**Group identifier**
''''''''''''''''''''

*Description:* Unique group identification name, number or code.

*Use cases:* Can be useful in data analysis.

*Ease of collection:* In most cases partners are able to identify
particular groups responsible for clusters of data. Where a partner does
not have subsidiary groups the partner name will be used unless
otherwise specified. Group identifiers do not have to explicitly name a
group, obfuscation such as a code or number is sufficient.

Provider-related
^^^^^^^^^^^^^^^^

**Data provider**
'''''''''''''''''

*Description:* Uniquely identifies the partner providing the data.

*Use cases:* Allows for analysis of the data per provider.

*Ease of collection:* Can in most cases be assumed but partners are
welcome to specify the exact words, phrase, spelling, punctuation and
casing as they see fit.

**Record date**
'''''''''''''''

*Description:* The date on which the record was last updated in the
partner’s database. This is not necessarily the same as the date the
repair attempt took place. The data may have been uploaded after the
repair event. See also `*Event date* <#event-date>`__.

*Use cases:* The inclusion of this field can help to simplify the
aggregation process by flagging the data that has changed since the last
aggregation process.

*Ease of collection:* If using an electronic system, providers should be
able to easily record a date when repair records are inserted or updated
in their database.

Field reference
---------------

Field names and data types
~~~~~~~~~~~~~~~~~~~~~~~~~~

For some fields a formal set of options is required, referred to here as
a ‘codelist’. A codelist provides mandatory codes and publishers should
only use values provided in the official list. Changes to codelists take
place through the governance and revision process.

+-----------------------+----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
| *Title*               | *Field name*                           | *Type*                                                                                                                                   |
+=======================+========================================+==========================================================================================================================================+
| ID                    | *id*                                   | Unique identifier from the partner organisation. Does not have to be unique across all partner data.                                     |
+-----------------------+----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
| Partner category      | *partner\_product\_category*           | Option from partner codelist.                                                                                                            |
+-----------------------+----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
| Product category      | *product\_category*                    | Option from ORDS `*product category codelist* <#ords-product-category-values>`__.                                                        |
+-----------------------+----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
| Brand                 | *brand*                                | Free text.                                                                                                                               |
+-----------------------+----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
| Year of manufacture   | *year\_of\_manufacture*                | Year. YYYY.                                                                                                                              |
+-----------------------+----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
| Problem               | *problem*                              | Free text. Personal data should be removed, e.g. email addresses,.                                                                       |
+-----------------------+----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
| Repair status         | *repair\_status*                       | Option from ORDS `*repair status codelist* <#repair-status-values>`__.                                                                   |
+-----------------------+----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
| Repair barrier        | *repair\_barrier\_if\_end\_of\_life*   | Option from ORDS `*repair barrier codelist* <#repair-barrier-values>`__. Optional. Only relevant where repair\_status = “End of life”.   |
+-----------------------+----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
| Group identifier      | *group\_identifier*                    | String. Unique.                                                                                                                          |
|                       |                                        |                                                                                                                                          |
|                       |                                        | A unique identifier across all partners that can identify the group responsible for the repair.                                          |
+-----------------------+----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
| Event date            | *event\_date*                          | Date. YYYY-MM-DD format.                                                                                                                 |
|                       |                                        |                                                                                                                                          |
|                       |                                        | The date of the repair event that the repair took place at.                                                                              |
+-----------------------+----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
| Data provider         | *data\_provider*                       | Option from ORDS codelist. Name of partner organisation.                                                                                 |
+-----------------------+----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
| Country               | *country*                              | String. 3 letter ISO code, e.g. “GBR”.                                                                                                   |
+-----------------------+----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
| Record date           | *record\_date*                         | Date. YYYY-MM-DD format.                                                                                                                 |
|                       |                                        |                                                                                                                                          |
|                       |                                        | The date that the record was last updated.                                                                                               |
+-----------------------+----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+

ORDS product category values
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

+-------------------------------------+------------------------------------------------------------------------------------+
| *Product category*                  | *Notes*                                                                            |
+=====================================+====================================================================================+
| Aircon/dehumidifier                 |                                                                                    |
+-------------------------------------+------------------------------------------------------------------------------------+
| Battery/charger/adapter             |                                                                                    |
+-------------------------------------+------------------------------------------------------------------------------------+
| Food processor                      | e.g. multi processor, blender, juicer, coffee grinder, stick blender, hand mixer   |
+-------------------------------------+------------------------------------------------------------------------------------+
| Coffee maker                        |                                                                                    |
+-------------------------------------+------------------------------------------------------------------------------------+
| Decorative or safety lights         | e.g. bike lights, fairy lights, Christmas lights                                   |
+-------------------------------------+------------------------------------------------------------------------------------+
| Desktop computer                    |                                                                                    |
+-------------------------------------+------------------------------------------------------------------------------------+
| Digital compact camera              |                                                                                    |
+-------------------------------------+------------------------------------------------------------------------------------+
| DSLR/video camera                   |                                                                                    |
+-------------------------------------+------------------------------------------------------------------------------------+
| Fan                                 | e.g. cooling fan, fan heater                                                       |
+-------------------------------------+------------------------------------------------------------------------------------+
| Flat screen                         | TVs and monitors                                                                   |
+-------------------------------------+------------------------------------------------------------------------------------+
| Games console                       | e.g. Playstation, Gameboy                                                          |
+-------------------------------------+------------------------------------------------------------------------------------+
| Hair & beauty item                  | e.g. hair straightener, toothbrush, shaver                                         |
+-------------------------------------+------------------------------------------------------------------------------------+
| Hair dryer                          |                                                                                    |
+-------------------------------------+------------------------------------------------------------------------------------+
| Handheld entertainment device       | e.g. iPod, Walkman                                                                 |
+-------------------------------------+------------------------------------------------------------------------------------+
| Headphones                          |                                                                                    |
+-------------------------------------+------------------------------------------------------------------------------------+
| Hi-Fi integrated                    | e.g. “Boombox”, stereo                                                             |
+-------------------------------------+------------------------------------------------------------------------------------+
| Hi-Fi separates                     | e.g. amplifier, speaker, turntable                                                 |
+-------------------------------------+------------------------------------------------------------------------------------+
| Iron                                |                                                                                    |
+-------------------------------------+------------------------------------------------------------------------------------+
| Kettle                              |                                                                                    |
+-------------------------------------+------------------------------------------------------------------------------------+
| Lamp                                |                                                                                    |
+-------------------------------------+------------------------------------------------------------------------------------+
| Laptop                              |                                                                                    |
+-------------------------------------+------------------------------------------------------------------------------------+
| Large home electrical               | e.g lawnmower, fitness machine, steam mop                                          |
+-------------------------------------+------------------------------------------------------------------------------------+
| Misc                                |                                                                                    |
+-------------------------------------+------------------------------------------------------------------------------------+
| Mobile                              |                                                                                    |
+-------------------------------------+------------------------------------------------------------------------------------+
| Musical instrument                  | e.g. electric keyboard, electric guitar                                            |
+-------------------------------------+------------------------------------------------------------------------------------+
| Paper shredder                      |                                                                                    |
+-------------------------------------+------------------------------------------------------------------------------------+
| PC accessory                        | e.g. mice, keyboard, webcam                                                        |
+-------------------------------------+------------------------------------------------------------------------------------+
| Portable radio                      | e.g. radio alarm, transistor radio                                                 |
+-------------------------------------+------------------------------------------------------------------------------------+
| Power tool                          | e.g. DIY tool                                                                      |
+-------------------------------------+------------------------------------------------------------------------------------+
| Printer/scanner                     |                                                                                    |
+-------------------------------------+------------------------------------------------------------------------------------+
| Projector                           | e.g. slide projector, video projector, digital projector                           |
+-------------------------------------+------------------------------------------------------------------------------------+
| Sewing machine                      |                                                                                    |
+-------------------------------------+------------------------------------------------------------------------------------+
| Small home electrical               | e.g. baby monitor, doorbell, multimeter                                            |
+-------------------------------------+------------------------------------------------------------------------------------+
| Small kitchen item                  | e.g. breadmaker, rice cooker, popcorn machine                                      |
+-------------------------------------+------------------------------------------------------------------------------------+
| Tablet                              | e.g. Kindle, satnav                                                                |
+-------------------------------------+------------------------------------------------------------------------------------+
| Toaster                             |                                                                                    |
+-------------------------------------+------------------------------------------------------------------------------------+
| Toy                                 |                                                                                    |
+-------------------------------------+------------------------------------------------------------------------------------+
| TV and gaming-related accessories   | e.g. set-top box, DVD player                                                       |
+-------------------------------------+------------------------------------------------------------------------------------+
| Vacuum                              |                                                                                    |
+-------------------------------------+------------------------------------------------------------------------------------+
| Watch/clock                         |                                                                                    |
+-------------------------------------+------------------------------------------------------------------------------------+

Repair status values
~~~~~~~~~~~~~~~~~~~~

+----------+---------------+
| *Code*   | *Text*        |
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

+----------+------------------------------------+
| *Code*   | *Text*                             |
+==========+====================================+
| 1        | Spare parts not available          |
+----------+------------------------------------+
| 2        | Spare parts too expensive          |
+----------+------------------------------------+
| 3        | No way to open product             |
+----------+------------------------------------+
| 4        | Repair information not available   |
+----------+------------------------------------+
| 5        | Lack of equipment                  |
+----------+------------------------------------+
| 6        | Item too worn out                  |
+----------+------------------------------------+

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

Wherever possible, partners’ original values should be mapped to the
ORDS codelist values as described in the `*Field
reference* <#_weykv6bpw0xy>`__ section.

Should there be a discrepancy between the prescribed data format and the
supplied data format it would be desirable that a changelog or manifest
or some form of documentation describing the differences be supplied
also. See the `*Collected data modules section* <#collected-data>`__ for
details of the required input. See `*Field names and data
types* <#field-names-and-data-types>`__ for a detailed field reference.

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

Data output 
~~~~~~~~~~~~

The export process results in a package for each partner and one that
contains an aggregate of all partner data.

Each package is labelled using a convention that describes its contents
and comprises two data files - one CSV format, one JSON format - along
with a manifest file that describes the package contents including
schema, provider details, licence and description.

Data versioning
~~~~~~~~~~~~~~~

The `*ORA repository* <https://github.com/openrepair/data>`__ makes
available all previous published datasets. Naming conventions are used
in filenames to maintain version identification.

Data licensing
~~~~~~~~~~~~~~

Supplied data must be licensed under the `*Creative Commons
Attribution-ShareAlike 4.0 International (CC BY-SA
4.0* <https://creativecommons.org/licenses/by-sa/4.0/>`__).

As the Data Standard evolves, licensing will be reviewed in order to
best address the potential commercial use of the data by third parties.
