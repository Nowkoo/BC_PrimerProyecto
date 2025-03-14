page 50111 ExpressionsCard
{
    PageType = Card;
    ApplicationArea = All;
    Caption = 'Expressions Card';
    UsageCategory = Documents;

    layout
    {
        area(Content)
        {
            group(Input)
            {
                Caption = 'Input';
                field(Value1; Value1)
                {
                    ApplicationArea = All;
                    ToolTip = 'Enter a value for Value1';
                    Caption = 'Value1';
                }
                field(Value2; Value2)
                {
                    ApplicationArea = All;
                    ToolTip = 'Enter a value for Value2';
                    Caption = 'Value 2';
                }
            }
            group(Output)
            {
                Caption = 'Output';
                field(Result; Result)
                {
                    ApplicationArea = All;
                    ToolTip = 'The result of the operation';
                    Caption = 'Result';
                    Editable = false;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Execute)
            {
                Caption = 'Execute';
                Image = ExecuteBatch;
                ApplicationArea = All;
                ToolTip = 'Click to calculate the result';

                trigger onAction()
                begin
                    Result := Value1 > Value2;
                end;
            }
        }
    }

    var
        Value1: Integer;
        Value2: Integer;
        Result: Boolean;

}