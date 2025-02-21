/// <summary>
/// Unknown BusinessCentralSuperhero.
/// </summary>
namespace BusinessCentralSuperhero.BusinessCentralSuperhero;

page 50103 "Superhero Setup"
{
    ApplicationArea = All;
    Caption = 'Superhero Setup';
    PageType = Card;
    SourceTable = "Superhero Setup";
    DeleteAllowed = false;
    InsertAllowed = false;
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field("Superhero Nos."; Rec."Superhero Nos.")
                {
                    ToolTip = 'Specifies the value of the Superhero Nos. field.', Comment = '%';
                }
                field("Weapon Nos."; Rec."Weapon Nos.")
                {
                    ToolTip = 'Specifies the value of the Weapon Nos. field.', Comment = '%';
                }
                field("Writer No.s"; Rec."Writer Nos.")
                {
                    ToolTip = 'Specifies the value of the Writer No.s field.', Comment = '%';
                }
            }
        }
    }

    trigger OnOpenPage()
    begin
        Rec.Reset();
        if not Rec.Get() then begin
            Rec.Init();
            Rec.Insert();
        end;
    end;
}
