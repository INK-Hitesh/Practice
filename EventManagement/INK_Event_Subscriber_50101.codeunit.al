codeunit 50101 INK_Event_Subscriber_50101
{
    //     #region task 126
    //     [EventSubscriber(ObjectType::Page, Page::"Customer Card", OnQueryClosePageEvent, '', false, false)]
    //     local procedure OnCustomerQueryClosePageEvent(var Rec: Record Customer)
    //     begin
    //         if Rec."Country/Region Code" = '' then begin
    //             Error('Le code pays est manquant');
    //         end;

    //         if (Rec."Gen. Bus. Posting Group" = 'EUROPE') and (Rec."VAT Registration No." = '') then begin
    //             Error('Le numéro de TVA est manquant');
    //         end;

    //         if (Rec."Gen. Bus. Posting Group" = 'HORSUE') and (Rec."EORI Number" = '') then begin
    //             Error('Le numéro EORI est manquant');
    //         end;
    //         if (Rec."Gen. Bus. Posting Group" = 'FRANCE') and (Rec."SIREN No." = '') then begin
    //             Error('Le numéro SIREN est manquant');
    //         end;
    //     end;

    //     [EventSubscriber(ObjectType::Page, Page::"Vendor Card", OnQueryClosePageEvent, '', false, false)]
    //     local procedure OnVendorQueryClosePageEvent(var Rec: Record Vendor)
    //     begin
    //         if Rec."Country/Region Code" = '' then begin
    //             Error('Le code pays est manquant');
    //         end;

    //         if (Rec."Gen. Bus. Posting Group" = 'EUROPE') and (Rec."VAT Registration No." = '') then begin
    //             Error('Le numéro de TVA est manquant');
    //         end;
    //         if (Rec."Gen. Bus. Posting Group" = 'HORSUE') and (Rec."EORI Number" = '') then begin
    //             Error('Le numéro EORI est manquant');
    //         end;
    //         if (Rec."Gen. Bus. Posting Group" = 'FRANCE') and (Rec."SIREN No." = '') then begin
    //             Error('Le numéro SIREN est manquant');
    //         end;
    //     end;

    //     [EventSubscriber(ObjectType::Table, Database::Customer, OnAfterValidateEvent, 'Country/Region Code', false, false)]
    //     local procedure OnAfterValidateEventCustomer(var Rec: Record Customer)
    //     var
    //         CountryRegion: Record "Country/Region";
    //     begin
    //         if Rec."Country/Region Code" <> '' then begin
    //             if CountryRegion.Get(Rec."Country/Region Code") then
    //                 Rec.Validate("Gen. Bus. Posting Group", CountryRegion."Gen. Business Posting Groups");
    //         end else begin
    //             Rec.Validate("Gen. Bus. Posting Group", '');
    //         end;
    //     end;

    //     [EventSubscriber(ObjectType::Table, Database::Vendor, OnAfterValidateEvent, 'Country/Region Code', false, false)]
    //     local procedure OnAfterValidateEventVendor(var Rec: Record Vendor)
    //     var
    //         CountryRegion: Record "Country/Region";
    //     begin
    //         if Rec."Country/Region Code" <> '' then begin
    //             if CountryRegion.Get(Rec."Country/Region Code") then
    //                 Rec.Validate("Gen. Bus. Posting Group", CountryRegion."Gen. Business Posting Groups");
    //         end else begin
    //             Rec.Validate("Gen. Bus. Posting Group", '');
    //         end;
    //     end;
    //     #endregion

    [EventSubscriber(ObjectType::Report, Report::"Standard Sales - Pro Forma Inv", OnBeforeGetItemForRec, '', false, false)]
    local procedure OnBeforeGetItemForRec(var IsHandled: Boolean)
    var
    // Instream: InStream;
    // fileName: Text;
    begin
        IsHandled := true;
        // File.UploadIntoStream('Preview', '', 'All files (*.*)|*.*', fileName, Instream);
        // File.ViewFromStream(Instream, fileName, 'application/pdf');
    end;
}