reportextension 50600 "ERPG FN Whse. Shipment EXT" extends "ForNAV VAT Sales Invoice"
{
    dataset
    {
        add(Header)
        {
            column(PickToDate;PickToDate)
            {
            }
        }
    }
    requestpage
    {
        layout
        {
            addafter(Options)
            {
                field(PickToDate;PickToDate)
                {
                    Caption = 'Pick To Date';
                    ApplicationArea = All;
                    ToolTip = 'Specify the date to pick orders to';
                }
            }
        }
        actions
        {
        }
        trigger OnOpenPage()var begin
            PickToDate:=WorkDate();
        end;
    }
    var //        [InDataSet]
    PickToDate: Date;
}
