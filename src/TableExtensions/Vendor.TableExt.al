tableextension 50103 "MCP Vendor Extension" extends Vendor
{
    fields
    {
        field(50103; Critical; Boolean)
        {
            Caption = 'Critical';
            DataClassification = CustomerContent;
        }
    }
}