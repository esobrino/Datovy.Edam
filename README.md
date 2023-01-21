## Datovy EDAM
# Enterprise Data Access Management

## <span style="color:skyblue;font-weight:bold">MOTIVATION</span>
After many years of struggling with spreadsheets, word documents and other forms of documentation while trying to work with Business Analysts (BA) and Architects and collaborative define an "Enterprise Data Model" it was clear to us that we should strive for a better way to capture and maintain Data Assets information.

There are excellent commercial tools to help is this area still we have not found any tool that offers a substantial set of features to do data assets management that we could rely on without some kind of financial burden to our customers and projects.  Not every customer or project has the budget to manage the expenses of a workable "Data Asset Management" (DAM) and for this reason BA's and Architects resolve to use spreadsheets, word documents or other forms of documentation to manage solutions data assets.

After many years of development without any budget and limited time only the hope that we could find a way to provide a tool with some level of usable DAM features to help in the documentation and generation of Data Assets artifacts Datovy is presenting its "Open Source" EDAM solution.  With the possible contributions of the larger "Open Source" community we hope to find a better way to make this effort a suitable alternative to Commercial software specially for those projects with limited budget.

EDAM offers output that is always verifiable with schema definitions and its output to an Excel Workbook a guaranteed consistent with declared entities that is a substantial improvement over handmade Spreadsheets that can be easily break and extremely difficult to maintain.

This December 2022 EDAM is released in GITHUB with a set of limited functionality but enough to be able to quickly generate documentation, schemas, and other artifacts.  The rest of this document will try to provide a glimpse into EDAM and existing features.  This is not aimed to compete with Commercial offerings and is work in progress therefore expect incomplete functionality and documentation, by-hand configurations or work, bugs to be fixed and other hurdles that will be found while trying to use this product.  We have been users of our own software and we think that those hurdles worth the trouble since we could ease the Business Analysis and Data Architecture by quickly generate useable documentation and artifacts.   Hopefully we could find some additional contributors that could spend time with us and improve this product.

## <span style="color:skyblue;font-weight:bold">COMMUNICABLE DISEASES</span>
At the same time of this release Datovy is also providing another contribution to the "Open Source" community with the release of a database for "Communicable Diseases" or "Disease Surveillance" (DS) with limited and partial support for related CDC messaging.
The DS database is used in the first release of EDAM as a sample non-trivial collection of data entities and components that show case supported features.

## <span style="color:skyblue">Sample Schemas</span>
For the "Communicable Diseases" project the EDAM was used to produce sample schemas including DDL, XSD, JSON, and JSON-LD artifacts.  Find those in:

- Datovy.Edam/Edam.App.Data/Projects/Datovy.HC.CD/Documents folder.

## <span style="color:skyblue;font-weight:bold">EDAM FEATURES</span>
(See feature list in the Documents/Edam.Documentation.v0.docx)

## <span style="color:skyblue;font-weight:bold">END-USER DOCUMENTATION</span>
(Review the Word document in Documents/Edam.Documentation.v0.docx)

## <span style="color:skyblue;font-weight:bold">EDAM DATABASE</span>
The MS-SQL EDAM Database is provided as a separate VS solution withing this project that can be found in "Edam.Database" (see the related "Edam.Installation.v0.doc" documentation)

## <span style="color:skyblue;font-weight:bold">EDAM USE CASE SUPPORT</span>
There are too many issues while trying prepare an Asset Data Mapping for a Use Case using Excel that is usually and often done by hand.  EDAM support for Use Cases helps to describe the mappings, processing instructions while directly managing the source and target paths by the Application keeping it consistent with the data components and documents.

Review the Use Case sections in the provided Documentation to get acquainted with Use Case, Mappings, and Reporting support. 

## <span style="color:skyblue;font-weight:bold">GETTING STARTED</span>
Find how to install the current version and other documentation in the "Documentation" folder.

## <span style="color:skyblue;font-weight:bold">CONTRIBUTING</span>
We hope that this project is useful for others in search of an open platform for "Enteprise Data Asset Management" for now at a starting point.  With that in mind help us shape the future of this project, we will greatly appreciate any help in any form.

## <span style="color:skyblue;font-weight:bold">REFERENCES</span>
This project uses a few open-source contributions from different sources or GITHUB Projects on their own including the use of the Microsoft Monaco editor and others.  Those contributions should be found in their original form and easy to identify and those have their own licenses and copyrights, make sure to keep those as found.  If you find some code not properly referenced let us know.

The original project came from "KnowTech Inc." (KT), located in SC, and with the help of Datovy put in shape for the GITHUB.  You may find references of KT all over the code and those libaries and contributions should be acknowledged as the contribution of KT.

## <span style="color:skyblue;font-weight:bold">CONTACT-US</span>
Anything useful to say about the project?  Contact us at:

Eduardo - ed.sobrino@openk.com
Pravin - tpravin@datovy.com


