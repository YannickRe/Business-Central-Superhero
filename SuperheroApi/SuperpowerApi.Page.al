namespace YannickRe.Superheroes.Api;
using YannickRe.Superheroes.Superhero;

page 50108 SuperpowerApi
{
    APIGroup = 'superheroes';
    APIPublisher = 'yannickre';
    APIVersion = 'v2.0';
    ApplicationArea = All;
    Caption = 'Superpower';
    DelayedInsert = true;
    EntityName = 'superpower';
    EntitySetName = 'superpowers';
    PageType = API;
    SourceTable = Superpower;
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
