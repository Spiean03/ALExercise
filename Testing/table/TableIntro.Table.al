// Table is not the data - it is the the definition of data contained in the table
// Permanent data must be stored in a table
// A table is made up of Fields, Properties, Triggers, and Keys
// Fields have Properties and Triggers
// Keys also have Properties
// A table: - Can have up to 500 Fields, - a defined record size of up to 8000 bytes, - up to 40 different keys
// tpage = Template for page, ttable = Template for table
// Settings: Caption, CaptionML, Description, 
//           DataPerCompany (data is segregated per company, or common across all companies in the database), 
//           Permissions (read, write, insert, modify and delete...) 
//           LookupPageId
//           DrillDownPageId
//           DataCaptionFields
//           PasteIsValid
// This table only contains the Data. If we want to insert data, we have to create a page (e.g. PageIntro.al)

table 50103 Employeee
{
    DataClassification = ToBeClassified;
    Caption = 'Employee Table'; //or use CaptionML for multilanguage
    Description = 'Add some Description to the table';

    fields
    {
        field(1; EmpCode; Code[20])
        {
            NotBlank = true;
        }
        field(2; EmpName; Text[50])
        {

        }
        field(3; EmpDepartment; Text[50])
        {

        }
    }

    keys
    {
        key(PK; EmpCode) //PK = primary key
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}
