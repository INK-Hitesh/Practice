table 50101 "Copilot Job Proposal"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Job Short Description"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(2; "Job Full Description"; Text[2048])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Job Customer Name"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(4; "No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Customer No."; Code[20])
        {
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }
}