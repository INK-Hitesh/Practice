pageextension 50106 INK_Sales_Stats extends "Sales Stats."
{
    layout
    {
        #region task 130
        addafter(TotalAmount1)
        {
            field("Budget Price"; Rec."Budget Price")
            {
                ApplicationArea = All;
                Caption = 'Budget Price';
                ToolTip = 'Shows the Budget Sales Price of vehicle.';
            }
            field("Budget Difference"; Rec."Budget Difference")
            {
                ApplicationArea = All;
                Caption = 'Budget Differance';
            }
            field("Price Approval Status"; Rec."Price Approval Status")
            {
                ApplicationArea = All;
                Caption = 'Price Approval Status';
                ToolTip = 'Indicates the status of Price Approval.';
            }
            field("TEMSA Options"; Rec."TEMSA Options")
            {
                ApplicationArea = All;
                Caption = 'TEMSA Options';
                ToolTip = 'Shows the TEMSA Options of vehicle.';
            }
        }
        #endregion
    }
}