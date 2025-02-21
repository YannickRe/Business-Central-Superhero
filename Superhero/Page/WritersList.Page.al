namespace YannickRe.Superheroes.Superhero;

page 50104 WritersList
{
    ApplicationArea = All;
    Caption = 'Writers';
    PageType = List;
    SourceTable = Writer;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Name"; Rec."Name")
                {
                    InstructionalText = 'Specifies the value of the Name field.';
                }
                field(Bio; Rec.Bio)
                {
                    InstructionalText = 'Specifies the value of the Bio field.';
                }
            }
        }
    }
}
