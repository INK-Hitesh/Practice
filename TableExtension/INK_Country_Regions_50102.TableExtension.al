tableextension 50102 "INK Country/Region" extends "Country/Region"
{
    fields
    {
        #region task 126
        field(50100; "Gen. Business Posting Groups"; Code[20])
        {
            Caption = 'Gen. Business Posting Groups';
            DataClassification = ToBeClassified;
            TableRelation = "Gen. Business Posting Group";
        }
        #endregion
    }
}