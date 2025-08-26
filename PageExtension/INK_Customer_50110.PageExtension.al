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
    actions
    {
        addlast(History)
        {
            action(GenerateCopilotJobProposal)
            {
                Caption = 'Generate Copilot Job Proposal';
                Image = NewSparkle;
                ApplicationArea = All;
                ToolTip = 'Generate a job proposal using Copilot for the selected customer.';
                trigger OnAction()
                var
                    GenerateJobProposal: Codeunit "Generate Job Proposal";
                    SaveCopilotJobProposal: Codeunit "Save Copilot Job Proposal";
                    CopilotJobProposal: Record "Copilot Job Proposal" temporary;
                begin
                    // Prompt can be customized or taken from user input
                    GenerateJobProposal.SetUserPrompt('Create a job proposal for customer ' + Rec."No.");
                    if GenerateJobProposal.ExecuteProposalGeneration() then begin
                        GenerateJobProposal.GetResult(CopilotJobProposal);
                        // Save the generated proposal for the selected customer
                        SaveCopilotJobProposal.Save(Rec."No.", CopilotJobProposal);
                        Message('Copilot job proposal generated and saved for customer %1.', Rec."No.");
                    end else
                        Error('No prompt provided. Proposal generation failed.');
                end;
            }
        }
    }

    var
        AdditionalEmail: Text;
}