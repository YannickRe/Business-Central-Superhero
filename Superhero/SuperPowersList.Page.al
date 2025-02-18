namespace YannickRe.Superheroes.Superhero;

page 50103 SuperpowersList
{
    ApplicationArea = All;
    Caption = 'Superpowers';
    PageType = List;
    SourceTable = Superpower;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Code"; Rec."Code")
                {
                    InstructionalText = 'Specifies the value of the Code field.';
                }
                field(Description; Rec.Description)
                {
                    InstructionalText = 'Specifies the value of the Description field.';
                }
                field("Power Rating"; Rec."Power Rating")
                {
                }
            }
        }
    }
}
