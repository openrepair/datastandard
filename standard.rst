
The Standard
=======================

Guiding Principles
------------------

As members of the Open Repair Alliance, organisations are committed to
share data that is accessible, useful and useable for a range of
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

Collected Data
--------------

This section describes the data that we collect as part of the standard.

There is a wide variety of data that can be and is being collected on
the topic of repair. We recognise that not all organisations have the
need or capacity to collect all of this data, and further we recognise
the tension between the ideal scenario of all the data we would like to
have, and the ability to expect that data to be collected in busy repair
environments, often by volunteers.

As such, the standard is grouped into logical ‘modules’ that group
together related questions, and within these modules questions are
classified as required or optional. Modules are described as either
primary or additional. To be fully compliant with the standard, data
must aim to include all required fields in the primary modules.

Organisations may optionally choose to collect and share data in
additional modules. In order to be fully compliant with the standard, if
an additional module is collected, then all required fields within that
module must be included.

Primary and additional modules, and required and optional questions, are
decided upon following the governance process of the Alliance. The
decision to define a question as ‘required’ is based on a number of
factors - around use cases and benefits of the data the question would
produce, and the complexity of data collection for that question
(including who is being asked to collect the data and how - for example,
we wish to avoid overloading volunteers with data collection). Every
required question should be traceable back to a particular use case and
goal.

Modules
~~~~~~~

The following outlines the primary and additional modules, and lists the
required fields within each of these. The Alliance aims to release
further information on all the considered questions (those which are
optional and those that are in additional modules) in due course.

Primary
^^^^^^^

+--------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------+--------------------------------+
| **Module**         | **Description**                                                                                                                                                                         | **Required fields**      | **Optional**                   |
+====================+=========================================================================================================================================================================================+==========================+================================+
| Product related    | Information about the product/device that someone has attempted to fix. To help relate repair issues to particular groupings of product.                                                | -  Product Category      | -  Model                       |
|                    |                                                                                                                                                                                         |                          |                                |
|                    |                                                                                                                                                                                         | -  Brand                 |                                |
|                    |                                                                                                                                                                                         |                          |                                |
|                    |                                                                                                                                                                                         | -  [STRIKEOUT:Model]     |                                |
|                    |                                                                                                                                                                                         |                          |                                |
|                    |                                                                                                                                                                                         | -  Year of Manufacture   |                                |
+--------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------+--------------------------------+
| Repair related     | Information about the attempted fix and its outcome. To help ascertain common ways in which devices fail and the results of repair attempts.                                            | -  Problem               | -  [STRIKEOUT:Language]        |
|                    |                                                                                                                                                                                         |                          |                                |
|                    |                                                                                                                                                                                         | -  Repair Status         |                                |
+--------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------+--------------------------------+
| Session related    | Information about when the repair took place and through which entity, e.g. a specific community repair group on a particular date. To help verify the provenance of the repair data.   | -  Group Identifier      | -  Country                     |
|                    |                                                                                                                                                                                         |                          |                                |
|                    |                                                                                                                                                                                         | -  Date                  |                                |
+--------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------+--------------------------------+
| Provider related   | Information about the data provider, i.e. which organisation collected and submitted the data.                                                                                          | -  Data provider         | -  Creation date               |
|                    |                                                                                                                                                                                         |                          |                                |
|                    |                                                                                                                                                                                         |                          | -  Provider product category   |
+--------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------+--------------------------------+

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

Repair Status
'''''''''''''

**Description:** This is the outcome of the repair attempt that was
undertaken on the device at the event. It can be one of Fixed,
Repairable or End-of-Life.

*Fixed* - the owner left the repair event with a device that was
functional and they were happy to continue to use.

*Repairable* - the owner left the repair event knowing that the device
could be repaired, but with more effort required. For example, spare
parts were not available at the time, but once acquired the device can
be repaired. Sometimes device owners go home ready to finish the repair
themselves, or others are referred to professional repairers.

