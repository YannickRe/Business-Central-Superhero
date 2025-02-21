namespace YannickRe.Superheroes.Superhero;
using Microsoft.Foundation.NoSeries;

table 50102 Weapon
{
    Caption = 'Weapon';
    DataClassification = CustomerContent;
    LookupPageId = WeaponsList;
    DrillDownPageId = WeaponsList;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = CustomerContent;
            trigger OnValidate()
            var
            begin
                if "No." <> xRec."No." then begin
                    SuperheroSetup.Get();
                    NoSeries.TestManual(SuperheroSetup."Weapon Nos.");
                    "No. Series" := '';
                end;

            end;
        }
        field(2; "Name"; Text[250])
        {
            Caption = 'Name';
            ToolTip = 'Specifies the value of the Name field.';

        }
        field(3; Description; Text[250])
        {
            Caption = 'Description';
            ToolTip = 'Specifies the value of the Description field.';
        }
        field(4; "Power Rating"; Integer)
        {
            Caption = 'Power Rating';
            ToolTip = 'Specifies the value of the Power Rating field.';
        }
        field(5; "No. Series"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
    }
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }

    var
        SuperheroSetup: Record "Superhero Setup";
        NoSeries: Codeunit "No. Series";

    trigger OnInsert()
    var
    begin
        if "No." = '' then begin
            SuperheroSetup.Get();
            SuperheroSetup.TestField("Weapon Nos.");
            "No. Series" := SuperheroSetup."Weapon Nos.";
            if NoSeries.AreRelated(SuperheroSetup."Weapon Nos.", xRec."No. Series") then
                "No. Series" := xRec."No. Series";
            "No." := NoSeries.GetNextNo("No. Series");
        end
    end;
}
