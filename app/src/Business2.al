/// <summary>
/// Table MyTable (ID 50000).
/// </summary>
table 50112 MyTabl
{
    Caption = 'Employe table';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "emp code"; Code[10])
        {
            DataClassification = ToBeClassified;

        }

        field(20; "emp name"; text[15])
        {
            DataClassification = ToBeClassified;
        }
        field(30; "Salary"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(40; "gender"; option)

        {
            Optionmembers = M,F;
            DataClassification = ToBeClassified;
        }
        field(50; "City"; option)
        {
            Optionmembers = Moscow,Ekaterinburg,Bryansk;
            DataClassification = ToBeClassified;

        }
    }

    keys
    {
        key(Key1; "emp code")
        {
            Clustered = true;
        }
        key(sk; City)
        {


        }

    }



    trigger OnInsert()
    begin
        Message('Data insert')
    end;

    trigger OnModify()
    begin
        Message('Data modife')
    end;

    trigger OnDelete()
    begin
        Message('Data delete')
    end;

    trigger OnRename()
    begin
        Message('Data rename')
    end;

}