pageextension 56790 "PageExtension56790" extends "Customer List"
{
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
                    reportRec.CopyFilters(Rec);
                    Report.Run(Report::"Thursday", true, false, reportRec);
                end;
            }
        }
    }
}
