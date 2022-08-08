page 50109 CourseList
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = Course;
    Caption = 'Course List';
    Editable = false;
    CardPageId = "Course Card";


    layout
    {
        area(Content)
        {
            repeater(General)
            {
                Caption = 'General';
                field(Code; Code)
                {
                    ApplicationArea = All;

                }
                field(Name; Name)
                {
                    ApplicationArea = All;

                }
                field(Description; Description)
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
}
