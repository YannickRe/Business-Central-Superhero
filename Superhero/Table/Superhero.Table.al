namespace YannickRe.Superheroes.Superhero;

using System.Environment;
using System.Utilities;
using System.Text;
using Microsoft.Foundation.NoSeries;

table 50100 Superhero
{
    Caption = 'Superhero';
    DataClassification = CustomerContent;
    DrillDownPageId = SuperheroesList;
    LookupPageId = SuperheroesList;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'Name';
            ToolTip = 'Specifies the value of the Name field.';
            trigger OnValidate()
            var
            begin
                if "No." <> xRec."No." then begin
                    SuperheroSetup.Get();
                    NoSeries.TestManual(SuperheroSetup."Superhero Nos.");
                    "No. Series" := '';
                end;

            end;
        }
        field(2; Name; Text[250])
        {
            DataClassification = ToBeClassified;
        }
        field(3; Description; Text[250])
        {
            Caption = 'Description';
            ToolTip = 'Specifies the value of the Description field.';
        }
        field(4; Strength; Integer)
        {
            Caption = 'Strength';
            ToolTip = 'Specifies the value of the Strength field.';
        }
        field(5; Speed; Integer)
        {
            Caption = 'Speed';
            ToolTip = 'Specifies the value of the Speed field.';
        }
        field(6; Intelligence; Integer)
        {
            Caption = 'Intelligence';
            ToolTip = 'Specifies the value of the Intelligence field.';
        }
        field(7; Agility; Integer)
        {
            Caption = 'Agility';
            ToolTip = 'Specifies the value of the Agility field.';
        }
        field(8; "Power Rating"; Integer)
        {
            Caption = 'Power Rating';
            ToolTip = 'Specifies the value of the Power Rating field.';
        }
        field(9; "Profile Picture"; Media)
        {
            Caption = 'Profile Picture';
            ToolTip = 'Specifies the value of the Profile Picture field.';
        }
        field(10; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            DataClassification = CustomerContent;
            TableRelation = "No. Series";
        }
        field(11; "Writer No."; Code[20])
        {
            Caption = 'Writer No.';
            DataClassification = CustomerContent;
            TableRelation = Writer."No.";

        }
        field(12; "Writer Name"; Text[250])
        {
            Caption = 'Writer Name';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = lookup(Writer.Name where("No." = field("Writer No.")));

        }

    }
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }
    procedure GetProfilePictureBase64(): Text
    var
        TenantMedia: Record "Tenant Media";
        TempBlob: Codeunit "Temp Blob";
        Base64Convert: Codeunit "Base64 Convert";
        InStr: InStream;
        Outstr: OutStream;
        outText: Text;
    begin
        if TenantMedia.Get("Profile Picture".MediaId) then begin
            TenantMedia.CalcFields(Content);
            TenantMedia.Content.CreateInStream(InStr);
            exit(Base64Convert.ToBase64(InStr));
        end;
    end;

    var
        SuperheroSetup: Record "Superhero Setup";
        NoSeries: Codeunit "No. Series";

    trigger OnInsert()
    var
    begin
        if "No." = '' then begin
            SuperheroSetup.Get();
            SuperheroSetup.TestField("Superhero Nos.");
            "No. Series" := SuperheroSetup."Superhero Nos.";
            if NoSeries.AreRelated(SuperheroSetup."Superhero Nos.", xRec."No. Series") then
                "No. Series" := xRec."No. Series";
            "No." := NoSeries.GetNextNo("No. Series");
        end
    end;
}
