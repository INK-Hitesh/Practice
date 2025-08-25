pageextension 50107 INK_Sales_Quotes extends "Sales Quotes"
{
    layout
    {
        addafter(Amount)
        {
            #region task 130
            field("Budget Difference"; Rec."Budget Difference")
            {
                ApplicationArea = All;
                Caption = 'Budget Difference';
            }
            field("Price Approval Status"; Rec."Price Approval Status")
            {
                ApplicationArea = All;
                Caption = 'Price Approval Status';
                ToolTip = 'This indicates whether the selling price needs to be approved or not.';
            }
            #endregion
        }
    }
}