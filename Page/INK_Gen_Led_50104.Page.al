page 50104 INK_GenLedEnt
{
    APIGroup = 'apiGroup';
    APIPublisher = 'INK';
    APIVersion = 'v1.0';
    ApplicationArea = All;
    Caption = 'inkGenLedEnt';
    DelayedInsert = true;
    EntityName = 'GLEntry';
    EntitySetName = 'GLEntry';
    PageType = API;
    SourceTable = "G/L Entry";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(entryNo; Rec."Entry No.")
                {
                    Caption = 'Entry No.';
                }
                field(gLAccountNo; Rec."G/L Account No.")
                {
                    Caption = 'G/L Account No.';
                }
                field(globalDimension1Code; Rec."Global Dimension 1 Code")
                {
                    Caption = 'Global Dimension 1 Code';
                }
                field(globalDimension2Code; Rec."Global Dimension 2 Code")
                {
                    Caption = 'Global Dimension 2 Code';
                }
                field(shortcutDimension3Code; Rec."Shortcut Dimension 3 Code")
                {
                    Caption = 'Shortcut Dimension 3 Code';
                }
                field(shortcutDimension4Code; Rec."Shortcut Dimension 4 Code")
                {
                    Caption = 'Shortcut Dimension 4 Code';
                }
                field(shortcutDimension5Code; Rec."Shortcut Dimension 5 Code")
                {
                    Caption = 'Shortcut Dimension 5 Code';
                }
                field(shortcutDimension6Code; Rec."Shortcut Dimension 6 Code")
                {
                    Caption = 'Shortcut Dimension 6 Code';
                }
                field(shortcutDimension7Code; Rec."Shortcut Dimension 7 Code")
                {
                    Caption = 'Shortcut Dimension 7 Code';
                }
                field(shortcutDimension8Code; Rec."Shortcut Dimension 8 Code")
                {
                    Caption = 'Shortcut Dimension 8 Code';
                }
                part(ShortcutDimension3ValuePart; "Dimensions Set entry")
                {
                    EntitySetName = 'DimensionsSetEntry';
                    EntityName = 'DimensionsSetEntry';
                    UpdatePropagation = SubPart;
                    SubPageLink = "Dimension Set ID" = Field("Dimension Set ID");
                }
            }
        }
    }
}