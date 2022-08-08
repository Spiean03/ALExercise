
/*
You are a developer at CRONUS International Ltd. and you want to test your newly acquired knowledge of built-in functions. 
You want to create a page that calculates Armstrong numbers (up to 10,000) and displays them in a message box.

An Armstrong number is calculated by raising each digit to the power of the last digit and summing the results.
*/

page 50114 ArmstrongCard
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    Caption = 'Armstrong Card';

    trigger OnOpenPage()
    var
        Counter1: Integer;
        CounterText: Text[5];
        Counter2: Integer;
        PowerNumber: Integer;
        Number: Integer;
        Result: Integer;
        ResultList: List of [Integer];
        ArmstrongNumbers: Text;
    begin
        for Counter1 := 1 to 10000 do begin
            CounterText := Format(Counter1);
            Evaluate(PowerNumber, CopyStr(CounterText, StrLen(CounterText), 1));
            for Counter2 := 1 to StrLen(CounterText) do begin
                Evaluate(Number, CopyStr(CounterText, Counter2, 1));
                Result += Power(Number, PowerNumber);
            end;

            if Result = Counter1 then
                ResultList.Add(Result);

            Clear(Result);
        end;

        foreach Counter1 in ResultList do
            ArmstrongNumbers += Format(Counter1) + '\';

        Message(ArmstrongNumbers);

    end;
}