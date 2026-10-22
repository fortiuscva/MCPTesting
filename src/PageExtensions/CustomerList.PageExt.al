pageextension 50101 "MCP Customer List Extension" extends "Customer List"
{
    layout
    {
        addlast(Control1)
        {
            field(Critical; Rec.Critical)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies whether the customer is critical.';
            }
        }
    }
}