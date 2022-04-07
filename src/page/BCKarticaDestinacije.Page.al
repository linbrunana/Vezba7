page 50250 "BC Kartica Destinacije"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "BC Destinacija";
    Caption = 'Kartica Destinacije';

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("Code"; Rec.Code)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Code field.';


                }

                field("Alocirana Linija"; Rec."Alocirana Linija")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Alocirana Linija field.';


                }

                field("Pocetno Stajaliste"; Rec."Pocetno stajaliste")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Pocetno stajaliste field.';


                }

                field("Krajnje Stajaliste"; Rec."Krajnje stajaliste")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Krajnje stajaliste field.';


                }

                field("Datum i vreme polaska"; Rec."Datum i vreme polaska")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Datum i vreme polaska field.';


                }
            }
        }
    }

    trigger OnOpenPage()
    var
        BCPutnik: Record "BC Putnik"; //vful- daje ime promenljive vshort- skraceni naziv
        BrojZapisa: Integer;
        PorukaTok: Label 'Ova destinacija im a %1 putnika.', Comment = '%1 je broj putnika za tu destinaciju'; // umesto obicnog stringa pojavljuje se labela
    begin
        BCPutnik.SetRange("Put do", Rec.Code);
        BrojZapisa := BCPutnik.Count();
        Message(PorukaTok, Format(BrojZapisa));

    end;
}