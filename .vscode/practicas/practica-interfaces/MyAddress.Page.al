page 50117 MyAddress
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {

            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(WhatsTheAddress)
            {
                ApplicationArea = All;
                Caption = 'What is the address?';
                ToolTip = 'Select the address.';
                Image = Addresses;

                trigger OnAction()
                var
                    iAddressProvider: Interface IAddressProvider;
                begin
                    AddressProviderFactory(iAddressProvider);
                    Message(iAddressProvider.GetAddress());
                end;
            }

            action(SendToHome)
            {
                ApplicationArea = All;
                Image = Home;
                Caption = 'Send to home';
                ToolTip = 'Set the interface implementation to home';
                trigger OnAction()
                begin
                    sendTo := sendTo::Private;
                end;
            }

            action(SendToWork)
            {
                Image = WorkCenter;
                Caption = 'Send to work';
                ToolTip = 'Set the interface implementation to work';
                trigger OnAction()
                begin
                    sendTo := sendTo::Company;
                end;
            }
        }
    }

    local procedure AddressProviderFactory(var iAddressProvider: Interface IAddressProvider)
    var
        CompanyAddressProvider: CodeUnit CompanyAddressProvider;
        PrivateAddressProvider: Codeunit PrivateAddressProvider;
    begin
        if sendTo = sendTo::Company then
            iAddressProvider := CompanyAddressProvider;

        if sendTo = sendTo::Private then
            iAddressProvider := PrivateAddressProvider;
    end;

    var
        sendTo: enum SendTo;
}