pageextension 50105 "MCP Vendor Card Extension" extends "Vendor Card"
{
    layout
    {
        addlast(General)
        {
            field(Critical; Rec.Critical)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies whether the vendor is critical.';
            }
        }
    }
}