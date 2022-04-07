table 50251 "BC Putnik"
{
    DataClassification = CustomerContent;
    Caption = 'Putnik';
    LookupPageId = "BC Lista Putnika";
    DrillDownPageId = "BC Lista Putnika";

    fields
    {
        field(1; "No."; Integer)
        {
            DataClassification = CustomerContent;
            AutoIncrement = true;
            Editable = false;
            Caption = 'No.';

        }

        field(2; Ime; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Ime';

        }

        field(3; "Put do"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Put do';

        }

        field(4; "Prekomerni prtljag"; Boolean)
        {
            DataClassification = CustomerContent;
            Caption = 'Prekomerni prtljag';
            Editable = false;
        }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }


}