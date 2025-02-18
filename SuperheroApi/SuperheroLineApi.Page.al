namespace YannickRe.Superheroes.Api;
using YannickRe.Superheroes.Superhero;

page 50107 SuperheroLineApi
{
    APIGroup = 'superheroes';
    APIPublisher = 'yannickre';
    APIVersion = 'v2.0';
    ApplicationArea = All;
    Caption = 'SuperheroLine';
    DelayedInsert = true;
    EntityName = 'superheroLine';
    EntitySetName = 'superheroLines';
    PageType = API;
    SourceTable = SuperheroLine;
    ODataKeyFields = SystemId;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("code"; Rec."Code")
                {
                }
                field(description; Rec.Description)
                {
                }
                field(lineNo; Rec."Line No.")
                {
                }
                field(powerRating; Rec."Power Rating")
                {
                }
                field(superheroName; Rec."Superhero Name")
                {
                }
                field("type"; Rec."Type")
                {
                }
                field(systemId; Rec.SystemId)
                {
                }
                field(superheroId; Rec.SuperheroId)
                {
                }
                field(superpowerId; Rec.SuperpowerId)
                {
                }
                field(weaponId; Rec.WeaponId)
                {
                }

                part(weapons; WeaponApi)
                {
                    EntityName = 'weapon';
                    EntitySetName = 'weapons';
                    SubPageLink = SystemId = field("weaponId");
                }
                part(superpowers; SuperpowerApi)
                {
                    EntityName = 'superpower';
                    EntitySetName = 'superpowers';
                    SubPageLink = SystemId = field("superpowerId");
                }

            }
        }
    }

    trigger OnInsertRecord(BelowxRec: Boolean): Boolean
    var
        SuperheroLine: Record SuperheroLine;
        lineNo: Integer;
    begin
        SuperheroLine.SetRange("Superhero Name", rec."Superhero Name");
        if SuperheroLine.FindLast() then
            lineNo := SuperheroLine."Line No." + 10000
        else
            lineNo := 10000;
        rec."Line No." := lineNo;
    end;
}
