reportextension 50600 "ERPG FN Whse. Shipment EXT" extends "ForNAV VAT Sales Invoice" // "ForNAV Warehouse Shipment"
{
    dataset
    {
        add(Header)
        {
            column(PickToDate;PickToDateText)
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

                    trigger OnValidate()begin
                        PickToDateText:=Format(PickToDate);
                    end;
                }
            }
        }
        actions
        {
        }
        trigger OnOpenPage()var begin
            PickToDate:=WorkDate();
            PickToDateText:=Format(PickToDate);
        end;
    }
    var PickToDate: Date;
    [InDataSet]
    PickToDateText: Text[40];
}
