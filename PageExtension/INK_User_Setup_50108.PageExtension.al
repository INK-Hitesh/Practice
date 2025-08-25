pageextension 50108 INK_UserSetup extends "User Setup"
{
    layout
    {
        #region task 130
        addafter("Register Time")
        {
            field("Sales Commision Checkbox"; Rec."Sales Commision Checkbox")
            {
                ApplicationArea = All;
                Caption = 'Sales Commission Checkbox';
                ToolTip = 'Indicates whether the user is a non-employee who has a commission contract for vehicle sales.';
            }
        }
        #endregion
    }
}