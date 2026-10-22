tableextension 50100 "MCP Customer Extension" extends Customer
{
    fields
    {
        field(50100; Critical; Boolean)
        {
            Caption = 'Critical';
            DataClassification = CustomerContent;
        }
    }
}