*End-of-life* - the repairer and the owner decided together that it is
not cost-effective or realistic to repair the device.

**Use cases**: The repair status allows us to report on rates of repair
on the devices we see at repair events. In conjunction with product
category and barriers to repair, we can investigate which types of
products are most difficult to repair in a community context, and why.

**Ease of collection**: Most providers currently record information on
the repair outcome. Mapping is required to go from current partner
values to the ORDS recommended values - see Appendix E. Repair groups
are keen to record this information already, as they can report on their
own repair success to volunteers and funders.

Barriers to Repair
''''''''''''''''''

Description\ **:**

-  Spare parts not available

-  Spare parts too expensive

-  No way to open the product

-  Repair information not available

-  Lack of equipment

Session-related
^^^^^^^^^^^^^^^

Country
'''''''

**Description**: This is the country where the repair event (and thus
the repair attempt) took place.

**Use cases**: The inclusion of this field allows for the breakdown and
comparison of information by country. For example, does the fix rate
vary between countries? What are the relative occurrences of different
barriers to repair per country?

**Ease of collection**: providers should find it easy to provide this
information, if they are recording the group who undertook the fix, and
know where the group is based.

Creation date
'''''''''''''

**Description**: The date on which the record was added to the
provider’s database. Note: this is not necessarily the same as the date
the repair attempt took place. The data may have been uploaded after the
repair event.

**Use cases**: The inclusion of this field can help to simplify the
aggregation process by flagging which data has been newly created since
the last aggregation process.

**Ease of collection**: if using an electronic system, providers should
be able to easily record a creation date when the data is entered into
the system.

Data types and codelists
~~~~~~~~~~~~~~~~~~~~~~~~

For data to be comparable, the values recorded for each field need to be
of the correct type. For example, for a date field, an agreed
representation of the date is needed.

For a categorisation field, an agreed selection of options needs to be
agreed. This is a ‘codelist’. An *open codelist* provides suggested
codes, but publishers can extend these lists with new codes on the basis
of consensus with other publishers, or by using a codes prefixed with
‘x\_‘ to indicate that it is a local ‘eXtension’ to the codelist. A
*closed codelist* provides mandatory codes and publishers should only
use values provided in the official list. Changes to closed codelists
should take place through the governance and revision process.

This section lists the expected data types and codelists for the
required fields.

