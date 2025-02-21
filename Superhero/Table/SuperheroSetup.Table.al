table 50103 "Superhero Setup"
{
    Caption = 'Superhero Setup';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Primary key"; Code[10])
        {
            Caption = 'Primary key';
        }
        field(2; "Superhero Nos."; Code[20])
        {
            Caption = 'Superhero Nos.';
        }
        field(3; "Weapon Nos."; Code[20])
        {
            Caption = 'Weapon Nos.';
        }
        field(4; "Writer Nos."; Code[20])
        {
            Caption = 'Writer Nos.';
        }
    }
    keys
    {
        key(PK; "Primary key")
        {
            Clustered = true;
        }
    }
}
