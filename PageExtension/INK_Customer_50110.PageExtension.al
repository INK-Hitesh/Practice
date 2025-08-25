pageextension 50110 INK_Customer extends "Customer Card"
{
    layout
    {
        addafter("E-Mail")
        {
            group(AdditionalEmailGroup)
            {
                Caption = 'Additional Email';
                field(AdditionalEmail; AdditionalEmail)
                {
                    ApplicationArea = Basic, Suite;
                    Importance = Additional;
                    MultiLine = true;
                    ShowCaption = false;
                    ToolTip = 'Additional Email';

                    trigger OnValidate()
                    begin
                        // Rec.SetAdditionalEmail(AdditionalEmail);
                    end;
                }
            }
        }
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
            // field("SIREN No."; Rec."SIREN No.")
            // {
            //     ApplicationArea = All;
            //     ToolTip = 'SIREN Number';
            //     Caption = 'SIREN Number';
            //     ShowMandatory = Rec."Gen. Bus. Posting Group" = 'FRANCE';
            // }

        }
        modify("VAT Registration No.")
        {
            ApplicationArea = All;
            ShowMandatory = Rec."Gen. Bus. Posting Group" = 'EUROPE';
        }
        #endregion
    }

    trigger OnAfterGetRecord()
    begin
        // AdditionalEmail := Rec.GetAdditionalEmail();

    end;

    trigger OnQueryClosePage(CloseAction: Action): Boolean
    begin
        if Rec."No." <> '' then begin
            Rec.TestField("Phone No.");
        end;
    end;

    var
        AdditionalEmail: Text;

}