+------------------------+--------------------------+-------------------------------------------------------------------------------------------------------------+
| **Question**           | **Field Name**           | **Type**                                                                                                    |
+========================+==========================+=============================================================================================================+
| ID                     | *id*                     | Unique identifier from the partner organisation, i.e. does not have to be unique across all partner data.   |
+------------------------+--------------------------+-------------------------------------------------------------------------------------------------------------+
| Product Category       | *product\_category*      | Option from open codelist.                                                                                  |
+------------------------+--------------------------+-------------------------------------------------------------------------------------------------------------+
| Brand                  | *brand*                  | Free text.                                                                                                  |
+------------------------+--------------------------+-------------------------------------------------------------------------------------------------------------+
| Model                  | *model*                  | [STRIKEOUT:Option from open codelist.]                                                                      |
+------------------------+--------------------------+-------------------------------------------------------------------------------------------------------------+
| Year of Manufacture    | *year\_manufactured*     | Year. YYYY                                                                                                  |
+------------------------+--------------------------+-------------------------------------------------------------------------------------------------------------+
| Problem                | *problem*                | Free text free from personalised data, e.g. email addresses.                                                |
+------------------------+--------------------------+-------------------------------------------------------------------------------------------------------------+
| Fault Type             | *fault\_type*            | Option from open codelist.                                                                                  |
+------------------------+--------------------------+-------------------------------------------------------------------------------------------------------------+
| Fault Category         | *fault\_category*        | Option from open codelist.                                                                                  |
+------------------------+--------------------------+-------------------------------------------------------------------------------------------------------------+
| Solution               | *solution*               | Free text free from personalised data, e.g. email addresses.                                                |
+------------------------+--------------------------+-------------------------------------------------------------------------------------------------------------+
| Solution Type          | *solution\_type*         | Option from open codelist.                                                                                  |
+------------------------+--------------------------+-------------------------------------------------------------------------------------------------------------+
| Repair Status          | *repair\_status*         | Option from closed codelist.                                                                                |
+------------------------+--------------------------+-------------------------------------------------------------------------------------------------------------+
| Group Identifier       | *group\_id*              | String. Unique.                                                                                             |
|                        |                          |                                                                                                             |
|                        |                          | A unique identifier across all members that identifies the group responsible for the repair.                |
+------------------------+--------------------------+-------------------------------------------------------------------------------------------------------------+
| Date                   | *date*                   | Date. YYYY-MM-DD format.                                                                                    |
|                        |                          |                                                                                                             |
|                        |                          | The date of the repair event.                                                                               |
+------------------------+--------------------------+-------------------------------------------------------------------------------------------------------------+
| Data provider          | *data\_provider*         | Option from open codelist.. Name of partner organisation.                                                   |
+------------------------+--------------------------+-------------------------------------------------------------------------------------------------------------+
| Country                | *country*                | String. 3 letter ISO code, e.g. “GBR”.                                                                      |
+------------------------+--------------------------+-------------------------------------------------------------------------------------------------------------+
| [STRIKEOUT:Language]   | *[STRIKEOUT:language]*   | [STRIKEOUT:String. Official list of languages, non-ISO code.]                                               |
+------------------------+--------------------------+-------------------------------------------------------------------------------------------------------------+

Producing and Sharing Compliant Data
------------------------------------

Compliant data is data that:

-  contains the required data as agreed per this standard

-  is formatted using the correct data formats as agreed per this standard

-  is publicly available for download

-  is licensed correctly

Data Format
~~~~~~~~~~~

Initially, each member will publish its data in CSV format, where each
row represents a single repair attempt, and will contain the values for
all of the required fields listed above. The first row will be a header
row, with the column titles matching those names listed above.
Additional optional fields can be included in the CSV should any member
wish to do so.

An example reference file of data in the required format can be found
here:
`*https://drive.google.com/open?id=1epzElEmzG4Y5Fu43amM1uFtjI18ivWoj* <https://drive.google.com/open?id=1epzElEmzG4Y5Fu43amM1uFtjI18ivWoj>`__

The Alliance will review the data format as the standard evolves.

Data Collection Tools
~~~~~~~~~~~~~~~~~~~~~

The Alliance does not prescribe a particular tool with which to collect
the data, however individual members are encouraged to share advice and
help on using and expanding existing tools.

Data Publishing
~~~~~~~~~~~~~~~

Organisations will host their own CSV data files, in a publicly
accessible and downloadable location such as their website. A public
registry listing the URL of each of these datasets is maintained at
*openrepair.org*.

In order to ensure that the Alliance makes available up-to-date data on
repair, each member commits to updating the ORDS data that it publishes
at least on a monthly basis, by the end of each calendar month.

Data Versioning
~~~~~~~~~~~~~~~

Further discussion by the Alliance is needed to determine the
requirements of keeping the history of the data collected through the
Open Repair Data Standard. At present, members commit to maintaining
their own historical records and to amend previously released data
points only to ensure increased accuracy.

Data Licensing
~~~~~~~~~~~~~~

Data must be licensed under the Creative Commons Attribution-ShareAlike
4.0 International (CC BY-SA 4.0)
(`*https://creativecommons.org/licenses/by-sa/4.0/* <https://creativecommons.org/licenses/by-sa/4.0/>`__).

As we develop the standard further, we plan to revisit the licensing of
data to best address the potential commercial use of the data by third
parties.
