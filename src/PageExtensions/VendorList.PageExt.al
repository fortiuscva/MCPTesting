pageextension 50104 "MCP Vendor List Extension" extends "Vendor List"
{
    layout
    {
        addlast(Control1)
        {
            field(Critical; Rec.Critical)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies whether the vendor is critical.';
            }
        }
    }
}