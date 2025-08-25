reportextension 50103 INK_Pro_Forma_Ext extends "Standard Sales - Pro Forma Inv"
{
    RDLCLayout = 'Layout/StandardSalesProFormaInv.rdl';

    dataset
    {
        add(Header)
        {
            column(CompanyBankName; CompanyInformation."Bank Name") { }
            column(CompanyBankAccountNo; CompanyInformation."Bank Account No.") { }
            column(CompanySWIFTCode; CompanyInformation."SWIFT Code") { }
            column(BankBranchNo; CompanyInformation."Bank Branch No.") { }
            column(PaymentRoutingno; CompanyInformation."Payment Routing No.") { }
            column(GiroNo; CompanyInformation."Giro No.") { }
            column(IBAN; CompanyInformation.IBAN) { }
        }
        add(line)
        {
            column(Type; Type) { }

        }
        modify(Line)
        {
            trigger OnAfterPreDataItem()
            begin
                SetRange(Line.Type);
            end;
        }

    }

}
