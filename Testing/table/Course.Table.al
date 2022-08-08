table 50105 Course
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Code; code[10])
        {
            DataClassification = ToBeClassified;

        }
        field(2; Name; Text[20])
        {
            DataClassification = ToBeClassified;

        }
        field(3; Description; Text[25])
        {
            DataClassification = ToBeClassified;

        }
        field(4; Type; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "Instructor-led","e-learning","remote";
        }
        field(5; Duration; Decimal)
        {
            DataClassification = ToBeClassified;

        }
        field(6; Price; Decimal)
        {
            DataClassification = ToBeClassified;

        }
        field(7; Active; boolean)
        {
            DataClassification = ToBeClassified;

        }
        field(8; Difficulty; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(9; PassingRate; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(10; InstructorCode; code[25])
        {
            DataClassification = ToBeClassified;
            TableRelation = Resource where(Type = const(Person));

        }
        field(11; InstructorName; Text[25])
        {
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup(Resource.Name where("No." = FIELD(InstructorCode)));


        }
    }

    keys
    {
        key(Key1; Code)
        {
            Clustered = true;
        }
        key("Secondary Key1"; InstructorCode)
        {

        }
        key("Secondary Key2"; Type)
        {

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
