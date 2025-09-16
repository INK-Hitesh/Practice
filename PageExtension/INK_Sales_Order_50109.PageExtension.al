pageextension 50109 INK_Sales_Order extends "Sales Order List"
{
    actions
    {
        addafter("Print Confirmation")
        {
            action(ConfirmOrder)
            {
                ApplicationArea = All;
                Caption = 'Confirm Order';
                Image = Confirm;
                ToolTip = 'Confirm the selected sales order.';
                trigger OnAction()
                var
                    SalesHeader: Record "Sales Header";
                begin
                    Report.Run(Report::"Sales Word Layout", false, false, Rec);
                end;
            }
        }
    }
}