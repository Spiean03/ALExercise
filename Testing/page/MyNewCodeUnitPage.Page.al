page 50131 addtwo
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;

    actions
    {
        area(Processing)
        {
            action(codeunit)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    MyCode.run()
                end;
            }
        }
    }

    var
        MyCode: Codeunit MyNewCodeUnit;
}