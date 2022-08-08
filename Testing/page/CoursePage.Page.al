page 50108 "Course Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = Course;
    Caption = 'Course Details';

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                field(Code; rec.Code)
                {
                    ApplicationArea = All;

                }
                field(Name; rec.Name)
                {
                    ApplicationArea = All;

                }
                field(Description; rec.Description)
                {
                    ApplicationArea = All;

                }
                field(Duration; rec.Duration)
                {
                    ApplicationArea = All;

                }
                field(Price; rec.Price)
                {
                    ApplicationArea = All;

                }
                field(Type; rec.Type)
                {
                    ApplicationArea = All;

                }
                field(Active; rec.Active)
                {
                    ApplicationArea = All;

                }
                field(InstructorCode; rec.InstructorCode)
                {
                    ApplicationArea = All;

                }
                field(InstructorName; rec.InstructorName)
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
            action(Resource)
            {
                ApplicationArea = All;
                RunObject = page 50108;
                RunPageLink = "InstructorCode" = field(InstructorCode);
                Image = Relationship;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;

            }
        }
    }

}
