page 50111 "Copilot Job Proposals"
{
    PageType = List;
    SourceTable = "Copilot Job Proposal";
    ApplicationArea = All;
    Caption = 'Copilot Job Proposals';
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Customer No."; Rec."Customer No.") { }
                field("Job Short Description"; Rec."Job Short Description") { }
                field("Job Full Description"; rec."Job Full Description") { }
                field("Job Customer Name"; rec."Job Customer Name") { }
            }
        }
    }
}