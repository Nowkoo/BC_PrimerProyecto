codeunit 50115 CompanyAddressProvider implements IAddressProvider
{
    procedure GetAddress(): Text
    begin
        exit('Company address \ Denmark 2800')
    end;
}