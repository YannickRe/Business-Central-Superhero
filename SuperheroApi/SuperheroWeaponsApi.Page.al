namespace BusinessCentralSuperhero.BusinessCentralSuperhero;

page 50107 "Superhero Weapons Api"
{
    APIGroup = 'superheroes';
    APIPublisher = 'yannickre';
    APIVersion = 'v2.0';
    ApplicationArea = All;
    Caption = 'superheroWeaponsApi';
    DelayedInsert = true;
    EntityName = 'superheroweapon';
    EntitySetName = 'superheroweapons';
    PageType = API;
    SourceTable = "Superhero Weapon";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(systemId; Rec.SystemId)
                {
                    Caption = 'SystemId';
                }
                field(superheroNo; Rec."Superhero No.")
                {
                    Caption = 'Superhero No.';
                }
                field(weaponNo; Rec."Weapon No.")
                {
                    Caption = 'Weapon No.';
                }
                field(lineNo; Rec."Line No.")
                {
                    Caption = 'Line No.';
                }
                field(quantity; Rec.Quantity)
                {
                    Caption = 'Quantity';
                }
                field(active; Rec.Active)
                {
                    Caption = 'Active';
                }

            }
        }
    }
}
