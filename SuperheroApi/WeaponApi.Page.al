namespace YannickRe.Superheroes.Api;
using YannickRe.Superheroes.Superhero;

page 50109 WeaponApi
{
    APIGroup = 'superheroes';
    APIPublisher = 'yannickre';
    APIVersion = 'v3.0';
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
                field(systemId; Rec.SystemId)
                {
                }
                field("name"; Rec."Name")
                {
                }
                field(description; Rec.Description)
                {
                }
                field(powerRating; Rec."Power Rating")
                {
                }
                part(superheroWeapons; SuperheroWeaponsApi)
                {
                    EntityName = 'superheroweapon';
                    EntitySetName = 'superheroweapons';
                    SubPageLink = WeaponId = field(SystemId);
                }
            }
        }
    }
}
