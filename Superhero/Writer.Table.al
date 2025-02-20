namespace YannickRe.Superheroes.Superhero;

table 50101 Writer
{
    Caption = 'Writer';
    DataClassification = CustomerContent;
    LookupPageId = WritersList;
    DrillDownPageId = WritersList;

    fields
    {
        field(1; "Name"; Code[250])
        {
            Caption = 'Name';
            ToolTip = 'Specifies the value of the Name field.';
            NotBlank = true;
        }
        field(2; Bio; Text[250])
        {
            Caption = 'Bio';
            ToolTip = 'Specifies the value of the Bio field.';
        }
    }
    keys
    {
        key(PK; "Name")
        {
            Clustered = true;
        }
    }
}
