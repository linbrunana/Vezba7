table 50250 "BC Destinacija"
{
    DataClassification = CustomerContent;
    Caption = 'Destinacija';
    LookupPageId = "BC Lista Destinacije";
    DrillDownPageId = "BC Lista Destinacije";

    fields
    {
        field(1; "Code"; Code[20])
        {
            DataClassification = SystemMetadata;
            Caption = 'Code';

        }
        field(2; "Alocirana Linija"; Enum "BC Autobus")
        {
            DataClassification = CustomerContent;
            Caption = 'Alocirana Linija';
        }

        field(3; "Pocetno stajaliste"; Text[250])
        {
            DataClassification = CustomerContent;
            Caption = 'Pocetno stajaliste';
        }
        field(4; "Krajnje stajaliste"; Text[250])
        {
            DataClassification = CustomerContent;
            Caption = 'Krajnje stajaliste';
        }

        field(5; "Datum i vreme polaska"; DateTime)
        {
            DataClassification = CustomerContent;
            Caption = 'Datum i vreme polaska';
        }
    }

    keys
    {
        key(PK; Code)
        {
            Clustered = true;
        }
    }

    //
    // moja druga izmena.
}