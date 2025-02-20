namespace YannickRe.Superheroes.Superhero;

table 50102 Weapon
{
    Caption = 'Weapon';
    DataClassification = CustomerContent;
    LookupPageId = WeaponsList;
    DrillDownPageId = WeaponsList;

    fields
    {
        field(1; "Name"; Code[250])
        {
            Caption = 'Name';
            ToolTip = 'Specifies the value of the Name field.';
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
        key(PK; "Name")
        {
            Clustered = true;
        }
    }
}
