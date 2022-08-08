// To find the page: In the search bar, enter "Logical Expression Card".
// Create a page, where two values are compared (Number1 and Number 2). If Number1 < Number2, toggle a switch

page 50148 ExpressionPage
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    Caption = 'Logical Expression Card';

    layout
    {
        area(Content)
        {
            group(Input)
            {
                Caption = 'Get the Input from the User';
                field(Number1; Number1)
                {
                    ApplicationArea = All;

                }
                field(Number2; Number2)
                {
                    ApplicationArea = All;

                }
            }
            group(Output)
            {
                Caption = 'The Output is:';
                field(Res; Res)
                {
                    ApplicationArea = All;
                    Editable = false;

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Run)
            {
                ApplicationArea = All;
                Caption = 'Run';
                Image = ExecuteBatch;
                trigger OnAction()
                begin
                    Res := Number1 < Number2;
                end;
            }
        }
    }

    var
        Number1: Integer;
        Number2: Integer;
        Res: Boolean;
}
