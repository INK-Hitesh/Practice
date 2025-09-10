page 50103 "Dimensions Set entry"
{
    APIGroup = 'apiGroup';
    APIPublisher = 'INK';
    APIVersion = 'v1.0';
    ApplicationArea = All;
    Caption = 'DimensionsSetEntry';
    EntityName = 'DimensionsSetEntry';
    EntitySetName = 'DimensionsSetEntry';
    PageType = API;
    SourceTable = "Dimension Set Entry";
    DelayedInsert = true;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(dimensionCode; Rec."Dimension Code")
                {
                }
                field(dimensionValueCode; Rec."Dimension Value Name")
                {
                }
            }
        }
    }
}