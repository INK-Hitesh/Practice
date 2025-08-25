page 50100 INK_Custome_Api
{
    PageType = API;
    Caption = 'Sales Header';
    APIPublisher = 'hitesh';
    APIGroup = 'groupName';
    APIVersion = 'v1.0';
    EntityName = 'SalesHeader';
    EntitySetName = 'SalesHeaders';
    SourceTable = "Sales Header";
    DelayedInsert = true;
    ODataKeyFields = SystemId;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("No"; Rec."No.")
                {
                    ApplicationArea = All;
                    Caption = 'No.';
                    ToolTip = 'No.';
                }
                field("SelltoCustomerNo"; Rec."Sell-to Customer No.")
                {
                    ApplicationArea = All;
                    Caption = 'Sell-to Customer No.';
                    ToolTip = 'Sell-to Customer No.';
                }
                field("SelltoCustomerName"; Rec."Sell-to Customer Name")
                {
                    ApplicationArea = All;
                    Caption = 'Sell-to Customer Name';
                    ToolTip = 'Sell-to Customer Name';
                }
                field("SelltoAddress"; Rec."Sell-to Address")
                {
                    ApplicationArea = All;
                    Caption = 'Sell-to Address';
                    ToolTip = 'Sell-to Address';
                }
                field("SelltoCity"; Rec."Sell-to City")
                {
                    ApplicationArea = All;
                    Caption = 'Sell-to City';
                    ToolTip = 'Sell-to City';
                }
                field("SelltoPostCode"; Rec."Sell-to Post Code")
                {
                    ApplicationArea = All;
                    Caption = 'Sell-to Post Code';
                    ToolTip = 'Sell-to Post Code';
                }
                field("SelltoCountryRegionCode"; Rec."Sell-to Country/Region Code")
                {
                    ApplicationArea = All;
                    Caption = 'Sell-to Country/Region Code';
                    ToolTip = 'Sell-to Country/Region Code';
                }
                field("SelltoPhoneNo"; Rec."Sell-to Phone No.")
                {
                    ApplicationArea = All;
                    Caption = 'Sell-to Phone No.';
                    ToolTip = 'Sell-to Phone No.';
                }
                field("SelltoEmail"; Rec."Sell-to E-Mail")
                {
                    ApplicationArea = All;
                    Caption = 'Sell-to E-Mail';
                    ToolTip = 'Sell-to E-Mail';
                }
                // part("SalesLines"; "Sales Order Subform")
                // {
                //     EntityName = 'SalesLines';
                //     EntitySetName = 'SalesLines';
                //     SubPageLink = "Document No." = field("No.");
                // }

            }
        }
    }
}