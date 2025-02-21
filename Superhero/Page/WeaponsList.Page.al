namespace YannickRe.Superheroes.Superhero;

page 50110 WeaponsList
{
    ApplicationArea = All;
    Caption = 'Weapons';
    PageType = List;
    SourceTable = Weapon;
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
