pageextension 50103 INK_Vendor extends "Vendor Card"
{
    layout
    {
        #region task 126
        modify("Country/Region Code")
        {
            ShowMandatory = true;
        }
        addafter("VAT Registration No.")
        {
            field("EORI_Number"; Rec."EORI Number")
            {
                ApplicationArea = All;
                ToolTip = 'EORI Number';
                Caption = 'EORI Number';
                ShowMandatory = Rec."Gen. Bus. Posting Group" = 'HORSUE';
            }
            field("SIREN No."; Rec."SIREN No.")
            {
                ApplicationArea = All;
                ToolTip = 'SIREN Number';
                Caption = 'SIREN Number';
                ShowMandatory = Rec."Gen. Bus. Posting Group" = 'FRANCE';
            }
        }
        modify("VAT Registration No.")
        {
            ApplicationArea = All;
            ShowMandatory = Rec."Gen. Bus. Posting Group" = 'EUROPE';
        }
        #endregion
    }
}