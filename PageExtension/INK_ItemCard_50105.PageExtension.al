pageextension 50105 INK_Item extends "Item Card"
{
    layout
    {
        #region task 130
        addafter("Unit Price")
        {
            field("Budget Price"; Rec."Budget Price")
            {
                ApplicationArea = All;
                ToolTip = 'Shows the Budget Sales Price of vehicle.';
                Caption = 'Budget Price';
            }
            field("PDI"; Rec."PDI")
            {
                ApplicationArea = All;
                ToolTip = 'Shows the PDI Cost of vehicle.';
                Caption = 'PDI';
            }
            field("Sales Commission"; Rec."Sales Commission")
            {
                ApplicationArea = All;
                ToolTip = 'Indicates the Sales Commission of vehicle.';
                Caption = 'Sales Commission';
            }
        }
        #endregion
    }
}