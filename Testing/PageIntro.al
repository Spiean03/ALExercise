// This is the page to insert data to the table Employeee created in TableIntro.al

page 50104 PageIntro
{
    PageType = Card;
    SourceTable = "Employeee"; //Defines the table to access
    ApplicationArea = All;
    UsageCategory = Documents;
    Caption = 'Employeee Table Intro';

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(EmpCode; rec.EmpCode)
                {
                    ApplicationArea = All;
                }
                field(EmpName; rec.EmpName)
                {
                    ApplicationArea = All;

                }
                field(EmpDepartment; rec.EmpDepartment)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}