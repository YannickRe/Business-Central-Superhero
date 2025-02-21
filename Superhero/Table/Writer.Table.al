namespace YannickRe.Superheroes.Superhero;
using Microsoft.Foundation.NoSeries;

table 50101 Writer
{
    Caption = 'Writer';
    DataClassification = CustomerContent;
    LookupPageId = WritersList;
    DrillDownPageId = WritersList;

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
                    NoSeries.TestManual(SuperheroSetup."Writer Nos.");
                    "No. Series" := '';
                end;

            end;
        }
        field(2; "Name"; Text[250])
        {
            Caption = 'Name';
            ToolTip = 'Specifies the value of the Name field.';
        }
        field(3; Bio; Text[250])
        {
            Caption = 'Bio';
            ToolTip = 'Specifies the value of the Bio field.';
        }
        field(4; "No. Series"; Code[20])
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
            SuperheroSetup.TestField("Writer Nos.");
            "No. Series" := SuperheroSetup."Writer Nos.";
            if NoSeries.AreRelated(SuperheroSetup."Writer Nos.", xRec."No. Series") then
                "No. Series" := xRec."No. Series";
            "No." := NoSeries.GetNextNo("No. Series");
        end
    end;
}
