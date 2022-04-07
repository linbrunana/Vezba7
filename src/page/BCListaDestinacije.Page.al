page 50251 "BC Lista Destinacije"
{
    Caption = 'Lista Destinacije';
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = "BC Destinacija";
    CardPageId = "BC Kartica Destinacije";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                Caption = 'Group';
                field("Code"; Rec.Code)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Code field.';
                    Caption = 'Code';

                }

                field("Alocirana Linija"; Rec."Alocirana Linija")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Alocirana Linija field.';
                    Caption = 'Alocirana linija';


                }

                field("Pocetno Stajaliste"; Rec."Pocetno stajaliste")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Pocetno stajaliste field.';
                    Caption = 'Pocetno stajaliste';

                }

                field("Datum i vreme polaska"; Rec."Datum i vreme polaska")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Datum i vreme polaska field.';
                    Caption = 'Datum i vreme polaska';

                }

            }
        }
    }


}