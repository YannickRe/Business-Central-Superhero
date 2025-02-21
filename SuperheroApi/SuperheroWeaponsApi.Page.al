namespace YannickRe.Superheroes.Api;
using YannickRe.Superheroes.Superhero;

page 50107 SuperheroWeaponsApi
{
    APIGroup = 'superheroes';
    APIPublisher = 'yannickre';
    APIVersion = 'v3.0';
    ApplicationArea = All;
    Caption = 'Superhero Weapons';
    DelayedInsert = true;
    EntityName = 'superheroweapon';
    EntitySetName = 'superheroweapons';
    PageType = API;
    SourceTable = "Superhero Weapon";
    ODataKeyFields = SystemId;

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
                field(superheroId; Rec.SuperheroId)
                {
                    Caption = 'SuperheroId';
                }
                field(weaponId; Rec.WeaponId)
                {
                    Caption = 'WeaponId';
                }
            }
        }
    }
}
