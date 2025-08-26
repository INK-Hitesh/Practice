codeunit 50102 "Save Copilot Job Proposal"
{
    procedure Save(CustomerNo: Code[20]; CopilotJobProposal: Record "Copilot Job Proposal")
    var
        PersistentProposal: Record "Copilot Job Proposal";
    begin
        // Only process temporary records
        if not CopilotJobProposal.IsTemporary then
            exit;

        // Try to find an existing proposal for the customer
        if PersistentProposal.Get(CustomerNo) then begin
            // Update existing proposal
            PersistentProposal.TransferFields(CopilotJobProposal);
            PersistentProposal."Customer No." := CustomerNo;
            PersistentProposal.Modify(true);
        end else begin
            // Insert new proposal
            PersistentProposal.Init();
            PersistentProposal.TransferFields(CopilotJobProposal);
            PersistentProposal."Customer No." := CustomerNo;
            PersistentProposal.Insert(true);
        end;
    end;
}