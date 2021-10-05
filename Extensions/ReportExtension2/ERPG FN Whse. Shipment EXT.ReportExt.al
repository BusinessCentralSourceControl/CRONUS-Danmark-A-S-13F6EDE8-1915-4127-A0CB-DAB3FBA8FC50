reportextension 50600 "ERPG FN Whse. Shipment EXT" extends "ForNAV Warehouse Shipment"
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
    var PickToDate: Date;
}
