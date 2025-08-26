codeunit 50102 "Save Copilot Job Proposal"
{
    procedure Save(CustomerNo: Code[20]; CopilotJobProposal: Record "Copilot Job Proposal")
    var
        PersistentProposal: Record "Copilot Job Proposal";
    begin
        // Only process temporary records
        if not CopilotJobProposal.IsTemporary then
            exit;

        // Insert or update persistent record
        if PersistentProposal.Get(CustomerNo) then begin
            PersistentProposal.TransferFields(CopilotJobProposal);
            PersistentProposal."Customer No." := CustomerNo;
            PersistentProposal.Modify(true);
        end else begin
            PersistentProposal.Init();
            PersistentProposal.TransferFields(CopilotJobProposal);
            PersistentProposal."Customer No." := CustomerNo;
            PersistentProposal.Insert(true);
        end;
    end;
}