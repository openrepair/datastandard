# The Standard

## Guiding Principles

As members of the Open Repair Alliance, organisations are committed to share data that is accessible, useful and useable for a range of partners.

To ensure this, organisations are expected to consider that their Open Repair data is:

- Structured - data is valid in line with the requirements of the standard 
- Comparable - data can be linked across publishers through codelists and shared references
- Open - data is appropriately licensed and published
- Accurate - data is as accurate as possible
- Timely - data is kept up-to-date and updated regularly

The standard is focused on collecting and sharing information about repair of small electricals and consumer electronics. Due to the open nature of the standard, it could in the future lead to adaptations to cater for other areas of repair information.

## Collected Data

This section describes the data that we collect as part of the standard.

There is a wide variety of data that can be and is being collected on the topic of repair. We recognise that not all organisations have the need or capacity to collect all of this data, and further we recognise the tension between the ideal scenario of all the data we would like to have, and the ability to expect that data to be collected in busy repair environments, often by volunteers.  

As such, the standard is grouped into logical ‘modules’ that group together related questions, and within these modules questions are classified as required or optional. Modules are described as either primary or additional.  To be fully compliant with the standard, data must aim to include all required fields in the primary modules.

Organisations may optionally choose to collect and share data in additional modules.  In order to be fully compliant with the standard, if an additional module is collected, then all required fields within that module must be included.

Primary and additional modules, and required and optional questions, are decided upon following the governance process of the Alliance.  The decision to define a question as ‘required’ is based on a number of factors - around use cases and benefits of the data the question would produce, and the complexity of data collection for that question (including who is being asked to collect the data and how - for example, we wish to avoid overloading volunteers with data collection).  Every required question should be traceable back to a particular use case and goal.

## Modules
The following outlines the primary and additional modules, and lists the required fields within each of these.  The Alliance aims to release further information on all the considered questions (those which are optional and those that are in additional modules) in due course.

### Primary

```eval_rst
.. list-table:: Primary modules
   :widths: 25 50 50
   :header-rows: 1

   * - Module
     - Description
     - Required fields
   * - Product related
     - Information about the product/device that someone has attempted to fix.  To help relate repair issues to particular groupings of product.
     - 
       - Product Category. 
       - Brand.  
       - Model.  
       - Year of Manufacture.
   * - Repair related
     - Information about the attempted fix and its outcome. To help ascertain common ways in which devices fail and the results of repair attempts.
     - 
       - Problem
       - Repair Status
   * - Session related
     - Information about when the repair took place and through which entity, e.g. a specific community repair group on a particular date.  To help verify the provenance of the repair data.  
     - 
       - Group Identifier
       - Date
```

### Additional

```eval_rst
.. list-table:: Additional modules
   :widths: 25 75
   :header-rows: 1

   * - Module
     - Description
   * - Impact related
     - Information about the wider environmental or social impact of the repair - e.g. waste weight diverted, hours volunteered, etc. This information can be calculated based on other information, e.g. product category, number of repairers at a session.
   * - Repairer related
     - Information about the person that undertook the repair.
   * - Participant related
     - Information about the person that owns the device/brought it to be fixed.
   * - Feedback related
     - Information asked of the participant about their experience of the repair attempt/event.  Also feedback from the repairer on the ease of the repair, the repairability of the product etc.
```

Please note that there currently are no agreed questions for additional modules.

## Data types and codelists
For data to be comparable, the values recorded for each field need to be of the correct type.  For example, for a date field, an agreed representation of the date is needed.  

For a categorisation field, an agreed selection of options needs to be agreed.  This is a ‘codelist’.  An open codelist provides suggested codes, but publishers can extend these lists with new codes on the basis of consensus with other publishers, or by using a codes prefixed with ‘x_‘ to indicate that it is a local ‘eXtension’ to the codelist.  A closed codelist provides mandatory codes and publishers should only use values provided in the official list. Changes to closed codelists should take place through the governance and revision process.

This section lists the expected data types and codelists for the required fields.

```eval_rst
.. list-table:: Data types and codelists
   :widths: 25 25 50
   :header-rows: 1

   * - Question
     - Field Name
     - Type
   * - Product Category
     - product_category
     - Option from open codelist. A standardised codelist has yet to be agreed and is the subject of ongoing work. At present, groups will collect data using their existing product categorisations.
   * - Brand
     - brand
     - Option from open codelist. A standardised codelist has yet to be agreed and is the subject of ongoing work. At present, groups will collect data using their existing methods.  
   * - Model
     - model
     - Option from open codelist. A standardised codelist has yet to be agreed and is the subject of ongoing work. At present, groups will collect data using their existing methods.
   * - Year of Manufacture
     - year_manufactured
     - Year.  YYYY (i.e. four digit year)
   * - Repair Status
     - repair_status
     - Option from closed codelist. A standardised codelist has yet to be agreed and is the subject of ongoing work. At present, groups will collect and share data using their existing methods.
   * - Group Identifier
     - group_id
     - String.  Unique. A unique identifier across all members that identifies the group responsible for the repair.  
   * - Date 
     - date
     - Date.  YYYY-MM-DD format. (i.e. year, month, day.)
```


## Producing and Sharing Compliant Data

Compliant data is data that:

- contains the required data as agreed per this standard
- is formatted using the correct data formats as agreed per this standard
- is publicly available for download
- is licensed correctly

### Data Format

Initially, each member will publish its data in CSV format, where each row represents a single repair attempt, and will contain the values for all of the required fields listed above.   The first row will be a header row, with the column titles matching those names listed above.  Additional optional fields can be included in the CSV should any member wish to do so.

An example reference file of data in the required format can be found [here](https://drive.google.com/open?id=1epzElEmzG4Y5Fu43amM1uFtjI18ivWoj).

The Alliance will review the data format as the standard evolves.  

### Data Collection Tools

The Alliance does not prescribe a particular tool with which to collect the data, however individual members are encouraged to share advice and help on using and expanding existing tools.

### Data Publishing

Organisations will host their own CSV data files, in a publicly accessible and downloadable location such as their website.  A public registry listing the URL of each of these datasets will be maintained on openrepair.org.
 
In order to ensure that the Alliance makes available up-to-date data on repair, each member commits to updating the ORDS data that it publishes at least on a monthly basis, by the end of each calendar month. 

### Data Versioning

Further discussion by the Alliance is needed to determine the requirements of keeping the history of the data collected through the Open Repair Data Standard.  At present, members commit to maintaining their own historical records and to amend previously released data points only to ensure increased accuracy. 

### Data Licensing

Data must be licensed under the [Creative Commons Attribution-ShareAlike 4.0 International (CC BY-SA 4.0)](https://creativecommons.org/licenses/by-sa/4.0/).

As we develop the standard further, we plan to revisit the licensing of data to best address the potential commercial use of the data by third parties. 
