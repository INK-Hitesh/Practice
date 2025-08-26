page 50102 "Copilot Job Proposal Subpart"
{
    PageType = CardPart;
    SourceTable = "Copilot Job Proposal";
    Editable = true;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            group(Group)
            {
                field("Job Short Description"; Rec."Job Short Description")
                {
                    ApplicationArea = All;
                }
                field("Job Full Description"; rec."Job Full Description")
                {
                    ApplicationArea = All;
                    MultiLine = true;
                }
                field("Job Customer Name"; rec."Job Customer Name")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}