page 50252 "BC Kartica Putnika"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "BC Putnik";
    Caption = 'Kartica Putnika';

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No. field.';

                }
                field(Ime; Rec.Ime)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Ime field.';

                }
                field("Put do"; Rec."Put do")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Put do field.';

                }
                field("Prekomerni prtljag"; Rec."Prekomerni prtljag")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Prekomernoi prtljag field.';

                }

            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(PrekomerniPrtljag)
            {
                ApplicationArea = All;
                ToolTip = 'Execute the Prkeomerni Prtljag action.';
                Image = SuggestItemCost;
                Caption = 'Preomerni Prtljag';
                Promoted = true;
                PromotedIsBig = true;
                PromotedOnly = true;
                PromotedCategory = Process;


                trigger OnAction()
                var
                    OpcijeTxt: Label 'Ima prekomerni prtljag,Nema prekomerni prtljag';
                    PitanjeTxt: Label 'Da li ovaj putnik ima prekomerni prtljag';
                    Izbor: Integer;
                begin
                    Izbor := StrMenu(OpcijeTxt, 2, PitanjeTxt);

                    if Izbor = 1 then
                        Rec."Prekomerni prtljag" := true
                    // Rec.Validate("Prekomerni Prtljag", true)
                    else
                        if Izbor = 2 then
                            Rec."Prekomerni prtljag" := false;
                    // Rec.Validate("Prekomerni Prtljag", false)

                end;
            }
        }
    }

    trigger OnOpenPage()
    begin
        if Rec."Prekomerni prtljag" then
            Message('Ovaj putnik ima prekomerni prtljag')
        else
            Message('Ovaj putnik nema prekomerni prtljag');
    end;

}