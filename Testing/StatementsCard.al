page 50145 StatementCard
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    Caption = 'Statement Card';

    layout
    {
        area(Content)
        {
            group(Input)
            {
                Caption = 'Input';
                field(Difficulty; Difficulty)
                {
                    ApplicationArea = All;
                    trigger OnValidate();
                    var
                        myInt: Integer;
                    begin
                        GetSuggestion();
                    end;

                }
            }
            group(Output)
            {
                Caption = 'Output';
                field(Suggestions; Suggestions)
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field(Level; Level)
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
        Level: Text[20];
        Suggestions: Text[50];
        Difficulty: Integer;

    procedure GetSuggestion()
    begin
        Level := '';
        Suggestions := '';

        case Difficulty of
            1 .. 5:
                begin
                    Level := 'Beginner';
                    Suggestions := 'Take e-learning or remote training';
                end;

            6 .. 8:
                begin
                    Level := 'Intermediate';
                    Suggestions := 'Attend instructior-led';
                end;

            9 .. 10:
                begin
                    Level := 'Advanced';
                    Suggestions := 'Attend instructor-led and self study';
                end;
        end;
    end;
}
