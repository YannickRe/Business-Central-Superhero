namespace YannickRe.Superheroes.Superhero;

table 50104 "Superhero Weapon"
{
    Caption = 'Superhero Weapon';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(2; "Superhero No."; Code[20])
        {
            Caption = 'Superhero No.';
            TableRelation = Superhero."No.";
        }
        field(3; "Weapon No."; Code[20])
        {
            Caption = 'Weapon No.';
            TableRelation = Weapon."No.";
        }
        field(4; Active; Boolean)
        {
            Caption = 'Active';
        }
        field(5; Quantity; Integer)
        {
            Caption = 'Quantity';
        }
        field(6; SuperheroId; Guid)
        {
            Caption = 'SuperheroId';
            DataClassification = SystemMetadata;
            Editable = false;
            TableRelation = Superhero."No.";

            trigger OnValidate()
            var
                superHero: Record Superhero;
            begin
                superHero.GetBySystemId(SuperheroId);
            end;
        }
        field(7; WeaponId; Guid)
        {
            Caption = 'WeaponId';
            DataClassification = SystemMetadata;
            Editable = false;
            TableRelation = Weapon."No.";

            trigger OnValidate()
            var
                weapon: Record Weapon;
            begin
                weapon.GetBySystemId(WeaponId);
            end;
        }
    }
    keys
    {
        key(PK; "Line No.", "Superhero No.", "Weapon No.")
        {
            Clustered = true;
        }
    }
}
