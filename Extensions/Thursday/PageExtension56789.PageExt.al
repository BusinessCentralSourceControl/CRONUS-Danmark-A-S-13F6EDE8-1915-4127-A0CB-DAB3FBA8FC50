pageextension 56789 "PageExtension56789" extends "Customer Card"
{
    layout
    {
        addafter(Name)
        {
            field(Rating;Rec.Rating)
            {
                ApplicationArea = All;
            }
        }
    }
    actions
    {
        addlast(Reporting)
        {
            action("Thursday")
            {
                Caption = 'Thursday';
                Image = "PrintCover";
                Promoted = False;
                ApplicationArea = All;

                trigger OnAction()var reportRec: Record "Customer";
                begin
                    reportRec:=Rec;
                    reportRec.SetRecFilter();
                    Report.Run(Report::"Thursday", true, false, reportRec);
                end;
            }
        }
    }
}
