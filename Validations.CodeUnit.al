codeunit 50112 Validations
{
    trigger OnRun()
    begin

    end;

    [EventSubscriber(ObjectType::Table, Database::Customer, OnAfterValidateEvent, 'Address', false, false)]
    local procedure TableCustomerOnAfterValidateAddress(Rec: Record Customer)
    begin
        CheckForPlusSign(Rec.Address);
    end;

    local procedure CheckForPlusSign(TextToVerify: Text)
    begin
        if TextToVerify.Contains('+') then
            Message('A + sign has been found');
    end;
}