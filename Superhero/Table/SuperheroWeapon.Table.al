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
        field(6; SuperHeroId; Guid)
        {
            Caption = 'SuperHeroId';
            DataClassification = SystemMetadata;
            Editable = false;
            TableRelation = superhero."SystemId";

            trigger OnValidate()
            var
                superHero: Record Superhero;
            begin
                superHero.GetBySystemId(SuperHeroId);
            end;
        }
        field(7; WeaponId; Guid)
        {
            Caption = 'WeaponId';
            DataClassification = SystemMetadata;
            Editable = false;
            TableRelation = weapon."SystemId";

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
