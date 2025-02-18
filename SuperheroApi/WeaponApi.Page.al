namespace YannickRe.Superheroes.Api;
using YannickRe.Superheroes.Superhero;

page 50109 WeaponApi
{
    APIGroup = 'superheroes';
    APIPublisher = 'yannickre';
    APIVersion = 'v2.0';
    ApplicationArea = All;
    Caption = 'Weapon';
    DelayedInsert = true;
    EntityName = 'weapon';
    EntitySetName = 'weapons';
    PageType = API;
    SourceTable = Weapon;
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
                field(powerRating; Rec."Power Rating")
                {
                }
                field(systemId; Rec.SystemId)
                {
                }
            }
        }
    }
}
