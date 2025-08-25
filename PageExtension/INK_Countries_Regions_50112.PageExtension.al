pageextension 50112 "INK Countries/Regions" extends "Countries/Regions"
{
    layout
    {
        addafter("Address Format")
        {
            #region task 126
            field("Gen. Business Posting Groups"; Rec."Gen. Business Posting Groups")
            {
                ApplicationArea = All;
                Caption = 'Gen. Business Posting Groups';
                ToolTip = 'Specifies the general business posting groups for this country/region.';
            }
            #endregion
        }
    }
}