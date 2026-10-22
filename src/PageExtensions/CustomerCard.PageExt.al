pageextension 50102 "MCP Customer Card Extension" extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field(Critical; Rec.Critical)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies whether the customer is critical.';
            }
        }
    }
}