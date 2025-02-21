namespace YannickRe.Superheroes.Superhero;

page 50106 "Superhero Weapon Subform"
{
    AutoSplitKey = true;
    DelayedInsert = true;
    LinksAllowed = false;
    MultipleNewLines = true;
    ApplicationArea = All;
    Caption = 'Superhero Weapon Subform';
    PageType = ListPart;
    SourceTable = "Superhero Weapon";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Line No."; Rec."Line No.")
                {
                    ToolTip = 'Specifies the value of the Line No. field.', Comment = '%';
                }
                field("Weapon No."; Rec."Weapon No.")
                {
                    ToolTip = 'Specifies the value of the Weapon No. field.', Comment = '%';
                }
                field(Quantity; Rec.Quantity)
                {
                    ToolTip = 'Specifies the value of the Quantity field.', Comment = '%';
                }
                field(Active; Rec.Active)
                {
                    ToolTip = 'Specifies the value of the Active field.', Comment = '%';
                }
            }
        }
    }
}
