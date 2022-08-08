page 50146 Arithmetic
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    Caption = 'Arithmetic Operators';

    layout
    {
        area(Content)
        {
            group(Input)
            {
                Caption = 'Enter the Values';
                field(Value1; Value1)
                {
                    ApplicationArea = All;

                }
                field(Value2; Value2)
                {
                    ApplicationArea = All;

                }
            }
            group(Output)
            {
                Caption = 'Output';
                field(Summe; Summ)
                {
                    ApplicationArea = All;
                }
                field(Produkt; Prod)
                {
                    ApplicationArea = All;
                }
                field(Differenz; Diff)
                {
                    ApplicationArea = All;
                }
                field(Quotient; Quo)
                {
                    ApplicationArea = All;
                }
                field(DivInteger; DivInt)
                {
                    ApplicationArea = All;
                }
                field(Modulo; Modd)
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
            action(Execute)
            {
                ApplicationArea = All;
                Caption = 'Execute it here';
                Image = ExecuteBatch;

                trigger OnAction()
                begin
                    Summ := Value1 + Value2;
                    Prod := Value1 * Value2;
                    DivInt := Value1 DIV Value2;
                    Modd := Value1 MOD Value2;
                    Diff := Value1 - Value2;
                    Quo := Value1 / Value2;


                end;
            }
        }
    }

    var
        Value1: Integer;
        Value2: Integer;
        Summ: Integer;
        Diff: Integer;
        Prod: Integer;
        Quo: Decimal;
        DivInt: Integer;
        Modd: Integer;
}
