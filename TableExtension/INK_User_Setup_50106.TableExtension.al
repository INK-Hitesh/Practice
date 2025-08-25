tableextension 50106 INK_UserSetup extends "User Setup"
{
    fields
    {
        #region task 130
        field(60100; "Sales Commision Checkbox"; Boolean)
        {
            Caption = 'Sales Commission Checkbox';
            DataClassification = ToBeClassified;
            ToolTip = 'Indicates whether the user is a non-employee who has a commission contract for vehicle sales.';
        }
        #endregion
    }
}