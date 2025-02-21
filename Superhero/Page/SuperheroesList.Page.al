namespace YannickRe.Superheroes.Superhero;

page 50101 SuperheroesList
{
    ApplicationArea = All;
    Caption = 'Superheroes';
    PageType = List;
    SourceTable = Superhero;
    UsageCategory = Lists;
    CardPageId = SuperheroCard;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Name; Rec.Name)
                {
                }
                field(Description; Rec.Description)
                {
                }
            }
        }
    }

}
