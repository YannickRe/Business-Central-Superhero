namespace YannickRe.Superheroes.Superhero;

using YannickRe.Superheroes.Superhero;

table 50103 SuperheroLine
{
    Caption = 'SuperheroLine';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Type"; Enum SuperheroLineType)
        {
            Caption = 'Type';
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(3; "Code"; Code[50])
        {
            Caption = 'Code';
            TableRelation = if ("Type" = const(Power)) Superpower."Code"
            else if ("Type" = const(Weapon)) Weapon."Code";

            trigger OnValidate()
            var
                Superpowers: Record Superpower;
                Weapon: Record Weapon;
            begin
                if ("Type" = Type::Power) then begin
                    Superpowers.Get("Code");
                    Description := Superpowers.Description;
                    "Power Rating" := Superpowers."Power Rating";
                end;
                if ("Type" = Type::Weapon) then begin
                    Weapon.Get("Code");
                    Description := Weapon.Description;
                    "Power Rating" := Weapon."Power Rating"
                end;
            end;
        }
        field(4; Description; Text[250])
        {
            Caption = 'Description';
        }
        field(5; "Power Rating"; Integer)
        {
            Caption = 'Power Rating';
            Editable = false;
        }
        field(6; "Superhero Name"; Code[20])
        {
            Caption = 'Superhero Name';
            TableRelation = Superhero."Name";
        }
        field(7; SuperheroId; Guid)
        {
            Caption = 'SuperheroId';
            DataClassification = SystemMetadata;
            Editable = false;
            TableRelation = Superhero."SystemId";

            trigger OnValidate()
            var
                Superhero: Record Superhero;
            begin
                Superhero.GetBySystemId(SuperheroId);
                rec."Superhero Name" := Superhero.Name;
            end;
        }
        field(8; WeaponId; Guid)
        {
            Caption = 'WeaponId';
            DataClassification = SystemMetadata;
            TableRelation = Weapon."SystemId";

            trigger OnValidate()
            var
                Weapon: Record Weapon;
            begin
                Weapon.GetBySystemId(WeaponId);
                rec.Code := Weapon.Code;
            end;
        }
        field(9; SuperpowerId; Guid)
        {
            Caption = 'SuperpowerId';
            DataClassification = SystemMetadata;
            TableRelation = Superpower."SystemId";

            trigger OnValidate()
            var
                Superpowers: Record Superpower;
            begin
                Superpowers.GetBySystemId(SuperpowerId);
                rec.Code := Superpowers.Code;
            end;
        }
    }

    keys
    {
        key(PK; "Superhero Name", "Line No.")
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    var
        Superhero: Record Superhero;
        Superpowers: Record Superpower;
        Weapon: Record Weapon;
    begin
        Superhero.Get("Superhero Name");
        SuperheroId := Superhero."SystemId";
        if Type = Type::Power then begin
            Superpowers.Get("Code");
            SuperpowerId := Superpowers."SystemId";
        end;
        if Type = Type::Weapon then begin
            Weapon.Get("Code");
            WeaponId := Weapon."SystemId";
        end;
    end;


}
