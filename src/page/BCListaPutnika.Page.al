page 50253 "BC Lista Putnika"
{
    Caption = 'Lista Putnika';
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = "BC Putnik";
    CardPageId = "BC Kartica Putnika";

    layout
    {
        area(Content)
        {
            repeater(Group)
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

}