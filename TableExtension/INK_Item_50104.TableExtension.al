tableextension 50104 INK_Item extends Item
{
    fields
    {
        #region task 130
        field(60104; "Budget Price"; Integer)
        {
            Caption = 'Budget Price';
            DataClassification = ToBeClassified;
            Description = 'Shows the Budget Sales Price of vehicle.';
        }
        field(60105; "PDI"; Integer)
        {
            Caption = 'PDI';
            DataClassification = ToBeClassified;
            Description = 'Shows the PDI Cost of vehicle.';
        }
        field(60106; "Sales Commission"; Integer)
        {
            Caption = 'Sales Commission';
            DataClassification = ToBeClassified;
            Description = 'Indicates the Sales Commission of vehicle.';
        }
        #endregion
    }
}