namespace YannickRe.Superheroes.Superhero;

table 50101 Superpower
{
    Caption = 'Superpower';
    DataClassification = CustomerContent;
    LookupPageId = SuperpowersList;
    DrillDownPageId = SuperpowersList;

    fields
    {
        field(1; "Code"; Code[50])
        {
            Caption = 'Code';
            ToolTip = 'Specifies the value of the Code field.';
            NotBlank = true;
        }
        field(2; Description; Text[250])
        {
            Caption = 'Description';
            ToolTip = 'Specifies the value of the Description field.';
        }
        field(3; "Power Rating"; Integer)
        {
            Caption = 'Power Rating';
            ToolTip = 'Specifies the value of the Power Rating field.';
        }
    }
    keys
    {
        key(PK; "Code")
        {
            Clustered = true;
        }
    }
}
