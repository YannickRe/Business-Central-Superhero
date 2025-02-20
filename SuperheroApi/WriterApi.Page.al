namespace YannickRe.Superheroes.Api;
using YannickRe.Superheroes.Superhero;

page 50111 WriterApi
{
    APIGroup = 'superheroes';
    APIPublisher = 'yannickre';
    APIVersion = 'v2.0';
    ApplicationArea = All;
    Caption = 'Writer';
    DelayedInsert = true;
    EntityName = 'writer';
    EntitySetName = 'writers';
    PageType = API;
    SourceTable = Writer;
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
                field(bio; Rec.Bio)
                {
                }
            }
        }
    }
}
