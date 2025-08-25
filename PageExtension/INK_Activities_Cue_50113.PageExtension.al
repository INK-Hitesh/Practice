pageextension 50113 INK_ActivitiesExt extends "O365 Activities"
{
    layout
    {
        addafter("Ongoing Sales Orders")
        {
            field(ZYSalesOrders2; ZYSalesOrders)
            {
                ApplicationArea = All;
                Caption = 'ZY Sales Orders';
                ToolTip = 'This field shows the number of sales orders.';
                DecimalPlaces = 0 : 0;
                Editable = false;
                trigger OnDrillDown()
                var
                    SalesHeader: Record "Sales Header";
                begin
                    SalesHeader.Reset();
                    SalesHeader.SetRange("Document Type", SalesHeader."Document Type"::Order);
                    Page.Run(Page::"Sales Order List", SalesHeader);
                end;
            }
        }
    }
    var
        ZYSalesOrders: Decimal;

    trigger OnOpenPage()
    begin
        Rec.CalcFields("Ongoing Sales Orders");
        ZYSalesOrders := Rec."Ongoing Sales Orders";
    end;
}