// tableextension 50113 INK_Cust extends Customer
// {
//     Caption = 'Customer Card';
//     fields
//     {
//         field(50100; "Additional Email"; Blob)
//         {
//             Caption = 'Additional Email';

//             trigger OnValidate()
//             begin
//                 // ValidateEmail();
//             end;
//         }
//         #region task 126
//         field(50101; "SIREN No."; Text[20])
//         {
//             Caption = 'SIREN No.';
//         }
//         #endregion

//         modify("Phone No.")
//         {
//             Caption = 'Customer Phone No.';
//         }
//     }

//     // procedure SetAdditionalEmail(NewAdditionalEmail: Text)
//     // var
//     //     OutStream: OutStream;
//     // begin
//     //     Clear("Additional Email");
//     //     "Additional Email".CreateOutStream(OutStream, TEXTENCODING::UTF8);
//     //     OutStream.WriteText(NewAdditionalEmail);
//     //     Modify();
//     // end;

//     // procedure GetAdditionalEmail() AdditionalEmail: Text
//     // var
//     //     TypeHelper: Codeunit "Type Helper";
//     //     InStream: InStream;
//     // begin
//     //     CalcFields("Additional Email");
//     //     "Additional Email".CreateInStream(InStream, TEXTENCODING::UTF8);
//     //     exit(TypeHelper.TryReadAsTextWithSepAndFieldErrMsg(InStream, TypeHelper.LFSeparator(), FieldName("Additional Email")));
//     // end;

//     // local procedure ValidateEmail()
//     // var
//     //     MailManagement: Codeunit "Mail Management";
//     // begin
//     //     MailManagement.CheckValidEmailAddresses(GetAdditionalEmail());
//     // end;
// }
