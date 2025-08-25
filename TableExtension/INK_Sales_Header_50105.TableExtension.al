tableextension 50105 INK_Sales_Header extends "Sales Header"
{
    fields
    {
        #region task 130
        field(60105; "Budget Price"; Integer)
        {
            Caption = 'Budget Price';
            DataClassification = ToBeClassified;
            Description = 'Shows the Budget Sales Price of vehicle.';
        }
        field(60106; "PDI"; Integer)
        {
            Caption = 'PDI';
            DataClassification = ToBeClassified;
            Description = 'Shows the PDI Cost of vehicle.';
        }
        field(60107; "Sales Commission"; Integer)
        {
            Caption = 'Sales Commission';
            DataClassification = ToBeClassified;
            Description = 'Indicates the Sales Commission of vehicle.';
        }
        field(60108; "Budget Difference"; Decimal)
        {
            Caption = 'Budget Difference';
            DataClassification = ToBeClassified;
            Description = 'Show the difference between the selling price in the quote and the budget price. Negative: represents the price below the budget, positive represents the price above the budget.';
        }
        field(60109; "Price Approval Status"; Text[2048])
        {
            Caption = 'Price Approval Status';
            DataClassification = ToBeClassified;
            Description = 'This indicates whether the selling price needs to be approved or not.';
        }
        field(60110; "TEMSA Options"; Integer)
        {
            Caption = 'TEMSA Options';
            DataClassification = ToBeClassified;
            Description = 'Shows the total amount of Temsa options.';
        }
        #endregion
    }
}