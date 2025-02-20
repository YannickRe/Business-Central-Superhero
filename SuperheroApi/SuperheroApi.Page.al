namespace YannickRe.Superheroes.Api;
using YannickRe.Superheroes.Superhero;

page 50100 SuperheroApi
{
    APIGroup = 'superheroes';
    APIPublisher = 'yannickre';
    APIVersion = 'v3.0';
    ApplicationArea = All;
    Caption = 'Superhero';
    DelayedInsert = true;
    EntityName = 'superhero';
    EntitySetName = 'superheroes';
    PageType = API;
    SourceTable = Superhero;
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
                field(name; Rec.Name)
                {
                }
                field(description; Rec.Description)
                {
                }
                // field(agility; Rec.Agility)
                // {
                // }
                // field(intelligence; Rec.Intelligence)
                // {
                // }
                // field(speed; Rec.Speed)
                // {
                // }
                // field(strength; Rec.Strength)
                // {
                // }
                field(powerRating; Rec."Power Rating")
                {
                }
                field(profilePicture; Rec.GetProfilePictureBase64())
                {
                }
                field(writerNo; Rec."Writer No.")
                {
                }
                field(writerId; Rec.WriterId)
                {
                }
                part(superheroWeapons; SuperheroWeaponsApi)
                {
                    EntityName = 'superheroweapon';
                    EntitySetName = 'superheroweapons';
                    SubPageLink = SuperheroId = field(SystemId);
                }
            }
        }
    }

    [ServiceEnabled]
    procedure getProfilePicture(): Text
    begin
        exit(rec.GetProfilePictureBase64());
    end;

}
